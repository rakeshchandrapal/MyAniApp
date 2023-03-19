import 'dart:async';
import 'dart:io';

import 'package:MyAniApp/notification.dart';
import 'package:MyAniApp/pages/activity.dart';
import 'package:MyAniApp/pages/character.dart';
import 'package:MyAniApp/pages/discover.dart';
import 'package:MyAniApp/pages/home.dart';
import 'package:MyAniApp/pages/lists/anime.dart';
import 'package:MyAniApp/pages/lists/manga.dart';
import 'package:MyAniApp/pages/login.dart';
import 'package:MyAniApp/pages/media_view.dart';
import 'package:MyAniApp/pages/notifications.dart';
import 'package:MyAniApp/pages/profile.dart';
import 'package:MyAniApp/pages/recommendations.dart';
import 'package:MyAniApp/pages/search.dart';
import 'package:MyAniApp/pages/settings/anilist.dart';
import 'package:MyAniApp/pages/settings/app.dart';
import 'package:MyAniApp/pages/settings/general.dart';
import 'package:MyAniApp/pages/social.dart';
import 'package:MyAniApp/pages/staff.dart';
import 'package:MyAniApp/pages/thread.dart';
import 'package:MyAniApp/providers/graphql.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/providers/theme.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
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

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationApi().init();

  if (Platform.isAndroid) {
    await Workmanager().initialize(callbackDispatcher);
    await Workmanager().registerPeriodicTask(
      "periodic-task-identifier",
      "simplePeriodicTask",
      existingWorkPolicy: ExistingWorkPolicy.append,
      // When no frequency is provided the default 15 minutes is set.
      // Minimum frequency is 15 min. Android will automatically change your frequency to 15 min if you have configured a lower frequency.
      frequency: const Duration(minutes: 30),
    );
  }

  runApp(const App());
}

var _routerConfig = GoRouter(
  navigatorKey: rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => BottomBar(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
          redirect: (context, state) async {
            var settings = await SharedPreferences.getInstance();
            // print(settings.getString('token'));
            if (settings.getString('token') == null) return '/login';
            return null;
          },
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const Settings(),
        ),
        GoRoute(
          path: '/settings/app',
          builder: (context, state) => const AppSettings(),
        ),
        GoRoute(
          path: '/settings/anilist',
          builder: (context, state) => const AnilistSettings(),
        ),
        GoRoute(
          path: '/media/:id',
          builder: (context, state) => AnimePage(id: state.params['id']!),
        ),
        GoRoute(
          path: '/lists/anime',
          builder: (context, state) => const AnimeList(),
        ),
        GoRoute(
          path: '/lists/manga',
          builder: (context, state) => const MangaList(),
        ),
        GoRoute(
          path: '/social',
          builder: (context, state) => const SocialPage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ),
        GoRoute(
          path: '/discover',
          builder: (context, state) => const Discovery(),
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => SearchPage(
            options: state.extra,
          ),
        ),
        GoRoute(
          path: '/recommendations',
          builder: (context, state) => const Recommendations(),
        ),
        GoRoute(
          path: '/character/:id',
          builder: (context, state) => Character(id: state.params['id']!),
        ),
        GoRoute(
          path: '/staff/:id',
          builder: (context, state) => Staff(id: state.params['id']!),
        ),
        GoRoute(
          path: '/notifications',
          builder: (context, state) => const NotificationsPage(),
        ),
        GoRoute(
          path: '/activity/:id',
          builder: (context, state) => Activity(id: state.params['id']!),
        ),
        GoRoute(
          path: '/thread/:id',
          builder: (context, state) => Thread(id: state.params['id']!),
        ),
      ],
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
      redirect: (context, state) async {
        var settings = await SharedPreferences.getInstance();
        if (settings.getString('token') != null) return '/';
        return null;
      },
    )
  ],
);

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<User>(
          create: (context) => User(),
        ),
        ChangeNotifierProvider<SettingsProvider>(
          create: (context) => SettingsProvider()..loadSettings(),
        )
      ],
      // create: (context) => User(),
      child: Consumer<SettingsProvider>(
        builder: (context, value, child) => MaterialApp.router(
          title: 'MyAniApp',
          debugShowCheckedModeBanner: false,
          scrollBehavior: MyCustomScrollBehavior(),
          theme: Styles.themeData(value.theme),
          routerConfig: _routerConfig,
        ),
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  final Widget child;
  const BottomBar({super.key, required this.child});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

const tabs = ['/', '/lists/anime', '/discover', '/lists/manga', '/social'];

class _BottomBarState extends State<BottomBar> {
  var currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GraphQlProvider(child: widget.child),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        useLegacyColorScheme: false,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIdx,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            label: 'Anime List',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconData(
                0xf8ca,
                fontFamily: CupertinoIcons.iconFont,
                fontPackage: CupertinoIcons.iconFontPackage,
              ),
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Manga List'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), label: 'Social'),
        ],
        onTap: (value) {
          setState(() {
            currentIdx = value;
          });

          context.go(tabs[value]);
        },
      ),
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