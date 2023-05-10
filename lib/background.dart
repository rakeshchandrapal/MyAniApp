import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql/__generated/graphql/viewer.graphql.dart';
import 'package:myaniapp/graphql/__generated/notifications/notifications.graphql.dart';
import 'package:myaniapp/notifications/notifications.dart';
import 'package:myaniapp/notifications/push.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

Future<ValueNotifier<GraphQLClient>> getClient() async {
  await initHiveForFlutter();
  Link link = HttpLink('https://graphql.anilist.co');
  var settings = await SharedPreferences.getInstance();
  var token = settings.getString('token');
  if (token != null) {
    link = HttpLink(
      'https://graphql.anilist.co',
      defaultHeaders: {'Authorization': 'Bearer $token'},
    );
  }

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
    ),
  );

  return client;
}

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    print("Native called background task");
    var settings = await SharedPreferences.getInstance();
    if (!settings.containsKey('token')) return true;

    var client = await getClient();

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

      if (notif is Query$Notifications$Page$notifications$$AiringNotification) {
        await PushNotifications().show(
          notif.media?.title?.userPreferred,
          PushNotifications.releaseDetails(),
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
          PushNotifications.activityDetails(),
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
          PushNotifications.followingDetails(),
          texts.join(),
          payload: {
            'path':
                '/profile/${(notif as Query$Notifications$Page$notifications$$FollowingNotification).user!.id}'
          },
        );
      }
    }

    return true;
  });
}
