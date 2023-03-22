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
import 'package:MyAniApp/pages/settings/app/app.dart';
import 'package:MyAniApp/pages/settings/app/lists/anime.dart';
import 'package:MyAniApp/pages/settings/app/lists/fallback.dart';
import 'package:MyAniApp/pages/settings/app/lists/manga.dart';
import 'package:MyAniApp/pages/settings/general.dart';
import 'package:MyAniApp/pages/social.dart';
import 'package:MyAniApp/pages/staff.dart';
import 'package:MyAniApp/pages/thread.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

var routerConfig = GoRouter(
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
            context.read<SettingsProvider>();
            var settings = await SharedPreferences.getInstance();
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
          path: '/settings/lists/anime',
          builder: (context, state) => const AnimeListSetting(),
        ),
        GoRoute(
          path: '/settings/lists/manga',
          builder: (context, state) => const MangaListSetting(),
        ),
        GoRoute(
          path: '/settings/lists/fallback',
          builder: (context, state) => const FallbackListSetting(),
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
        await settings.reload();
        if (settings.getString('token') != null) return '/';
        return null;
      },
    )
  ],
);
