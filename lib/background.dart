import 'package:ferry_exec/src/fetch_policy.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/graphql/__generated__/viewer.req.gql.dart';
import 'package:myaniapp/graphql/client.dart';
import 'package:myaniapp/notifications/__generated__/notifications.data.gql.dart';
import 'package:myaniapp/notifications/__generated__/notifications.req.gql.dart';
import 'package:myaniapp/notifications/notifications.dart';
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
        await Hive.initFlutter();
        final client = await initClient();

        // show debug notification
        PushNotifications().show(
          'Notification run',
          PushNotifications.testDetails(),
          'Last ran at ${_dateFormat.format(DateTime.now())}',
          id: 92127,
        );

        var settings = await SharedPreferences.getInstance();
        if (!settings.containsKey('token')) return true;

        var user = await client
            .request(GNotificationCountReq(
              (b) => b..fetchPolicy = FetchPolicy.NoCache,
            ))
            .first;

        if (user.data?.Viewer?.options?.airingNotifications != true ||
            (user.data?.Viewer?.unreadNotificationCount ?? 0) == 0) {
          return true;
        }

        var notifsReq = await client
            .request(GNotificationsReq(
              (b) => b..fetchPolicy = FetchPolicy.NoCache,
            ))
            .first;

        var notifs = notifsReq.data?.Page?.notifications
            ?.take(user.data!.Viewer!.unreadNotificationCount!);

        if (notifs?.isEmpty == true) return true;

        for (var notif in notifs!) {
          if (notif == null) continue;

          var parsed = AnilistNotification(notification: notif);
          var texts = parsed.extractText();

          if (notif
              is GNotificationsData_Page_notifications__asAiringNotification) {
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
              payload: notif.G__typename != 'MediaDeletionNotification'
                  ? {'path': '/media/${(notif as dynamic).animeId}/info'}
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
          } else if (notif.G__typename == 'FollowingNotification') {
            await PushNotifications().show(
              texts[0],
              await PushNotifications.followingDetails(
                avatar: (notif
                        as GNotificationsData_Page_notifications__asFollowingNotification)
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
