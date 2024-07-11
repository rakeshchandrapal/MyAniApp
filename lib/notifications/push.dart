import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:myaniapp/router.dart';
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

  void init() async {
    if (!kIsWeb && !Platform.isAndroid) return;

    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
        await _flutterLocalNotificationsPlugin
            .getNotificationAppLaunchDetails();
    final didNotificationLaunchApp =
        notificationAppLaunchDetails?.didNotificationLaunchApp ?? false;

    if (didNotificationLaunchApp) {
      notificationTap(notificationAppLaunchDetails!.notificationResponse!);
    }
  }

  static final PushNotifications _instance = PushNotifications._private();

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void requestPermission() {
    if (Platform.isAndroid) {
      _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
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
    int? id,
  }) {
    if (!Platform.isAndroid) return Future.value();

    return _flutterLocalNotificationsPlugin.show(
      id ?? Random.secure().nextInt(999),
      title,
      body,
      details,
      payload: payload != null ? jsonEncode(payload) : null,
    );
  }

  static Future<NotificationDetails> releaseDetails(
      {String? bigPictureUrl}) async {
    Uint8List? bigPicture =
        bigPictureUrl != null ? await getByteArrayFromUrl(bigPictureUrl) : null;

    BigPictureStyleInformation? bigPictureStyleInformation = bigPicture != null
        ? BigPictureStyleInformation(
            ByteArrayAndroidBitmap.fromBase64String(base64Encode(bigPicture)),
          )
        : null;

    return NotificationDetails(
      android: AndroidNotificationDetails(
        NotificationChannels.releasingId,
        NotificationChannels.releasingName,
        channelDescription:
            'A new episode of a anime you\'re watching has released',
        importance: Importance.max,
        priority: Priority.high,
        styleInformation: bigPictureStyleInformation,
      ),
    );
  }

  static Future<NotificationDetails> followingDetails({String? avatar}) async {
    Uint8List? avatarPicture =
        avatar != null ? await getByteArrayFromUrl(avatar) : null;

    ByteArrayAndroidBitmap? largeIcon = avatarPicture != null
        ? ByteArrayAndroidBitmap.fromBase64String(base64Encode(avatarPicture))
        : null;

    return NotificationDetails(
      android: AndroidNotificationDetails(
        NotificationChannels.followingId,
        NotificationChannels.followingName,
        channelDescription: 'Someone followed you',
        importance: Importance.max,
        priority: Priority.high,
        largeIcon: largeIcon,
      ),
    );
  }

  static Future<NotificationDetails> activityDetails({String? avatar}) async {
    Uint8List? avatarPicture =
        avatar != null ? await getByteArrayFromUrl(avatar) : null;

    ByteArrayAndroidBitmap? largeIcon = avatarPicture != null
        ? ByteArrayAndroidBitmap.fromBase64String(base64Encode(avatarPicture))
        : null;

    return NotificationDetails(
      android: AndroidNotificationDetails(
        NotificationChannels.activityId,
        NotificationChannels.activityName,
        largeIcon: largeIcon,
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

  static NotificationDetails testDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        NotificationChannels.testId,
        NotificationChannels.testName,
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
  }

  static Future<Uint8List?> getByteArrayFromUrl(String url) async {
    try {
      final http.Response response = await http.get(Uri.parse(url));
      return response.bodyBytes;
    } catch (err) {}
    return null;
  }
}

@pragma('vm:entry-point')
void notificationTap(NotificationResponse notificationResponse) {
  // handle action
  if (notificationResponse.payload == null) return;
  Map<String, dynamic>? decodePayload =
      jsonDecode(notificationResponse.payload!);
  if (decodePayload?['path'] != null) {
    try {
      router.pushNamed(decodePayload!['path'] as String);
    } catch (e) {}
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

  static const testId = 'test_channel';
  static const testName = 'Test';
}
