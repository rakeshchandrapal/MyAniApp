import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/home/drawer.dart';

@RoutePage()
class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return user.when(
      data: (data) => AutoTabsRouter(
        routes: [
          const HomeOverviewRoute(),
          if (data != null) const HomeAnimeRoute(),
          if (data != null) const ExploreRoute(),
          if (data != null) const HomeMangaRoute(),
          const HomeActivitiesRoute(),
        ],
        builder: (context, child) {
          var router = AutoTabsRouter.of(context);

          return Scaffold(
            body: child,
            drawer: const HomeDrawer(),
            // appBar: AppBar(),
            // bottomNavigationBar: NavigationBar(
            //   elevation: 0,
            //   onDestinationSelected: router.setActiveIndex,
            //   selectedIndex: router.activeIndex,
            //   destinations: const [
            //     NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            //     NavigationDestination(
            //       icon: Icon(Icons.local_movies),
            //       label: 'Anime',
            //     ),
            //     NavigationDestination(
            //       icon: Icon(Icons.explore),
            //       label: 'Explore',
            //     ),
            //     NavigationDestination(icon: Icon(Icons.book), label: 'Manga'),
            //     NavigationDestination(
            //       icon: Icon(Icons.chat_bubble),
            //       label: 'Activity',
            //     )
            //   ],
            // ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: router.setActiveIndex,
              currentIndex: router.activeIndex,
              type: BottomNavigationBarType.shifting,
              fixedColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Theme.of(context).colorScheme.secondary,
              showUnselectedLabels: false,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "home",
                ),
                if (data != null)
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.local_movies),
                    label: "Anime",
                  ),
                if (data != null)
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.explore), label: 'Explore'),
                if (data != null)
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    label: "Manga",
                  ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble),
                  label: "Activity",
                ),
              ],
            ),
          );
        },
      ),
      error: (error, stackTrace) =>
          GraphqlError(exception: error as OperationException),
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
