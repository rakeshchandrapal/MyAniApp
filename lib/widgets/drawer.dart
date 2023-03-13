import 'package:MyAniApp/providers/user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();

    return Drawer(
      // width: 200,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
            ),
            accountName: user.user != null ? Text(user.user!.name) : null,
            accountEmail: null,
            currentAccountPictureSize: const Size.square(90),
            currentAccountPicture: user.user != null
                ? CachedNetworkImage(
                    height: 90,
                    imageUrl: user.user!.avatar!.large!,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator.adaptive(),
                  )
                : null,
          ),
          ListTile(
            title: const Text('Settings'),
            trailing: const Icon(Icons.settings),
            onTap: () => context.push('/settings'),
          ),
          ListTile(
            textColor: Colors.red,
            // tileColor: Colors.red,
            title: const Text('Logout'),
            trailing: const Icon(Icons.logout),
            onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Are you sure want to logout?'),
                content: const Text(
                    'Logging out will not delete your anilist settings.'),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Go back'),
                  ),
                  TextButton(
                    onPressed: () async {
                      var settings = await SharedPreferences.getInstance();
                      await settings.remove('token');
                      // ignore: use_build_context_synchronously
                      context.go('/login');
                    },
                    child: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Version 0.1.0',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
