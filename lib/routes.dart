import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/activity/screen.dart';
import 'package:myaniapp/app/auth/screen.dart';
import 'package:myaniapp/app/calendar/screen.dart';
import 'package:myaniapp/app/character/screen.dart';
import 'package:myaniapp/app/home/activties.tab.dart';
import 'package:myaniapp/app/home/explore.tab.dart';
import 'package:myaniapp/app/home/forum/screen.dart';
import 'package:myaniapp/app/home/list.tab.dart';
import 'package:myaniapp/app/home/overview.tab.dart';
import 'package:myaniapp/app/home/screen.dart';
import 'package:myaniapp/app/login/anilist.screen.dart';
import 'package:myaniapp/app/login/screen.dart';
import 'package:myaniapp/app/login/token.screen.dart';
import 'package:myaniapp/app/media/screen.dart';
import 'package:myaniapp/app/notifications/screen.dart';
import 'package:myaniapp/app/recommendations/screen.dart';
import 'package:myaniapp/app/review/screen.dart';
import 'package:myaniapp/app/reviews/screen.dart';
import 'package:myaniapp/app/search/character.screen.dart';
import 'package:myaniapp/app/search/media/screen.dart';
import 'package:myaniapp/app/search/staff.screen.dart';
import 'package:myaniapp/app/settings/screen.dart';
import 'package:myaniapp/app/staff/screen.dart';
import 'package:myaniapp/app/studio/screen.dart';
import 'package:myaniapp/app/thread/comment/screen.dart';
import 'package:myaniapp/app/thread/screen.dart';
import 'package:myaniapp/app/user/anime.screen.dart';
import 'package:myaniapp/app/user/favorites.screen.dart';
import 'package:myaniapp/app/user/manga.screen.dart';
import 'package:myaniapp/app/user/screen.dart';
import 'package:myaniapp/graphql/__gen/fragments/character.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/media.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/review.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/staff.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/thread.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/user.graphql.dart';
import 'package:shared_preferences/shared_preferences.dart';

