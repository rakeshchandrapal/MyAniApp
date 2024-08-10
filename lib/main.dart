import 'dart:io';

import 'package:ferry/ferry.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:layout/layout.dart';
import 'package:myaniapp/background.dart';
import 'package:myaniapp/graphql/client.dart';
import 'package:myaniapp/notifications/push.dart';
import 'package:myaniapp/providers/app_info.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/shared_prefs.dart';
import 'package:myaniapp/router.dart';
import 'package:myaniapp/url_protocol/web_url_protocol.dart'
    if (dart.library.io) 'package:myaniapp/url_protocol/api.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:relative_time/relative_time.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

late Client client;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // GoRouter.optionURLReflectsImperativeAPIs = true;

  client = await initClient();

  var instance = await SharedPreferences.getInstance();
  final appInfo = await PackageInfo.fromPlatform();

  if (!kIsWeb) {
    if (Platform.isWindows) {
      registerProtocolHandler("myaniapp");
    }
  }

  if (!kIsWeb && Platform.isAndroid) {
    Workmanager().initialize(callbackDispatcher);
    Workmanager().registerPeriodicTask(
      'background-notifs',
      'simpleNotifsFetch',
      constraints: Constraints(
        networkType: NetworkType.connected,
      ),
      existingWorkPolicy: ExistingWorkPolicy.append,
    );

    PushNotifications().requestPermission();
  }

  runApp(
    ProviderScope(
      overrides: [
        sharedPrefsProvider.overrideWithValue(instance),
        appInfoProvider.overrideWithValue(appInfo),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var themeMode =
        ref.watch(settingsProvider.select((value) => value.themeMode));
    var color =
        ref.watch(settingsProvider.select((value) => value.primaryColor));

    return Layout(
      child: MaterialApp.router(
        routerConfig: router.config(),
        localizationsDelegates: const [
          RelativeTimeLocalizations.delegate,
        ],
        themeMode: themeMode,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(color),
        darkTheme: AppTheme.dark(color),
        scrollBehavior: _ScrollBehavior(),
      ),
    );
  }
}

class AppTheme {
  static ThemeData dark(Color? seed) => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: seed ?? Colors.blue,
          brightness: Brightness.dark,
        ),
        tabBarTheme: const TabBarTheme(tabAlignment: TabAlignment.start),
      );

  static ThemeData light(Color? seed) => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: seed ?? Colors.blue,
          brightness: Brightness.light,
        ),
        tabBarTheme: const TabBarTheme(tabAlignment: TabAlignment.start),
      );
}

class _ScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.invertedStylus,
        PointerDeviceKind.trackpad,
      };
}
