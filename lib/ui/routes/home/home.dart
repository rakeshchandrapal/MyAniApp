import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/home/drawer.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key, required this.navigationShell});

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
                  Expanded(
                    child: FadeInWidget(navigationShell: navigationShell),
                  ),
                ],
              ),
            _ => FadeInWidget(navigationShell: navigationShell)
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

class FadeInWidget extends StatefulWidget {
  const FadeInWidget({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<FadeInWidget> createState() => _FadeInWidgetState();
}

class _FadeInWidgetState extends State<FadeInWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  )..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void didUpdateWidget(covariant FadeInWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.navigationShell.currentIndex !=
        widget.navigationShell.currentIndex) {
      _controller
        ..reset()
        ..forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.navigationShell,
    );
  }
}

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
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
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
