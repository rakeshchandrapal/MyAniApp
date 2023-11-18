import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';

@RoutePage()
class GeneralSettingsPage extends ConsumerWidget {
  const GeneralSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        automaticallyImplyLeading: true,
        leading: const AutoLeadingButton(),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            onTap: () => context.pushRoute(const AppSettingsRoute()),
            title: const Text('App Settings'),
          ),
          if (user.value != null)
            ListTile(
              onTap: () => context.pushRoute(const AnilistSettingsRoute()),
              title: const Text('Anilist Settings'),
            )
        ],
      ),
    );
  }
}
