import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/providers/settings.dart';

class AuthPage extends ConsumerStatefulWidget {
  const AuthPage({super.key, this.accessToken});

  final String? accessToken;

  @override
  ConsumerState<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.accessToken == null) context.go('/');
      var settings = ref.read(settingsProvider.notifier);
      // var instance = await SharedPreferences.getInstance();
      settings.login(widget.accessToken!).then((value) => context.go('/'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
