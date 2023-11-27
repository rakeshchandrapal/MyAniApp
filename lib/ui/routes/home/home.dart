import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/home/drawer.dart';

class GoHomePage extends ConsumerWidget {
  const GoHomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return user.when(
      data: (data) => OrientationBuilder(
        builder: (context, orientation) => Scaffold(
          body: switch (orientation) {
            (Orientation.landscape) => Row(
                children: [
                  Rail(
                    hasData: data != null,
                    currentIndex: navigationShell.currentIndex,
                    onTap: _onTap,
                  ),
                  Expanded(child: navigationShell),
                ],
              ),
            _ => navigationShell
          },
          drawer: const HomeDrawer(),
          bottomNavigationBar: switch (orientation) {
            (Orientation.portrait) => BottomBar(
                hasData: data != null,
                currentIndex: navigationShell.currentIndex,
                onTap: _onTap,
              ),
            _ => null
          },
        ),
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

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

// @RoutePage()
// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var user = ref.watch(userProvider);

//     return user.when(
//       data: (data) => AutoTabsRouter(
//         routes: [
//           const HomeOverviewRoute(),
//           if (data != null) const HomeAnimeRoute(),
//           if (data != null) const ExploreRoute(),
//           if (data != null) const HomeMangaRoute(),
//           const HomeActivitiesRoute(),
//         ],
//         builder: (context, child) {
//           return OrientationBuilder(
//             builder: (context, orientation) => Scaffold(
//               body: switch (orientation) {
//                 // (Orientation.landscape) => Row(
//                 //     children: [
//                 //       Rail(
//                 //         hasData: data != null,
//                 //       ),
//                 //       Expanded(child: child),
//                 //     ],
//                 //   ),
//                 _ => child
//               },
//               drawer: const HomeDrawer(),
//               // bottomNavigationBar: switch (orientation) {
//               //   (Orientation.portrait) => BottomBar(hasData: data != null),
//               //   _ => null
//               // },
//             ),
//           );
//         },
//       ),
//       error: (error, stackTrace) =>
//           GraphqlError(exception: error as OperationException),
//       loading: () => const Scaffold(
//         body: Center(
//           child: CircularProgressIndicator.adaptive(),
//         ),
//       ),
//     );
//   }
// }

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.hasData,
    required this.currentIndex,
    required this.onTap,
  });

  final bool hasData;
  final int currentIndex;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    // var router = AutoTabsRouter.of(context);

    return NavigationBar(
      selectedIndex: currentIndex == 4 && !hasData ? 1 : currentIndex,
      onDestinationSelected: (index) =>
          onTap(index == 1 && !hasData ? 4 : index),
      height: 60,
      // currentIndex: currentIndex == 4 && !hasData ? 1 : currentIndex,
      // type: BottomNavigationBarType.shifting,
      // fixedColor: Theme.of(context).colorScheme.primary,
      // unselectedItemColor: Theme.of(context).colorScheme.secondary,
      // showUnselectedLabels: false,
      // labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      destinations: [
        const NavigationDestination(
          icon: Icon(Icons.home),
          label: "home",
        ),
        if (hasData)
          const NavigationDestination(
            icon: Icon(Icons.local_movies),
            label: "Anime",
          ),
        if (hasData)
          const NavigationDestination(
              icon: Icon(Icons.explore), label: 'Explore'),
        if (hasData)
          const NavigationDestination(
            icon: Icon(Icons.book),
            label: "Manga",
          ),
        const NavigationDestination(
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
    required this.currentIndex,
    required this.onTap,
  });

  final bool hasData;
  final int currentIndex;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
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
      onDestinationSelected: (index) =>
          onTap(index == 1 && !hasData ? 4 : index),
      selectedIndex: currentIndex == 4 && !hasData ? 1 : currentIndex,
    );
  }
}
