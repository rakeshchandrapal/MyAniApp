import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';

@RoutePage()
class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key, @QueryParam('access_token') this.accessToken});

  final String? accessToken;

  @override
  ConsumerState<AuthScreen> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.accessToken == null) context.router.pushNamed('/');
      var settings = ref.read(settingsProvider.notifier);
      // var instance = await SharedPreferences.getInstance();
      settings
          .updateToken(widget.accessToken!)
          .then((value) => context.router.pushNamed('/'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
