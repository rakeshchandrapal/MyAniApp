import 'package:MyAniApp/main.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:MyAniApp/widgets/image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    var settings = context.watch<SettingsProvider>();

    return Drawer(
      // width: 200,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          GestureDetector(
            onTap: () => context.router.push(
              ProfileRoute(username: user.user!.name),
            ),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
              ),
              accountName: user.user != null ? Text(user.user!.name) : null,
              accountEmail: null,
              currentAccountPictureSize: const Size.square(90),
              currentAccountPicture: user.user != null
                  ? CImage(
                      // height: 90,
                      imageUrl: user.user!.avatar!.large!,
                    )
                  : null,
            ),
          ),
          ListTile(
            title: const Text('Settings'),
            trailing: const Icon(Icons.settings),
            onTap: () => context.router.pushNamed('settings'),
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
                    onPressed: () => context.router.pop(),
                    child: const Text('Go back'),
                  ),
                  TextButton(
                    onPressed: () async {
                      await settings.clearAll();
                      context.router.popAndPush(const LoginRoute());
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
                  'Version ${packageInfo.version}',
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
