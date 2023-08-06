import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:uni_links/uni_links.dart';

@RoutePage()
class AniLoginPage extends ConsumerStatefulWidget {
  const AniLoginPage({super.key});

  @override
  ConsumerState<AniLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<AniLoginPage> {
  final textController = TextEditingController();

  StreamSubscription? _sub;

  @override
  void dispose() {
    super.dispose();
    _sub?.cancel();
    textController.dispose();
  }

  @override
  void initState() {
    super.initState();
    login();
  }

  void login() {
    _sub?.cancel();
    if (kIsWeb) return;
    _sub = uriLinkStream.listen((uri) async {
      // print(uri);
      if (uri?.scheme == 'myaniapp') {
        var fragment = uri!.toString();
        var start = fragment.indexOf('=');
        var middle = fragment.indexOf('&');
        var accessToken = fragment.substring(start + 1, middle);
        var settings = ref.read(settingsProvider.notifier);
        // var instance = await SharedPreferences.getInstance();
        settings
            .login(accessToken)
            .then((value) => context.router.pushNamed('/'));
        // await instance.setString('token', accessToken);
        // var c = await client(updated: true);
        // print(RegExp('(?:access_token=)(.+)', dotAll: true)
        //     .firstMatch(fragment)
        //     ?.group(1));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Column(
          children: [
            Text('Login With Anilist'),
          ],
        ),
      ),
    );
  }
}
