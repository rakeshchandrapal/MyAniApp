import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/background.dart';
import 'package:myaniapp/notifications/push.dart';
import 'package:myaniapp/providers/shared_preferrences.dart';
import 'package:myaniapp/ui/root.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    Workmanager().initialize(callbackDispatcher, isInDebugMode: true);

    Workmanager().registerPeriodicTask(
      'anilist-notifs',
      'notif',
      existingWorkPolicy: ExistingWorkPolicy.append,
    );
    PushNotifications().requestPermission();
  }

  final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPrefProvider.overrideWithValue(prefs),
      ],
      child: const MyApp(),
    ),
  );
}
