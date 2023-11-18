import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:logger/logger.dart';
import 'package:media_kit/media_kit.dart';
import 'package:myaniapp/background.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/notifications/push.dart';
import 'package:myaniapp/providers/shared_preferrences.dart';
import 'package:myaniapp/ui/root.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

import 'web_url_protocol.dart'
    if (dart.library.io) 'package:url_protocol/url_protocol.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();

  await initHiveForFlutter();

  final prefs = await SharedPreferences.getInstance();

  if (!kIsWeb && Platform.isWindows) {
    registerProtocolHandler('myaniapp');
  }

  if (!kIsWeb && Platform.isAndroid) {
    MobileAds.instance.initialize();
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

  runApp(
    ProviderScope(
      overrides: [
        sharedPrefProvider.overrideWithValue(prefs),
      ],
      child: GraphQLProvider(
        client: client,
        child: const App(),
      ),
    ),
  );
}

var logger = Logger();
