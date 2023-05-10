import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/image.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return Drawer(
      child: ListView(
        children: [
          GestureDetector(
            onTap: () =>
                context.router.push(ProfileRoute(name: user.value!.name)),
            child: UserAccountsDrawerHeader(
              accountName: Text(
                user.value!.name,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              accountEmail: null,
              currentAccountPicture:
                  CImage(imageUrl: user.value!.avatar!.large!),
              decoration: const BoxDecoration(),
              currentAccountPictureSize: const Size.square(90),
            ),
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () => context.router.push(const SettingsRoute()),
          ),
          ListTile(
            title: const Text('Logout'),
            textColor: Theme.of(context).colorScheme.error,
            onTap: () => showDialog(
              context: context,
              builder: (context) => const LogoutDialog(),
            ),
          ),
        ],
      ),
    );
  }
}

class LogoutDialog extends ConsumerWidget {
  const LogoutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      content: const Text("Are you sure you want to logout?"),
      actions: [
        TextButton(
          onPressed: () => context.router.pop(),
          child: const Text(
            'Cancel',
          ),
        ),
        TextButton(
          onPressed: () => {
            ref
                .read(settingsProvider.notifier)
                .logout()
                .then((value) => context.router.popAndPush(
                      const LoginRoute(),
                    ))
          },
          child: Text(
            'Logout',
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ],
    );
  }
}
