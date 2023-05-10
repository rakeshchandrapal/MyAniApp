import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/ui/common/persistent_header.dart';
import 'package:myaniapp/ui/pages/home/app_bar.dart';
import 'package:myaniapp/ui/pages/home/social/activities.dart';
import 'package:myaniapp/ui/pages/home/social/forum.dart';

@RoutePage()
class SocialPage extends StatelessWidget {
  const SocialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const Appbar(),
          SliverPersistentHeader(
            delegate: SliverPersistentHeaderTabBarDelegate(
              const TabBar(
                tabs: [
                  Tab(
                    text: 'Activities',
                  ),
                  Tab(
                    text: 'Forums',
                  )
                ],
              ),
            ),
            pinned: true,
          )
        ],
        body: const TabBarView(
          children: [
            Activities(),
            Forums(),
          ],
        ),
      ),
    );
  }
}
