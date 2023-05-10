import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/routes.dart';
import 'package:myaniapp/ui/theme.dart';
import 'package:uni_links/uni_links.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  StreamSubscription? _sub;

  @override
  void dispose() {
    super.dispose();
    _sub?.cancel();
  }

  @override
  void initState() {
    super.initState();
  }

  Future<void> initUniLinks() async {
    // ... check initialUri

    // Attach a listener to the stream
    _sub = uriLinkStream.listen((Uri? uri) {
      // Use the uri and warn the user, if it is not correct
    }, onError: (err) {
      // Handle exception by warning the user their action did not succeed
    });

    // NOTE: Don't forget to call _sub.cancel() in dispose()
  }

  @override
  Widget build(BuildContext context) {
    var themeMode = ref.watch(settingsProvider.select((value) => value.theme));

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'MyAniApp',
      scrollBehavior: _ScrollBehavior(),
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      routerConfig: appRouter.config(),
    );
  }
}

class _ScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.invertedStylus,
        PointerDeviceKind.trackpad,
      };
}
