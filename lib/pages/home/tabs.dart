import 'package:MyAniApp/providers/graphql.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePageTabs extends StatelessWidget {
  const HomePageTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        AnimeListRoute(),
        DiscoveryRoute(),
        MangaListRoute(),
        SocialRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        useLegacyColorScheme: false,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            label: 'Anime List',
          ),
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
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        AnimeListRoute(),
        DiscoveryRoute(),
        MangaListRoute(),
        SocialRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: GraphQlProvider(child: child),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            useLegacyColorScheme: false,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_movies),
                label: 'Anime List',
              ),
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.book), label: 'Manga List'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble), label: 'Social'),
            ],
          ),
        );
      },
    );
  }
}
