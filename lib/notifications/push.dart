import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:myaniapp/routes.dart';

class PushNotifications {
  factory PushNotifications() => _instance;

  PushNotifications._private() {
    var android = const AndroidInitializationSettings('notification_icon');

    _flutterLocalNotificationsPlugin.initialize(
      InitializationSettings(android: android),
      onDidReceiveBackgroundNotificationResponse: notificationTap,
      onDidReceiveNotificationResponse: notificationTap,
    );
  }

  static final PushNotifications _instance = PushNotifications._private();

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void requestPermission() {
    if (Platform.isAndroid) {
      _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestPermission();
    }
  }

  Future<bool> hasPermission() async {
    bool granted = await _flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>()
            ?.areNotificationsEnabled() ??
        false;

    return granted;
  }

  Future<void> show(
    String? title,
    NotificationDetails details,
    String? body, {
    Map<String, String>? payload,
  }) {
    if (!Platform.isAndroid) return Future.value();

    return _flutterLocalNotificationsPlugin.show(
      Random.secure().nextInt(999),
      title,
      body,
      details,
      payload: payload != null ? jsonEncode(payload) : null,
    );
  }

  static NotificationDetails releaseDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        NotificationChannels.releasingId,
        NotificationChannels.releasingName,
        channelDescription:
            'A new episode of a anime you\'re watching has released',
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
  }

  static NotificationDetails followingDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        NotificationChannels.followingId,
        NotificationChannels.followingName,
        channelDescription: 'Someone followed you',
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
  }

  static NotificationDetails activityDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        NotificationChannels.activityId,
        NotificationChannels.activityName,
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
  }

  static NotificationDetails threadDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        NotificationChannels.threadId,
        NotificationChannels.threadName,
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
  }

  static NotificationDetails mediaDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        NotificationChannels.mediaId,
        NotificationChannels.mediaName,
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
  }
}

@pragma('vm:entry-point')
void notificationTap(NotificationResponse notificationResponse) {
  // handle action
  if (notificationResponse.payload == null) return;
  Map<String, dynamic>? decodePayload =
      jsonDecode(notificationResponse.payload!);
  if (decodePayload?['path'] != null) {
    appRouter.pushNamed(decodePayload!['path'] as String);
  }
}

class NotificationChannels {
  static const releasingId = 'airing_channel';
  static const releasingName = 'Airing';

  static const followingId = 'following_channel';
  static const followingName = 'Following';

  static const activityId = 'activity_channel';
  static const activityName = 'Activity';

  static const threadId = 'thread_channel';
  static const threadName = 'Thread';

  static const mediaId = 'media_channel';
  static const mediaName = 'Media';
}
