import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';

@RoutePage()
class AniLoginPage extends ConsumerStatefulWidget {
  const AniLoginPage({super.key});

  @override
  ConsumerState<AniLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<AniLoginPage> {
  final textController = TextEditingController();

  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void dispose() {
    super.dispose();
    _linkSubscription?.cancel();
    textController.dispose();
  }

  @override
  void initState() {
    super.initState();
    login();
  }

  void login() {
    _appLinks = AppLinks();

    _linkSubscription?.cancel();
    if (kIsWeb) return;
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) async {
      if (uri.scheme == 'myaniapp' && uri.pathSegments.firstOrNull == 'auth') {
        var fragment = uri.toString();
        var start = fragment.indexOf('=');
        var middle = fragment.indexOf('&');
        var accessToken = fragment.substring(start + 1, middle);
        var settings = ref.read(settingsProvider.notifier);
        // var instance = await SharedPreferences.getInstance();
        settings
            .login(accessToken)
            .then((value) => context.router.popAndPush(const MyHomeRoute()));
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
        child: Center(
          child: Text('Go back if the login failed'),
        ),
      ),
    );
  }
}
