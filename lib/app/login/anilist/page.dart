import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class AnilistLoginScreen extends ConsumerStatefulWidget {
  const AnilistLoginScreen({super.key});

  @override
  ConsumerState<AnilistLoginScreen> createState() => _AnilistLoginPageState();
}

class _AnilistLoginPageState extends ConsumerState<AnilistLoginScreen> {
  final Uri authUri = Uri(
    scheme: 'https',
    host: 'anilist.co',
    path: '/api/v2/oauth/authorize',
    query: 'client_id=${kIsWeb ? '13163' : '11175'}&response_type=token',
  );
  AppLinks appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void dispose() {
    super.dispose();
    _linkSubscription?.cancel();
  }

  @override
  void initState() {
    super.initState();

    launchUrl(
      authUri,
      // mode: LaunchMode.externalApplication,
    );

    stream();
  }

  void stream() {
    _linkSubscription = appLinks.uriLinkStream.listen((event) {
      if (event.scheme == "myaniapp" &&
          event.host == "ani" &&
          event.path == "/auth") {
        var fragment = event.fragment;
        var token = fragment.substring(
            fragment.indexOf("=") + 1, fragment.indexOf("&"));

        ref
            .read(settingsProvider.notifier)
            .updateToken(token)
            .then((value) => context.navigateTo(HomeRoute()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue[100]!),
                  ),
                  onPressed: () => context.pushRoute(AnilistLoginRoute()),
                  child: const Text(
                    "Login with Anilist",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
