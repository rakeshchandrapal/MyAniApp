import 'package:MyAniApp/providers/graphql.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    /// routes go here
    AutoRoute(
      page: EmptyRouterRoute.page,
      path: '/',
      guards: [AuthGuard()],
      children: [
        AutoRoute(page: LoginRoute.page, path: 'login'),
        AutoRoute(page: ProfileRoute.page, path: 'profile'),
        AutoRoute(page: MediaRoute.page, path: 'media/:id'),
        AutoRoute(page: ReleaseCalenderRoute.page, path: 'releasing'),
        AutoRoute(page: ActivityRoute.page, path: 'activity/:id'),
        AutoRoute(page: CharacterRoute.page, path: 'character/:id'),
        AutoRoute(page: NotificationsRoute.page, path: 'notifications'),
        AutoRoute(page: RecommendationsRoute.page, path: 'recommendations'),
        AutoRoute(page: SearchRoute.page, path: 'search'),
        AutoRoute(
          page: EmptyRouterRoute.page,
          path: 'settings',
          children: [
            AutoRoute(page: SettingsRoute.page, path: ''),
            AutoRoute(
              page: EmptyRouterRoute.page,
              path: 'app',
              children: [
                AutoRoute(page: AppSettingsRoute.page, path: ''),
                AutoRoute(
                  page: FallbackListSettingRoute.page,
                  path: 'lists/fallback',
                ),
                AutoRoute(
                  page: AnimeListSettingRoute.page,
                  path: 'lists/anime',
                ),
                AutoRoute(
                  page: MangaListSettingRoute.page,
                  path: 'lists/manga',
                ),
              ],
            ),
            AutoRoute(page: AnilistSettingsRoute.page, path: 'anilist'),
          ],
        ),
        AutoRoute(page: StaffRoute.page, path: 'staff/:id'),
        AutoRoute(page: ThreadRoute.page, path: 'thread/:id'),
        AutoRoute(
          page: HomeRouteTabs.page,
          path: '',
          guards: [AuthGuard()],
          children: [
            AutoRoute(page: HomeRoute.page, path: ''),
            AutoRoute(page: AnimeListRoute.page, path: 'lists/anime'),
            AutoRoute(page: MangaListRoute.page, path: 'lists/manga'),
            AutoRoute(page: DiscoveryRoute.page, path: 'discovery'),
            AutoRoute(page: SocialRoute.page, path: 'social'),
          ],
        ),
        // RedirectRoute(path: '*', redirectTo: '/home')
      ],
    ),
  ];
}

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    var settings = await SharedPreferences.getInstance();
    await settings.reload();
    var token = settings.getString(SettingStrings.token.setting);
    if (token != null) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      router.push(const LoginRoute());
    }
  }
}

@RoutePage()
class EmptyRouterPage extends StatelessWidget {
  const EmptyRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: GraphQlProvider(child: AutoRouter()));
  }
}

final appRouter = AppRouter();
