import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/providers/user.dart';

class GeneralSettingsPage extends ConsumerWidget {
  const GeneralSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        // automaticallyImplyLeading: true,
        // leading: const AutoLeadingButton(),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            onTap: () => context.push('/settings/app'),
            title: const Text('App Settings'),
          ),
          if (user.value != null)
            ListTile(
              onTap: () => context.push('/settings/anilist'),
              title: const Text('Anilist Settings'),
            )
        ],
      ),
    );
  }
}
