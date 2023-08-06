import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/viewer.graphql.dart';
import 'package:myaniapp/graphql/__generated/notifications/notifications.graphql.dart';
import 'package:myaniapp/notifications/notification.dart';
import 'package:myaniapp/notifications/push.dart';
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
        await initHiveForFlutter();

        // show debug notification
        PushNotifications().show(
          'Notification run',
          PushNotifications.testDetails(),
          'Last ran at ${_dateFormat.format(DateTime.now())}',
          id: 92127,
        );

        var settings = await SharedPreferences.getInstance();
        if (!settings.containsKey('token')) return true;

        var user = await client.value.query$NotificationCount(
          Options$Query$NotificationCount(fetchPolicy: FetchPolicy.noCache),
        );

        if (user.parsedData?.Viewer?.options?.airingNotifications != true ||
            (user.parsedData?.Viewer?.unreadNotificationCount ?? 0) == 0) {
          return true;
        }

        var notifsReq = await client.value.query$Notifications(
          Options$Query$Notifications(
            fetchPolicy: FetchPolicy.noCache,
            variables: Variables$Query$Notifications(),
          ),
        );

        var notifs = notifsReq.parsedData?.Page?.notifications
            ?.take(user.parsedData!.Viewer!.unreadNotificationCount!);

        if (notifs?.isEmpty == true) return true;

        for (var notif in notifs!) {
          if (notif == null) continue;

          var parsed = AnilistNotification(notif);
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
                'path': '/media/${notif.media!.id}',
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
                  ? {'path': '/media/${(notif as dynamic).animeId}'}
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
              payload: {'path': '/profile/${(notif).user!.id}'},
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
