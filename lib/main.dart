import 'dart:async';
import 'dart:io';

import 'package:MyAniApp/notification.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/providers/theme.dart';
import 'package:MyAniApp/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_links/uni_links.dart';
import 'package:workmanager/workmanager.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

late PackageInfo packageInfo;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationApi().init();

  if (Platform.isAndroid) {
    await Workmanager().initialize(callbackDispatcher);
    await Workmanager().registerPeriodicTask(
      "periodic-task-identifier",
      "simplePeriodicTask",
      existingWorkPolicy: ExistingWorkPolicy.append,
      // runs every 15 minutes
    );
  }

  packageInfo = await PackageInfo.fromPlatform();

  final prefs = await SharedPreferences.getInstance();

  runApp(ProviderScope(
    overrides: [
      sharedPrefProvider.overrideWithValue(prefs),
    ],
    child: const App(),
  ));
}

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppState();
}

class _AppState extends ConsumerState<ConsumerStatefulWidget> {
  StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();
    _handleIncomingLinks();
  }

  void _handleIncomingLinks() {
    if (!kIsWeb) {
      // It will handle app links while the app is already started - be it in
      // the foreground or in the background.
      _sub = uriLinkStream.listen((Uri? uri) {
        if (!mounted) return;
        if (uri?.scheme == 'myaniapp') return;
        // if (uri?.hasScheme == true) return;
        print('got uri: $uri');
      }, onError: (Object err) {
        print('got err: $err');
      });
    }
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var themeMode =
        ref.watch(settingsProvider.select((settings) => settings.theme));

    return MaterialApp.router(
      title: 'MyAniApp',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      // theme: Styles.themeData(value.theme),
      theme: Styles.light,
      darkTheme: Styles.dark,
      themeMode: themeMode,
      // themeMode: ThemeMo,
      routerConfig: appRouter.config(),
    );
  }
}

// used for icon colors in links at the bottom viewing a media
extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

// extension MyShape on /