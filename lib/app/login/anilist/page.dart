import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:url_launcher/url_launcher.dart';

class AnilistLoginPage extends ConsumerStatefulWidget {
  const AnilistLoginPage({super.key});

  @override
  ConsumerState<AnilistLoginPage> createState() => _AnilistLoginPageState();
}

class _AnilistLoginPageState extends ConsumerState<AnilistLoginPage> {
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
      mode: LaunchMode.externalApplication,
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
            .then((value) => context.go("/"));
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
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.blue[100]!),
                  ),
                  onPressed: () => context.push("/login/anilist"),
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
