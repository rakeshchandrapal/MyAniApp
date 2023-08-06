import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/routes.dart';
import 'package:myaniapp/ui/theme.dart';
import 'package:uni_links/uni_links.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  StreamSubscription? _sub;

  @override
  void dispose() {
    super.dispose();
    _sub?.cancel();
  }

  @override
  void initState() {
    super.initState();
    appRouter = AppRouter(ref);
  }

  Future<void> initUniLinks() async {
    // ... check initialUri
    if (kIsWeb) return;
    // Attach a listener to the stream
    _sub = uriLinkStream.listen((Uri? uri) {
      print(uri);
      // Use the uri and warn the user, if it is not correct
    }, onError: (err) {
      print(err);
      // Handle exception by warning the user their action did not succeed
    });

    // NOTE: Don't forget to call _sub.cancel() in dispose()
  }

  @override
  Widget build(BuildContext context) {
    var themeMode = ref.watch(settingsProvider.select((value) => value.theme));

    return MaterialApp.router(
      title: 'MyAniApp',
      routerConfig: appRouter.config(),
      scrollBehavior: _ScrollBehavior(),
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
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
