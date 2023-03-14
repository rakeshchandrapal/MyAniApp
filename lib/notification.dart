import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/Notifications.graphql.dart';
import 'package:MyAniApp/graphql/Viewer.graphql.dart';
import 'package:MyAniApp/graphql_client.dart';
import 'package:MyAniApp/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:workmanager/workmanager.dart';

class NotificationApi {
  factory NotificationApi() => _instance;

  NotificationApi.private();

  static final NotificationApi _instance = NotificationApi.private();

  final notification = FlutterLocalNotificationsPlugin();

  final releasingKey = 'releasing_channel';
  final releasingGroup = 'releasing_channel_group';
  final testKey = 'testing_channel';
  final testGroup = 'testing_channel_group';

  Future<bool?> init() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('res_ic_stat_a');

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );

    return notification.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse: onActionReceived,
      onDidReceiveNotificationResponse: onActionReceived,
    );
  }

  @pragma("vm:entry-point")
  static void onActionReceived(NotificationResponse notif) async {
    if (notif.payload == null || notif.payload?.isEmpty == true) return;
    Map<String, dynamic>? decodePayload = jsonDecode(notif.payload!);
    if (decodePayload?['path'] != null) {
      rootNavigatorKey.currentContext?.push(decodePayload!['path'] as String);
    }
  }

  Future<bool> hasPermission() async {
    bool granted = await notification
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>()
            ?.areNotificationsEnabled() ??
        false;

    return granted;
  }

  show({
    required Future<NotificationDetails> details,
    String? title,
    String? body,
    Map<String, String>? payload,
  }) async {
    if (!Platform.isAndroid) return;
    return await notification.show(
      Random.secure().nextInt(999),
      title,
      body,
      await details,
      payload: payload != null ? jsonEncode(payload) : null,
    );
  }

  Future<NotificationDetails> releaseDetails({String? bigPictureUrl}) async {
    Uint8List? bigPicture = bigPictureUrl != null
        ? await _getByteArrayFromUrl(bigPictureUrl)
        : null;

    BigPictureStyleInformation? bigPictureStyleInformation = bigPicture != null
        ? BigPictureStyleInformation(
            ByteArrayAndroidBitmap.fromBase64String(base64Encode(bigPicture)),
          )
        : null;

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      releasingKey,
      'Airing',
      channelDescription: 'Anime episodes in you list that has aired',
      importance: Importance.max,
      priority: Priority.high,
      styleInformation: bigPictureStyleInformation,
    );
    return NotificationDetails(android: androidNotificationDetails);
  }

  Future<NotificationDetails> testDetails({String? bigPictureUrl}) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      testKey,
      'Testing',
      channelDescription: 'Test notifications',
      importance: Importance.max,
      priority: Priority.high,
    );
    return NotificationDetails(android: androidNotificationDetails);
  }

  Future<Uint8List?> _getByteArrayFromUrl(String url) async {
    try {
      final http.Response response = await http.get(Uri.parse(url));
      return response.bodyBytes;
    } catch (err) {
      print(err);
    }
    return null;
  }
}

class AnilistNotif {
  static List<String>? extractText(
      Query$Notifications$Page$notifications notif) {
    if (notif is Query$Notifications$Page$notifications$$AiringNotification) {
      return [
        notif.contexts![0]!,
        notif.episode.toString(),
        notif.contexts![1]!,
        notif.media!.title!.userPreferred!,
        notif.contexts![2]!
      ];
    } else if (notif
        is Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification) {
      return [notif.media!.title!.userPreferred!, notif.context!];
    } else if (notif
        is Query$Notifications$Page$notifications$$FollowingNotification) {
      return [notif.user!.name, notif.context!];
    } else if (notif
        is Query$Notifications$Page$notifications$$ActivityLikeNotification) {
      return [notif.user!.name, notif.context!];
    } else if (notif
        is Query$Notifications$Page$notifications$$FollowingNotification) {
      return [notif.user!.name, notif.context!];
    }

    return null;
  }

