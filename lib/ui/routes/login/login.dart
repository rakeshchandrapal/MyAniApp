import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

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
    final Uri authUri = Uri(
      scheme: 'https',
      host: 'anilist.co',
      path: '/api/v2/oauth/authorize',
      query: 'client_id=${kIsWeb ? '13163' : '11175'}&response_type=token',
    );

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _launchUrl(authUri);
                context.push('/login/anilist');
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
                  context.push('/login/token');
                },
                child: const Text('Login With Token'),
              ),
          ],
        ),
      ),
    );
  }
}
