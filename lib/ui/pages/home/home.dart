import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/pages/home/drawer.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);
    if (user.value == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator.adaptive()),
      );
    }

    var route = ModalRoute.of(context);
    print(route?.animation?.isCompleted);

    return AutoTabsScaffold(
      routes: const [
        OverviewRoute(),
        AnimeListRoute(),
        DiscoverRoute(),
        MangaListRoute(),
        SocialRoute(),
      ],
      drawer: const AppDrawer(),
      transitionBuilder: (context, child, animation) {
        var tabRouter = AutoTabsRouter.of(context);
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(
              tabRouter.activeIndex > (tabRouter.previousIndex ?? 0) ? 1 : -1,
              0.0,
            ),
            end: Offset.zero,
          ).animate(animation),
          child: FadeTransition(opacity: animation, child: child),
        );
      },
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        useLegacyColorScheme: false,
        onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_movies), label: 'Anime List'),
          BottomNavigationBarItem(
            icon: Icon(
              IconData(
                0xf8ca,
                fontFamily: CupertinoIcons.iconFont,
                fontPackage: CupertinoIcons.iconFontPackage,
              ),
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Manga List'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), label: 'Social'),
        ],
      ),
    );
  }
}