  static List<TextSpan> extractTextWidgets(
    Query$Notifications$Page$notifications notif, {
    void Function(Fragment$BasicMedia media)? onMediaTap,
    void Function(Fragment$BasicUser user)? onUserTap,
  }) {
    var texts = extractText(notif);

    if (texts == null || texts.isEmpty) {
      return [];
    }

    if (notif is Query$Notifications$Page$notifications$$AiringNotification) {
      return [
        TextSpan(text: texts[0]),
        TextSpan(text: texts[1]),
        TextSpan(text: texts[2]),
        TextSpan(
          text: texts[3],
          style: const TextStyle(
            color: Color(0xff0969da),
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () => onMediaTap?.call(notif.media!),
        ),
        TextSpan(text: texts[4]),
      ];
    } else if (notif
        is Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification) {
      return [
        TextSpan(
          text: texts[0],
          style: const TextStyle(
            color: Color(0xff0969da),
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () => onMediaTap?.call(notif.media!),
        ),
        TextSpan(text: texts[1]),
      ];
    } else if (notif
        is Query$Notifications$Page$notifications$$FollowingNotification) {
      return [
        TextSpan(
          text: texts[0],
          style: const TextStyle(
            color: Color(0xff0969da),
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () => onUserTap?.call(notif.user!),
        ),
        TextSpan(text: texts[1])
      ];
    } else if (notif
        is Query$Notifications$Page$notifications$$ActivityLikeNotification) {
      return [
        TextSpan(
          text: texts[0],
          style: const TextStyle(
            color: Color(0xff0969da),
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () => onUserTap?.call(notif.user!),
        ),
        TextSpan(text: texts[1])
      ];
    } else if (notif
        is Query$Notifications$Page$notifications$$FollowingNotification) {
      return [
        TextSpan(
          text: texts[0],
          style: const TextStyle(
            color: Color(0xff0969da),
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () => onUserTap?.call(notif.user!),
        ),
        TextSpan(text: texts[1])
      ];
    }

    return [];
  }
}

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    // var isAllowed = await NotificationApi().notification.
    bool isAllowed = await NotificationApi().hasPermission();
    if (!isAllowed) return true;

    var e = await client();
    var user = await e.value.query$NotificationCount(
      Options$Query$NotificationCount(fetchPolicy: FetchPolicy.noCache),
    );
    if (user.parsedData?.Viewer?.unreadNotificationCount != null) {
      await NotificationApi().show(
        details: NotificationApi().testDetails(),
        title: 'Test',
        body:
            '${user.parsedData?.Viewer?.unreadNotificationCount} new notifications!',
      );
    }
    if (user.parsedData?.Viewer?.options?.airingNotifications != true ||
        (user.parsedData?.Viewer?.unreadNotificationCount ?? 0) == 0) {
      return true;
    }
    var notifs = await e.value.query$Notifications(
      Options$Query$Notifications(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Query$Notifications(reset: false),
      ),
    );
    var aired = notifs.parsedData?.Page?.notifications
        ?.take(user.parsedData!.Viewer!.unreadNotificationCount!);

    if (aired != null && aired.isNotEmpty) {
      for (var element in aired) {
        if (element == null) continue;
        var texts = AnilistNotif.extractText(element);
        if (texts?.isNotEmpty != true) continue;

        switch (element.runtimeType) {
          case Query$Notifications$Page$notifications$$AiringNotification:
            await NotificationApi().show(
              details: NotificationApi().releaseDetails(
                bigPictureUrl: (element
                        as Query$Notifications$Page$notifications$$AiringNotification)
                    .media
                    ?.coverImage
                    ?.large,
              ),
              title: element.media?.title?.userPreferred,
              body: texts!.join(''),
              payload: {'path': '/media/${element.media!.id}'},
            );
            break;
          case Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification:
            await NotificationApi().show(
              details: NotificationApi().releaseDetails(
                bigPictureUrl: (element
                        as Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification)
                    .media
                    ?.coverImage
                    ?.large,
              ),
              title: element.media?.title?.userPreferred,
              body: texts!.join(''),
              payload: {'path': '/media/${element.media!.id}'},
            );
            break;
          case Query$Notifications$Page$notifications$$FollowingNotification:
            await NotificationApi().show(
              details: NotificationApi().releaseDetails(
                bigPictureUrl: (element
                        as Query$Notifications$Page$notifications$$FollowingNotification)
                    .user
                    ?.avatar
                    ?.large,
              ),
              title: element.user?.name,
              body: texts!.join(''),
              // payload: {'path': '/media/${element.!.id}'},
            );
            break;
          case Query$Notifications$Page$notifications$$ActivityLikeNotification:
            await NotificationApi().show(
              details: NotificationApi().releaseDetails(
                bigPictureUrl: (element
                        as Query$Notifications$Page$notifications$$ActivityLikeNotification)
                    .user
                    ?.avatar
                    ?.large,
              ),
              title: element.user?.name,
              body: texts!.join(''),
              // payload: {'path': '/media/${element.!.id}'},
            );
            break;
        }
      }
    }

    // print(aired?.toList()[1].toString());

    return true;
  });
}
