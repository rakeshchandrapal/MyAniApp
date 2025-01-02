import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/home/forum/screen.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/providers/app_info.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/routes.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key, required this.child});

  final StatefulNavigationShell child;

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

    var destinations = [
      if (user.value?.data != null) ...[
        const NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        const NavigationDestination(
            icon: Icon(Icons.view_list_sharp), label: "Lists"),
      ],
      const NavigationDestination(icon: Icon(Icons.explore), label: "Explore"),
      const NavigationDestination(icon: Icon(Icons.chat), label: "Activities"),
      const NavigationDestination(icon: Icon(Icons.forum), label: "Forums"),
    ];

    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
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
                selectedIndex: child.currentIndex,
                onDestinationSelected: (value) {
                  var v = destinations.length == 3 ? value + 2 : value;

                  if (value != 4) {
                    child.goBranch(v);
                  } else {
                    context.go(Routes.forums(ForumTabs.overview));
                  }
                },
              ),
              Expanded(child: child),
            ],
          ),
        ),
        drawer: Drawer(),
        bottomNavigationBar: Show(
          when: orientation == Orientation.portrait,
          child: () => NavigationBar(
            destinations: destinations,
            selectedIndex: child.currentIndex,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            height: 70,
            onDestinationSelected: (value) {
              var v = destinations.length == 3 ? value + 2 : value;

              if (value != 4) {
                child.goBranch(v);
              } else {
                context.go(Routes.forums(ForumTabs.overview));
              }
            },
          ),
        ),
      );
    });
  }
}

class Drawer extends ConsumerWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return NavigationDrawer(
      children: [
        InkWell(
          onTap: user.value?.data == null
              ? () => context.replace(Routes.login)
              : () => context.push(
                  Routes.user(user.value!.parsedData!.Viewer!.name),
                  extra: {"placeholder": user.value!.parsedData!.Viewer!.name}),
          child: UserAccountsDrawerHeader(
            accountName: Show(
              when: user.value?.parsedData != null,
              fallback: Text(
                "Guest",
                style: TextStyle(color: context.theme.colorScheme.onSurface),
              ),
              child: () => Text(
                user.requireValue.parsedData!.Viewer!.name,
                style: TextStyle(color: context.theme.colorScheme.onSurface),
              ),
            ),
            currentAccountPicture: Show(
              when: user.value?.parsedData != null,
              child: () =>
                  CachedImage(user.value!.parsedData!.Viewer!.avatar!.large!),
            ),
            currentAccountPictureSize: const Size.square(90),
            decoration: const BoxDecoration(),
            accountEmail: user.value?.parsedData != null
                ? null
                : Text(
                    "Sign in!",
                    style:
                        TextStyle(color: context.theme.colorScheme.onSurface),
                  ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Settings"),
          onTap: () => context.push(Routes.settings),
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
            onTap: () => ref.read(settingsProvider.notifier).updateToken(null),
          )
      ],
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
