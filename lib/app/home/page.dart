import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/providers/app_info.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    if (user.isLoading || user.hasError || user.value?.loading == true) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    return AutoTabsRouter(
      routes: [
        if (user.value?.data != null) ...[
          const HomeLoggedInOverviewRoute(),
          const HomeAnimeListRoute(),
          const ExploreRoute(),
          const HomeMangaListRoute()
        ] else
          const ExploreRoute(),
        const HomeActivitiesRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        var destinations = [
          const NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          if (user.value?.data != null) ...[
            const NavigationDestination(
                icon: Icon(Icons.tv), label: "Anime List"),
            const NavigationDestination(
                icon: Icon(Icons.explore), label: "Explore"),
            const NavigationDestination(
                icon: Icon(Icons.book), label: "Manga List"),
          ],
          const NavigationDestination(
              icon: Icon(Icons.chat), label: "Activities"),
        ];

        return OrientationBuilder(
          builder: (context, orientation) => Scaffold(
            body: Show(
              when: orientation == Orientation.landscape,
              fallback: child,
              child: () => Row(
                children: [
                  NavigationRail(
                    destinations: [
                      for (var d in destinations)
                        NavigationRailDestination(
                          icon: d.icon,
                          label: Text(d.label),
                        )
                    ],
                    selectedIndex: tabsRouter.activeIndex,
                    onDestinationSelected: tabsRouter.setActiveIndex,
                  ),
                  Expanded(child: child!),
                ],
              ),
            ),
            drawer: NavigationDrawer(
              children: [
                InkWell(
                  onTap: user.value?.data == null
                      ? () => context.router.replace(const LoginRoute())
                      : () => context.pushRoute(UserRoute(
                          name: user.value!.parsedData!.Viewer!.name)),
                  child: UserAccountsDrawerHeader(
                    accountName: Show(
                      when: user.value?.parsedData != null,
                      fallback: Text(
                        "Guest",
                        style: TextStyle(
                            color: context.theme.colorScheme.onSurface),
                      ),
                      child: () => Text(
                        user.requireValue.parsedData!.Viewer!.name,
                        style: TextStyle(
                            color: context.theme.colorScheme.onSurface),
                      ),
                    ),
                    currentAccountPicture: Show(
                      when: user.value?.parsedData != null,
                      child: () => CachedImage(
                          user.value!.parsedData!.Viewer!.avatar!.large!),
                    ),
                    currentAccountPictureSize: const Size.square(90),
                    decoration: const BoxDecoration(),
                    accountEmail: user.value?.parsedData != null
                        ? null
                        : Text(
                            "Sign in!",
                            style: TextStyle(
                                color: context.theme.colorScheme.onSurface),
                          ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () => context.pushRoute(const SettingsRoute()),
                ),
                ListTile(
                  onTap: () => showAboutDialog(
                    context: context,
                    applicationVersion: ref.read(appInfoProvider).version,
                    applicationName: "MyAniApp",
                    applicationIcon: Image.asset(
                      "assets/app_icon.png",
                      height: 40,
                    ),
                  ),
                  leading: const Icon(Icons.info),
                  title: const Text('About'),
                ),
                if (user.value?.data != null)
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    title: const Text("Logout"),
                    onTap: () =>
                        ref.read(settingsProvider.notifier).updateToken(null),
                  )
              ],
            ),
            bottomNavigationBar: Show(
              when: orientation == Orientation.portrait,
              child: () => NavigationBar(
                selectedIndex: tabsRouter.activeIndex,
                onDestinationSelected: tabsRouter.setActiveIndex,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                height: 70,
                destinations: destinations,
              ),
            ),
          ),
        );
      },
    );
  }
}

class HomeLeadingIcon extends ConsumerWidget {
  const HomeLeadingIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userAvatar = ref.watch(userProvider
        .select((value) => value.value?.parsedData?.Viewer?.avatar));

    return Show(
      when: userAvatar != null,
      fallback: IconButton(
        onPressed: () => Scaffold.of(Scaffold.of(context).context).openDrawer(),
        icon: const Icon(Icons.account_circle_outlined),
      ),
      child: () => IconButton(
        onPressed: () => Scaffold.of(Scaffold.of(context).context).openDrawer(),
        icon: ListTileCircleAvatar(
          url: userAvatar!.large!,
        ),
      ),
    );
  }
}
