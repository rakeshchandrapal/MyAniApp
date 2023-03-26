import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            leading: AutoLeadingButton(),
            title: Text('Settings'),
            floating: true,
            snap: true,
          ),
        ],
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            children: [
              ListTile(
                title: const Text('App settings'),
                onTap: () => context.router.navigateNamed('app'),
              ),
              ListTile(
                title: const Text('Anilist Settings'),
                onTap: () => context.router.navigateNamed('anilist'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
