import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:media_kit/media_kit.dart';
import 'package:myaniapp/background.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/notifications/push.dart';
import 'package:myaniapp/providers/app_info.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/providers/shared_preferences.dart';
import 'package:myaniapp/ui/root.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

import 'web_url_protocol.dart'
    if (dart.library.io) 'package:url_protocol/url_protocol.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  if (!kIsWeb && Platform.isWindows) {
    registerProtocolHandler('myaniapp');
  }

  if (!kIsWeb && Platform.isAndroid) {
    Workmanager().initialize(callbackDispatcher);
    Workmanager().registerPeriodicTask(
      'background-notifs',
      'simplePeriodicTask',
      constraints: Constraints(
        networkType: NetworkType.connected,
      ),
      existingWorkPolicy: ExistingWorkPolicy.replace,
    );

    PushNotifications().requestPermission();
  }

  GoRouter.optionURLReflectsImperativeAPIs = true;
  await Hive.initFlutter();

  final client = await initClient();
  final info = await PackageInfo.fromPlatform();

  runApp(
    ProviderScope(
      overrides: [
        sharedPrefProvider.overrideWithValue(prefs),
        ferryClientProvider.overrideWithValue(client),
        appInfoProvider.overrideWithValue(info)
      ],
      child: const App(),
    ),
  );
}

var logger = Logger();
