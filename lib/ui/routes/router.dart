import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/ui/routes/activity/activity.dart';
import 'package:myaniapp/ui/routes/calendar/calendar.dart';
import 'package:myaniapp/ui/routes/character/character.dart';
import 'package:myaniapp/ui/routes/explore/explore.dart';
import 'package:myaniapp/ui/routes/forum/overview/overview.dart';
import 'package:myaniapp/ui/routes/home/activities/activities.dart';
import 'package:myaniapp/ui/routes/home/home.dart';
import 'package:myaniapp/ui/routes/home/list/anime.dart';
import 'package:myaniapp/ui/routes/home/list/manga.dart';
import 'package:myaniapp/ui/routes/home/overview/overview.dart';
import 'package:myaniapp/ui/routes/login/anilist.dart';
import 'package:myaniapp/ui/routes/login/login.dart';
import 'package:myaniapp/ui/routes/login/token.dart';
import 'package:myaniapp/ui/routes/media/media.dart';
import 'package:myaniapp/ui/routes/notifications/notifications.dart';
import 'package:myaniapp/ui/routes/recommendations/recommendations.dart';
import 'package:myaniapp/ui/routes/review/review.dart';
import 'package:myaniapp/ui/routes/search/search.dart';
import 'package:myaniapp/ui/routes/settings/anilist.dart';
import 'package:myaniapp/ui/routes/settings/app.dart';
import 'package:myaniapp/ui/routes/settings/general.dart';
import 'package:myaniapp/ui/routes/staff/staff.dart';
import 'package:myaniapp/ui/routes/thread/thread.dart';
import 'package:myaniapp/ui/routes/user/list/anime.dart';
import 'package:myaniapp/ui/routes/user/list/manga.dart';
import 'package:myaniapp/ui/routes/user/user.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
final GlobalKey<NavigatorState> _mediaKey = GlobalKey();

final router = GoRouter(
  navigatorKey: _navigatorKey,
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => GoHomePage(navigationShell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeOverviewPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/anime',
              builder: (context, state) => const HomeAnimePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/explore',
              builder: (context, state) => const ExplorePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/manga',
              builder: (context, state) => const HomeMangaPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/activities',
              builder: (context, state) => const HomeActivitiesPage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/forum/:filter',
      builder: (context, state) => ForumOverviewPage(
        filter: state.pathParameters['filter'] ?? 'overview',
        category: state.uri.queryParameters['category'] != null
            ? int.tryParse(state.uri.queryParameters['category']!)
            : null,
        search: state.uri.queryParameters['search'],
      ),
    ),
    GoRoute(
      // parentNavigatorKey: _navigatorKey,
      path: '/media/:id',
      redirect: (context, state) => state.pathParameters['tab'] == null
          ? '/media/${state.pathParameters['id']}/overview'
          : null,
      // builder: (context, state) => const SizedBox(),
      routes: [
        GoRoute(
          parentNavigatorKey: _navigatorKey,
          path: ':tab',
          builder: (context, state) => MediaPage(
            id: int.parse(state.pathParameters['id']!),
          ),
        )
      ],
    ),
    GoRoute(
      // parentNavigatorKey: _navigatorKey,
      path: '/user/:name',
      redirect: (context, state) {
        print(state.pathParameters['tab'] == null &&
                (state.uri.pathSegments.contains('anime') ||
                        state.uri.pathSegments.contains('manga')) ==
                    false
            ? 'sdads'
            : 77);
        return state.pathParameters['tab'] == null &&
                state.uri.pathSegments.contains('anime') == false &&
                state.uri.pathSegments.contains('manga') == false
            ? '/user/${state.pathParameters['name']}/overview'
            : null;
      },
      // builder: (context, state) => const SizedBox(),
      routes: [
        GoRoute(
          parentNavigatorKey: _navigatorKey,
          path: 'anime',
          builder: (context, state) => UserAnimeListPage(
            name: state.pathParameters['name']!,
          ),
        ),
        GoRoute(
          parentNavigatorKey: _navigatorKey,
          path: 'manga',
          builder: (context, state) => UserMangaListPage(
            name: state.pathParameters['name']!,
          ),
        ),
        GoRoute(
          parentNavigatorKey: _navigatorKey,
          path: ':tab',
          builder: (context, state) => UserPage(
            name: state.pathParameters['name']!,
          ),
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/thread/:id',
      builder: (context, state) => ThreadPage(
        id: int.parse(state.pathParameters['id']!),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/activity/:id',
      builder: (context, state) => ActivityPage(
        id: int.parse(state.pathParameters['id']!),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/review/:id',
      builder: (context, state) => ReviewPage(
        id: int.parse(state.pathParameters['id']!),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/notifications',
      builder: (context, state) => const NotificationsPage(),
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/recommendations',
      builder: (context, state) => const RecommendationsPage(),
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/staff/:id',
      builder: (context, state) => StaffPage(
        id: int.parse(
          state.pathParameters['id']!,
        ),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/calendar',
      builder: (context, state) => const CalendarPage(),
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/character/:id',
      builder: (context, state) => CharacterPage(
        id: int.parse(
          state.pathParameters['id']!,
        ),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/search',
      builder: (context, state) {
        var query = state.uri.queryParameters;
        var queryAll = state.uri.queryParametersAll;
        return SearchPage(
          autofocus: state.extra as bool?,
          search: query['search'],
          format: queryAll['format'],
          endDate: int.tryParse(query['endDate'] ?? ''),
          genre: queryAll['genre'],
          isAdult: bool.tryParse(query['isAdult'] ?? ''),
          onList: bool.tryParse(query['onList'] ?? ''),
          page: int.tryParse(query['page'] ?? ''),
          season: query['season'],
          seasonYear: int.tryParse(query['seasonYear'] ?? ''),
          sort: queryAll['sort'],
          startDate: int.tryParse(query['startDate'] ?? ''),
          type: query['type'],
          withTags: queryAll['withTags'],
          withoutTags: queryAll['withoutTags'],
          year: int.tryParse(query['year'] ?? ''),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/settings',
      builder: (context, state) => const GeneralSettingsPage(),
      routes: [
        GoRoute(
          parentNavigatorKey: _navigatorKey,
          path: 'app',
          builder: (context, state) => const AppSettingsPage(),
        ),
        GoRoute(
          parentNavigatorKey: _navigatorKey,
          path: 'anilist',
          builder: (context, state) => const AnilistSettingsPage(),
        )
      ],
    ),
    GoRoute(
      parentNavigatorKey: _navigatorKey,
      path: '/login',
      builder: (context, state) => const LoginPage(),
      routes: [
        GoRoute(
          parentNavigatorKey: _navigatorKey,
          path: 'token',
          builder: (context, state) => const TokenLoginPage(),
        ),
        GoRoute(
          parentNavigatorKey: _navigatorKey,
          path: 'anilist',
          builder: (context, state) => const AniLoginPage(),
        )
      ],
    ),
  ],
);
