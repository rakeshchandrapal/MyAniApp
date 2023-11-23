import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';

class HomeDrawer extends ConsumerWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);
    var theme = Theme.of(context);

    return Drawer(
      child: ListView(
        children: [
          if (user.value == null) ...[
            ListTile(
              onTap: () => context.pushRoute(const SettingsRoute()),
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () => context.pushRoute(const LoginRoute()),
              leading: const Icon(Icons.login),
              title: const Text('Login'),
            ),
          ] else ...[
            InkWell(
              onTap: () => context.pushRoute(
                UserRoute(
                  name: user.value!.name,
                ),
              ),
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  user.value!.name,
                  style: TextStyle(color: theme.colorScheme.onBackground),
                ),
                currentAccountPicture:
                    CImage(imageUrl: user.value!.avatar!.large!),
                accountEmail: null,
                decoration: const BoxDecoration(),
                currentAccountPictureSize: const Size.square(90),
              ),
            ),
            ListTile(
              onTap: () => context.pushRoute(const SettingsRoute()),
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () => showDialog(
                context: context,
                builder: (context) => const LogoutDialog(),
              ),
              leading: Icon(
                Icons.logout,
                color: theme.colorScheme.error,
              ),
              textColor: theme.colorScheme.error,
              title: const Text('Logout'),
            ),
          ],
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
          onPressed: () => context.popRoute(),
          child: const Text(
            'Cancel',
          ),
        ),
        TextButton(
          onPressed: () => {
            ref
                .read(settingsProvider.notifier)
                .logout()
                .then((value) => context.popRoute())
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