final goRouter = GoRouter(
  initialLocation: "/home",
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, child) => HomeScreen(child: child),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.home,
              redirect: (context, state) async {
                var prefs = await SharedPreferences.getInstance();
                if (!prefs.containsKey("seenOnboard")) {
                  return Routes.login;
                } else if (!prefs.containsKey("token")) {
                  return Routes.explore;
                }

                return null;
              },
              builder: (context, state) => HomeLoggedInOverviewTab(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.list,
              builder: (context, state) => HomeListTab(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: Routes.explore,
                builder: (context, state) => ExploreTab()),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: Routes.activities,
                builder: (context, state) => HomeActivitiesTab()),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(path: "/dummy", builder: (context, state) => SizedBox()),
            GoRoute(
              path: Routes._forums,
              builder: (context, state) => ForumScreen(
                tab: state.pathParameters["tab"]!,
                category: int.tryParse(
                  state.uri.queryParameters["category"] ?? "",
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    // i would use "StatefulShellRoute" but a path param cant be the initial path
    // and getting the data around all the branches is kinda weird
    GoRoute(
      path: Routes._media,
      builder: (context, state) {
        var placeholder =
            state.extra is Map ? (state.extra as Map)['placeholder'] : null;
        placeholder =
            placeholder is Fragment$MediaFragment ? placeholder : null;
        return parseIdOr404(
          state.pathParameters['id']!,
          (id) => MediaScreen(
            id: id,
            tab: state.pathParameters['tab']!,
            placeholder: placeholder,
          ),
        );
      },
    ),
    GoRoute(
      path: Routes._review,
      builder: (context, state) {
        var placeholder =
            state.extra is Map ? (state.extra as Map)['placeholder'] : null;
        placeholder =
            placeholder is Fragment$ReviewFragment ? placeholder : null;
        return parseIdOr404(
          state.pathParameters['id']!,
          (id) => ReviewScreen(id: id, placeholder: placeholder),
        );
      },
    ),
    GoRoute(
      path: Routes._character,
      builder: (context, state) {
        var placeholder =
            state.extra is Map ? (state.extra as Map)['placeholder'] : null;
        placeholder =
            placeholder is Fragment$CharacterFragment ? placeholder : null;
        return parseIdOr404(
          state.pathParameters['id']!,
          (id) => CharacterScreen(id: id, placeholder: placeholder),
        );
      },
    ),
    GoRoute(
      path: Routes._staff,
      builder: (context, state) {
        var placeholder =
            state.extra is Map ? (state.extra as Map)['placeholder'] : null;
        placeholder =
            placeholder is Fragment$StaffFragment ? placeholder : null;
        return parseIdOr404(
          state.pathParameters['id']!,
          (id) => StaffScreen(id: id, placeholder: placeholder),
        );
      },
    ),
    GoRoute(
      path: Routes._thread,
      builder: (context, state) {
        var placeholder =
            state.extra is Map ? (state.extra as Map)['placeholder'] : null;
        placeholder =
            placeholder is Fragment$ThreadFragment ? placeholder : null;
        return parseIdOr404(
          state.pathParameters['id']!,
          (id) => ThreadScreen(id: id, placeholder: placeholder),
        );
      },
    ),
    GoRoute(
      path: Routes._threadComment,
      builder: (context, state) {
        var i = int.tryParse(state.pathParameters['id'] ?? "");
        var cId = int.tryParse(state.pathParameters['commentId'] ?? "");

        if (i == null || cId == null) {
          // make a 404 page
          return SizedBox();
        }

        return ThreadCommentScreen(id: i, commentId: cId);
      },
    ),
    GoRoute(path: Routes.reviews, builder: (context, state) => ReviewsScreen()),
    GoRoute(
      path: Routes._activity,
      builder: (context, state) {
        var placeholder =
            state.extra is Map ? (state.extra as Map)['placeholder'] : null;
        return parseIdOr404(
          state.pathParameters['id']!,
          (id) => ActivityScreen(id: id, placeholder: placeholder),
        );
      },
    ),
    GoRoute(
      path: Routes.notifications,
      builder: (context, state) => NotificationScreen(),
    ),
    GoRoute(
      path: Routes.recommendations,
      builder: (context, state) => RecommendationsScreen(),
    ),
    GoRoute(
      path: Routes._auth,
      builder: (context, state) => AuthScreen(
        accessToken: state.uri.queryParameters['access_token'],
      ),
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: Routes.anilistLogin,
      builder: (context, state) => AnilistLoginScreen(),
    ),
    GoRoute(
      path: Routes.tokenLogin,
      builder: (context, state) => TokenLoginScreen(),
    ),
    GoRoute(
      path: Routes._searchStaff,
      builder: (context, state) =>
          StaffSearchScreen(state.uri.queryParameters['search']),
    ),
    GoRoute(
      path: Routes._searchCharacter,
      builder: (context, state) =>
          CharacterSearchScreen(state.uri.queryParameters['search']),
    ),
    GoRoute(
      path: Routes._searchMedia,
      builder: (context, state) {
        var autofocus =
            state.extra is Map ? (state.extra as Map)['autofocus'] : null;
        return MediaSearchScreen(autofocus: autofocus);
      },
    ),
    GoRoute(
        path: Routes.calendaer, builder: (context, state) => CalendarScreen()),
    GoRoute(
      path: Routes._studio,
      builder: (context, state) => parseIdOr404(
        state.pathParameters['id']!,
        (id) => StudioScreen(id: id),
      ),
    ),
    GoRoute(
      path: Routes._user,
      builder: (context, state) {
        var placeholder =
            state.extra is Map ? (state.extra as Map)['placeholder'] : null;
        placeholder = placeholder is Fragment$UserFragment ? placeholder : null;
        return UserScreen(
          name: state.pathParameters['name']!,
          placeholder: placeholder,
        );
      },
    ),
    GoRoute(
        path: Routes._userAnime,
        builder: (context, state) =>
            UserAnimeScreen(name: state.pathParameters['name']!)),
    GoRoute(
        path: Routes._userManga,
        builder: (context, state) =>
            UserMangaScreen(name: state.pathParameters['name']!)),
    GoRoute(
        path: Routes._userFavorites,
        builder: (context, state) => UserFavoritesScreen(
              name: state.pathParameters['name']!,
              tab: state.pathParameters['tab']!,
            )),
    GoRoute(
      path: Routes.settings,
      builder: (context, state) => SettingsScreen(),
    ),
  ],
);

Widget parseIdOr404(String id, Widget Function(int id) builder) {
  var i = int.tryParse(id);

  if (i != null) {
    return builder(i);
  } else {
    // make a 404 page
    return SizedBox();
  }
}

final class Routes {
  static String media(int id) =>
      _media.replaceFirst(":id", "$id").replaceFirst(":tab", "info");
  static String review(int id) => _review.replaceFirst(":id", "$id");
  static String character(int id) => _character.replaceFirst(":id", "$id");
  static String staff(int id) => _staff.replaceFirst(":id", "$id");
  static String thread(int id) => _thread.replaceFirst(":id", "$id");
  static String threadComment(int id, int commentId) => _threadComment
      .replaceFirst(":id", "$id")
      .replaceFirst(":commentId", "$commentId");
  static String activity(int id) => _activity.replaceFirst(":id", "$id");
  static String forums(ForumTabs tab, {String? search, int? category}) =>
      "${_forums.replaceFirst(":tab", tab.name)}?search=$search&category=$category";
  static String searchStaff(String? search) =>
      "$_searchStaff${search != null ? "?search=$search" : ""}";
  static String searchCharacter(String? search) =>
      "$_searchCharacter${search != null ? "?search=$search" : ""}";
  static String searchMedia(String? query) => "$_searchMedia${query ?? ""}";
  static String studio(int id) => _studio.replaceFirst(":id", "$id");
  static String user(String name) => _user.replaceFirst(":name", name);
  static String userFavorites(String name, FavoriteTabs tab) =>
      _userFavorites.replaceFirst(":name", name).replaceFirst(":tab", tab.name);
  static String userAnime(String name) =>
      _userAnime.replaceFirst(":name", name);
  static String userManga(String name) =>
      _userManga.replaceFirst(":name", name);
  static String reviews = "/reviews";
  static String notifications = "/notifications";
  static String recommendations = "/recommendations";
  static String explore = "/explore";
  static String home = "/home";
  static String list = "/list";
  static String activities = "/activities";
  static String login = "/login";
  static String anilistLogin = "/login/anilist";
  static String tokenLogin = "/login/token";
  static String calendaer = "/calendar";
  static String settings = "/settings";

  static final String _media = "/media/:id/:tab";
  static final String _review = "/review/:id";
  static final String _character = "/character/:id";
  static final String _staff = "/staff/:id";
  static final String _thread = "/thread/:id";
  static final String _threadComment = "/thread/:id/comment/:commentId";
  static final String _activity = "/activity/:id";
  static final String _forums = "/forums/:tab";
  static final String _auth = "/auth";
  static final String _searchStaff = "/search/staff";
  static final String _searchCharacter = "/search/character";
  static final String _searchMedia = "/search/media";
  static final String _studio = "/studio/:id";
  static final String _user = "/user/:name";
  static final String _userFavorites = "/user/:name/favorites/:tab";
  static final String _userAnime = "/user/:name/anime";
  static final String _userManga = "/user/:name/manga";
}
