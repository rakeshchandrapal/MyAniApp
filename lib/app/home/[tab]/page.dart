import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:layout/layout.dart';
import 'package:myaniapp/app/explore/page.dart';
import 'package:myaniapp/app/home/%5Btab%5D/activities.dart';
import 'package:myaniapp/app/home/%5Btab%5D/anime.dart';
import 'package:myaniapp/app/home/%5Btab%5D/home.dart';
import 'package:myaniapp/app/home/%5Btab%5D/manga.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/notifications/push.dart';
import 'package:myaniapp/providers/app_info.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';

enum HomeTabs { overview, anime, explore, manga, activities }

class HomeOverviewPage extends ConsumerStatefulWidget {
  const HomeOverviewPage({super.key, required this.tab});

  final String tab;

  @override
  ConsumerState<HomeOverviewPage> createState() => _HomeOverviewPageState();
}

class _HomeOverviewPageState extends ConsumerState<HomeOverviewPage> {
  final PageController _controller = PageController();
  final GlobalKey _pageKey = GlobalKey();
  int selectedIndex = 0;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (!kIsWeb && Platform.isAndroid) PushNotifications().init();
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);

    return AdaptiveBuilder.builder(
      builder: (context, layout, child) => Scaffold(
        drawer: NavigationDrawer(
          children: [
            InkWell(
              onTap: user.value?.data == null
                  ? () => context.push("/login")
                  : () => context
                      .push("/user/${user.value!.data!.Viewer!.name}/info"),
              child: UserAccountsDrawerHeader(
                accountName: Show(
                  when: user.value?.data != null,
                  fallback: Text(
                    "Guest",
                    style:
                        TextStyle(color: context.theme.colorScheme.onSurface),
                  ),
                  child: () => Text(
                    user.requireValue.data!.Viewer!.name,
                    style:
                        TextStyle(color: context.theme.colorScheme.onSurface),
                  ),
                ),
                currentAccountPicture: Show(
                  when: user.value?.data != null,
                  child: () =>
                      CachedImage(user.value!.data!.Viewer!.avatar!.large!),
                ),
                currentAccountPictureSize: const Size.square(90),
                decoration: const BoxDecoration(),
                accountEmail: user.value?.data != null
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
              onTap: () => context.push("/settings"),
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
        body: Show(
          when: layout.breakpoint > LayoutBreakpoint.xs,
          fallback: child,
          child: () => Row(
            children: [
              NavigationRail(
                destinations: [
                  const NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text("Home"),
                  ),
                  if (user.value?.data != null) ...[
                    const NavigationRailDestination(
                      icon: Icon(Icons.tv),
                      label: Text("Anime List"),
                    ),
                    const NavigationRailDestination(
                      icon: Icon(Icons.explore),
                      label: Text("Explore"),
                    ),
                    const NavigationRailDestination(
                      icon: Icon(Icons.book),
                      label: Text("Manga List"),
                    ),
                  ],
                  const NavigationRailDestination(
                    icon: Icon(Icons.chat),
                    label: Text("Activities"),
                  ),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: _onItemTapped,
              ),
              Expanded(child: child!),
            ],
          ),
        ),
        bottomNavigationBar: layout.breakpoint > LayoutBreakpoint.xs
            ? null
            : NavigationBar(
                selectedIndex: selectedIndex,
                onDestinationSelected: _onItemTapped,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                height: 70,
                destinations: [
                  const NavigationDestination(
                      icon: Icon(Icons.home), label: "Home"),
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
                ],
              ),
      ),
      child: AdaptiveBuilder.builder(
        key: Key(user.value?.data?.Viewer?.name ?? ""),
        builder: (context, layout, child) {
          return PageView(
            key: _pageKey,
            controller: _controller,
            scrollDirection: layout.breakpoint > LayoutBreakpoint.xs
                ? Axis.vertical
                : Axis.horizontal,
            onPageChanged: (value) => setState(() {
              selectedIndex = value;
              var i = ref.read(userProvider).value?.data == null
                  ? value > 0
                      ? value + 3
                      : value
                  : value;

              context.replace(
                '/home/${HomeTabs.values.elementAt(i).name}',
                extra: GoRouterState.of(context).extra,
              );
            }),
            children: [
              if (user.value?.data != null)
                const HomeLoggedInOverviewPage()
              else
                const ExplorePage(),
              if (user.value?.data != null) ...[
                const HomeAnimeListPage(),
                const ExplorePage(),
                const HomeMangaListPage(),
              ],
              const HomeActivitiesPage(),
            ],
          );
        },
      ),
    );
  }

  void _onItemTapped(int index) {
    var i = ref.read(userProvider).value?.data == null
        ? index > 0
            ? index + 3
            : index
        : index;

    context.replace(
      '/home/${HomeTabs.values.elementAt(i).name}',
      extra: GoRouterState.of(context).extra,
    );

    setState(() {
      selectedIndex = index;
      _controller.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }
}

class HomeLeadingIcon extends ConsumerWidget {
  const HomeLeadingIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userAvatar = ref.watch(
        userProvider.select((value) => value.value?.data?.Viewer?.avatar));

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
