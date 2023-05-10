import 'package:flutter/material.dart';

class SliverPersistentHeaderTabBarDelegate
    extends SliverPersistentHeaderDelegate {
  SliverPersistentHeaderTabBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderTabBarDelegate oldDelegate) {
    return false;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      elevation: 1,
      child: Container(
        child: _tabBar,
      ),
    );
  }
}
