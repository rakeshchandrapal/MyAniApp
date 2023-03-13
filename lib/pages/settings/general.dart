import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
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
                onTap: () => context.push('/settings/app'),
              ),
              ListTile(
                title: const Text('Anilist Settings'),
                onTap: () => context.push('/settings/anilist'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
