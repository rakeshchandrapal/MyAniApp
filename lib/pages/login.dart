import 'dart:async';

import 'package:MyAniApp/graphql_client.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';

var accessRegex = RegExp('(?:access_token=)(.+)', dotAll: true);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool clicked = false;
  final Uri toLaunch = Uri(
    scheme: 'https',
    host: 'anilist.co',
    path: '/api/v2/oauth/authorize',
    query: 'client_id=11175&response_type=token',
  );
  StreamSubscription? _sub;
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  void login() {
    _sub?.cancel();
    _sub = uriLinkStream.listen((uri) async {
      // print(uri);
      if (uri?.scheme == 'myaniapp') {
        var fragment = uri!.toString();
        var start = fragment.indexOf('=');
        var middle = fragment.indexOf('&');
        var accessToken = fragment.substring(start + 1, middle);
        if (accessToken == null) return;
        var instance = await SharedPreferences.getInstance();
        await instance.setString('token', accessToken);
        var c = await client(updated: true);
        context.go('/');
        // print(RegExp('(?:access_token=)(.+)', dotAll: true)
        //     .firstMatch(fragment)
        //     ?.group(1));
      }
    });
  }

  @override
  void dispose() {
    _sub?.cancel();
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Login with Anilist"),
            if (clicked)
              Form(
                key: _formKey,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter the token',
                  ),
                  controller: myController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your token, or click "Open Anilist login" to get your token';
                    }
                    return null;
                  },
                ),
              ),
            if (clicked)
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    var settings = await SharedPreferences.getInstance();
                    settings.setString('token', myController.text).then(
                          (value) => context.go('/'),
                        );
                  }
                },
                child: const Text('Login'),
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clicked = true;
                });
                login();
                _launchInWebViewOrVC(toLaunch);
              },
              child: const Text("Open Anilist login"),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
