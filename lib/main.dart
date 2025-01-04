import 'dart:async';
import 'dart:io';

import 'package:app_links/app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myaniapp/background.dart';
import 'package:myaniapp/notifications/push.dart';
import 'package:myaniapp/providers/app_info.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/shared_prefs.dart';
// import 'package:myaniapp/router.dart';
// import 'package:myaniapp/router.gr.dart';
import 'package:myaniapp/routes.dart';
import 'package:myaniapp/url_protocol/web_url_protocol.dart'
    if (dart.library.io) 'package:myaniapp/url_protocol/api.dart';
import 'package:mygraphql/graphql.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:relative_time/relative_time.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

late GraphqlClient c;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var instance = await SharedPreferences.getInstance();
  final appInfo = await PackageInfo.fromPlatform();
  await Hive.initFlutter();
  GoRouter.optionURLReflectsImperativeAPIs = true;

  var box = await Hive.openBox("graphql");

  c = GraphqlClient(
    cache: Cache(store: HiveStore(box)),
    link: AuthLink(
      getToken: () async {
        var prefs = await SharedPreferences.getInstance();
        return prefs.getString("token");
      },
      authHeader: "Authorization",
    ).concat(
      HttpLink("https://graphql.anilist.co"),
    ),
  );

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

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void dispose() {
    super.dispose();
    _linkSubscription?.cancel();
  }

  @override
  void initState() {
    super.initState();
    // appRouter = AppRouter(ref);
    if (!kIsWeb && !Platform.isLinux) initAppLinks();
  }

  Future<void> initAppLinks() async {
    _appLinks = AppLinks();

    // Check initial link if app was in cold state (terminated)
    final appLink = await _appLinks.getInitialLink();
    if (appLink != null) {
      print('getInitialAppLink: $appLink');
      openAppLink(appLink);
    }

    // if (!kIsWeb) return;5

    print('listening...');
    // Handle link when app is in warm state (front or background)
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
      if (uri.scheme == "myaniapp" &&
          uri.host == "ani" &&
          uri.path == "/auth") {
        var fragment = uri.fragment;
        var token = fragment.substring(
            fragment.indexOf("=") + 1, fragment.indexOf("&"));

        ref.read(settingsProvider.notifier).updateToken(token).then((value) {
          // router.navigate(const HomeRoute());
        });
      }
      openAppLink(uri);
    });
  }

  void openAppLink(Uri uri) {
    if (uri.host != 'root') return;
    // router.pushNamed(uri.path);
  }

  @override
  Widget build(BuildContext context) {
    var themeMode =
        ref.watch(settingsProvider.select((value) => value.themeMode));
    var color =
        ref.watch(settingsProvider.select((value) => value.primaryColor));

    return MaterialApp.router(
      routerConfig: goRouter,
      localizationsDelegates: const [
        RelativeTimeLocalizations.delegate,
      ],
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(color),
      darkTheme: AppTheme.dark(color),
      scrollBehavior: _ScrollBehavior(),
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
