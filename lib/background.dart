import 'package:gql_http_link/gql_http_link.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/graphql/__gen/app/notifications/notifications.graphql.dart';
import 'package:myaniapp/graphql/__gen/app/viewer.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/notifications/notifications.dart';
import 'package:myaniapp/notifications/push.dart';
import 'package:mygraphql/graphql.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

var _dateFormat = DateFormat('MM/dd/yyyy hh:mm:ss a');

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask(
    (taskName, inputData) async {
      try {
        if (!(await PushNotifications().hasPermission())) {
          return true;
        }
        final client = GraphqlClient(
          cache: Cache(store: InMemoryStore()),
          link: AuthLink(
            getToken: () async {
              var prefs = await SharedPreferences.getInstance();
              return prefs.getString("token");
            },
            authHeader: "Authorization",
          ).concat(
            HttpLink("https://graphql.anilist.co"),
          ),
        );

        // show debug notification
        PushNotifications().show(
          'Notification run',
          PushNotifications.testDetails(),
          'Last ran at ${_dateFormat.format(DateTime.now())}',
          id: 92127,
        );

        var settings = await SharedPreferences.getInstance();
        if (!settings.containsKey('token')) return true;

        // var user = await client
        //     .request(GNotificationCountReq(
        //       (b) => b..fetchPolicy = FetchPolicy.NoCache,
        //     ))
        //     .first;

        var user = await client
            .query(GQLRequest(notificationCountQuery,
                fetchPolicy: FetchPolicy.noCache,
                parseData: Query$NotificationCount.fromJson))
            .last;

        if (user.parsedData?.Viewer?.options?.airingNotifications != true ||
            (user.parsedData?.Viewer?.unreadNotificationCount ?? 0) == 0) {
          return true;
        }

        var notifsReq = await client
            .query(GQLRequest(
              notificationsQuery,
              fetchPolicy: FetchPolicy.noCache,
              parseData: Query$Notifications.fromJson,
            ))
            .last;

        var notifs = notifsReq.parsedData?.Page?.notifications
            ?.take(user.parsedData!.Viewer!.unreadNotificationCount!);

        if (notifs?.isEmpty == true) return true;

        for (var notif in notifs!) {
          if (notif == null) continue;

          var parsed = AnilistNotification(notification: notif);
          var texts = parsed.extractText();

          if (notif
              is Query$Notifications$Page$notifications$$AiringNotification) {
            await PushNotifications().show(
              notif.media?.title?.userPreferred,
              await PushNotifications.releaseDetails(
                bigPictureUrl: notif.media!.coverImage?.extraLarge,
              ),
              texts.join(),
              payload: {
                'path': '/media/${notif.media!.id}/info',
              },
            );
            continue;
          }

          if (parsed.isMedia) {
            await PushNotifications().show(
              texts[0],
              PushNotifications.mediaDetails(),
              texts.join(),
              payload: notif.$__typename != 'MediaDeletionNotification'
                  ? {'path': '/media/${(notif as dynamic).media.id}/info'}
                  : null,
            );
          } else if (parsed.isActivity) {
            await PushNotifications().show(
              texts[0],
              await PushNotifications.activityDetails(
                avatar: (notif as dynamic)?.user?.avatar?.large,
              ),
              texts.join(),
              payload: {'path': '/activity/${(notif as dynamic).activityId}'},
            );
          } else if (parsed.isThread) {
            await PushNotifications().show(
              texts[0],
              PushNotifications.threadDetails(),
              texts.join(),
              payload: {'path': '/thread/${(notif as dynamic).thread.id}'},
            );
          } else if (notif.$__typename == 'FollowingNotification') {
            await PushNotifications().show(
              texts[0],
              await PushNotifications.followingDetails(
                avatar: (notif
                        as Query$Notifications$Page$notifications$$FollowingNotification)
                    .user
                    ?.avatar
                    ?.large,
              ),
              texts.join(),
              payload: {'path': '/user/${(notif).user!.name}/info'},
            );
          }
        }
      } catch (err) {
        PushNotifications().show(
          'An Error Occurred',
          PushNotifications.testDetails(),
          err.toString(),
        );
      }
      return true;
    },
  );
}
