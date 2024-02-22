import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/providers/app_info.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/image.dart';

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
              onTap: () => context.push('/settings'),
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () => context.push('/login'),
              leading: const Icon(Icons.login),
              title: const Text('Login'),
            ),
          ] else ...[
            InkWell(
              onTap: () =>
                  context.push('/user/${user.requireValue!.name}/overview'),
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
              onTap: () => context.push('/settings'),
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () => showAboutDialog(
                context: context,
                applicationVersion: ref.read(appInfoProvider).version,
                applicationIcon: Image.asset(
                  "assets/web/icon-512.png",
                  height: 40,
                ),
              ),
              leading: const Icon(Icons.info),
              title: const Text('About'),
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
          onPressed: () => context.pop(),
          child: const Text(
            'Cancel',
          ),
        ),
        TextButton(
          onPressed: () => {
            ref
                .read(settingsProvider.notifier)
                .logout()
                .then((value) => context.pop())
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
