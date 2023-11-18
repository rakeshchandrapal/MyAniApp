import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/home/drawer.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';

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
          return OrientationBuilder(
            builder: (context, orientation) => Scaffold(
              body: switch (orientation) {
                (Orientation.landscape) => Row(
                    children: [
                      Rail(
                        hasData: data != null,
                      ),
                      Expanded(child: child),
                    ],
                  ),
                _ => child
              },
              drawer: const HomeDrawer(),
              bottomNavigationBar: switch (orientation) {
                (Orientation.portrait) => BottomBar(hasData: data != null),
                _ => null
              },
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

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.hasData,
  });

  final bool hasData;

  @override
  Widget build(BuildContext context) {
    var router = AutoTabsRouter.of(context);

    return BottomNavigationBar(
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
        if (hasData)
          const BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            label: "Anime",
          ),
        if (hasData)
          const BottomNavigationBarItem(
              icon: Icon(Icons.explore), label: 'Explore'),
        if (hasData)
          const BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Manga",
          ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: "Activity",
        ),
      ],
    );
  }
}

class Rail extends StatelessWidget {
  const Rail({
    super.key,
    required this.hasData,
  });

  final bool hasData;

  @override
  Widget build(BuildContext context) {
    var router = AutoTabsRouter.of(context);

    return NavigationRail(
      destinations: [
        const NavigationRailDestination(
          icon: Icon(Icons.home),
          label: Text("Home"),
        ),
        if (hasData)
          const NavigationRailDestination(
            icon: Icon(Icons.local_movies),
            label: Text("Anime"),
          ),
        if (hasData)
          const NavigationRailDestination(
            icon: Icon(Icons.explore),
            label: Text('Explore'),
          ),
        if (hasData)
          const NavigationRailDestination(
            icon: Icon(Icons.book),
            label: Text("Manga"),
          ),
        const NavigationRailDestination(
          icon: Icon(Icons.chat_bubble),
          label: Text("Activity"),
        ),
      ],
      selectedIndex: router.activeIndex,
      onDestinationSelected: router.setActiveIndex,
    );
  }
}
