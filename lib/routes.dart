import 'package:auto_route/auto_route.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

@AutoRouterConfig()
class Router extends $Router {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: EmptyRoute.page,
      path: '/',
      guards: [AuthGuard()],
      children: [
        AutoRoute(
          page: HomeRoute.page,
          path: 'home',
          children: [
            AutoRoute(page: OverviewRoute.page, path: ''),
            AutoRoute(page: AnimeListRoute.page, path: 'animelist'),
            AutoRoute(page: MangaListRoute.page, path: 'mangalist'),
            AutoRoute(page: DiscoverRoute.page, path: 'discover'),
            AutoRoute(page: SocialRoute.page, path: 'social'),
          ],
        ),
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(
          page: SettingsRoute.page,
          path: 'settings',
          children: [
            AutoRoute(page: AppSettingsRoute.page, path: ''),
            AutoRoute(page: ColorsRoute.page, path: 'colors'),
          ],
        ),
        AutoRoute(page: MediaRoute.page, path: 'media'),
        AutoRoute(page: CharacterRoute.page, path: 'character'),
        AutoRoute(page: StaffRoute.page, path: 'staff'),
        AutoRoute(page: SearchRoute.page, path: 'search'),
        AutoRoute(page: ReviewRoute.page, path: 'review'),
        AutoRoute(page: ThreadRoute.page, path: 'thread'),
        AutoRoute(page: ActivityRoute.page, path: 'activity'),
        AutoRoute(page: ThreadsRoute.page, path: 'threads'),
        AutoRoute(page: ProfileRoute.page, path: 'profile'),
        AutoRoute(page: ProfileAnimeListRoute.page, path: 'profile/list/anime'),
        AutoRoute(page: ProfileMangaListRoute.page, path: 'profile/list/manga'),
        AutoRoute(
            page: FavoriteAnimeRoute.page, path: 'profile/favorite/anime'),
        AutoRoute(
            page: FavoriteMangaRoute.page, path: 'profile/favorite/manga'),
        AutoRoute(page: NotificationsRoute.page, path: 'notifications')
      ],
    ),
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: AniLoginRoute.page, path: '/login/ani'),
    AutoRoute(page: TokenLoginRoute.page, path: '/login/token'),
  ];
}

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    var settings = await SharedPreferences.getInstance();
    await settings.reload();
    var token = settings.getString(Setting.token.setting);
    if (token != null) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      router.push(const LoginRoute());
    }
  }
}

final appRouter = Router();
