import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/routes.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key, this.accessToken});

  final String? accessToken;

  @override
  ConsumerState<AuthScreen> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.accessToken == null) context.go(Routes.home);
      var settings = ref.read(settingsProvider.notifier);
      // var instance = await SharedPreferences.getInstance();
      settings
          .updateToken(widget.accessToken!)
          .then((value) => context.go(Routes.home));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
