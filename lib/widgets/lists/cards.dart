import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/widgets/lists/grid_cards.dart';
import 'package:MyAniApp/widgets/lists/list_cards.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cards extends StatelessWidget {
  final List list;
  final Function(Fragment$MediaListEntry list)? openEditDialog;
  final Function()? updateList;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final Widget Function(Fragment$BasicMedia media, ListStyle style)? underTitle;
  final List<Widget> Function(Fragment$BasicMedia media)? gridChips;
  const Cards({
    super.key,
    required this.list,
    this.openEditDialog,
    this.updateList,
    this.physics,
    this.shrinkWrap = false,
    this.underTitle,
    this.gridChips,
  }) : assert(
            (list is List<Fragment$BasicMedia> ||
                    list is List<Fragment$MediaListEntry>) !=
                true,
            list);

  @override
  Widget build(BuildContext context) {
    var settings = context.watch<SettingsProvider>();
    var style = settings.list;

    if (style == ListStyle.grid) {
      return GridCards(
        list: list,
        openEditDialog: openEditDialog,
        physics: physics,
        shrinkWrap: shrinkWrap,
        updateList: updateList,
        underTitle: underTitle,
        gridChips: gridChips,
      );
    } else if (style == ListStyle.detailedList) {
      return DetailedListCards(
        list: list,
        openEditDialog: openEditDialog,
        physics: physics,
        shrinkWrap: shrinkWrap,
        updateList: updateList,
        underTitle: underTitle,
      );
    } else {
      return SimpleCards(
        list: list,
        openEditDialog: openEditDialog,
        physics: physics,
        shrinkWrap: shrinkWrap,
        updateList: updateList,
        underTitle: underTitle,
      );
    }
  }
}
