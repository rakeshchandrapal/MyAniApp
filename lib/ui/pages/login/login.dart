import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri authUri = Uri(
  scheme: 'https',
  host: 'anilist.co',
  path: '/api/v2/oauth/authorize',
  query: 'client_id=11175&response_type=token',
);

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _launchUrl(authUri);
                context.router.push(const AniLoginRoute());
              },
              child: const Text('Login With Anilist'),
            ),
            const SizedBox(
              height: 10,
            ),
            if (kDebugMode)
              ElevatedButton(
                onPressed: () {
                  _launchUrl(authUri);
                  context.router.push(const TokenLoginRoute());
                },
                child: const Text('Login With Token'),
              ),
          ],
        ),
      ),
    );
  }
}
