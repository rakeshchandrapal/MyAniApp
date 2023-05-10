import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/media.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';

class Relations extends StatelessWidget {
  const Relations({super.key, required this.relations});

  final List<Query$Media$Media$relations$edges> relations;

  @override
  Widget build(BuildContext context) {
    var sorted = relations
      ..sort(
        (a, b) => a.relationType!.index.compareTo(b.relationType!.index),
      );

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: MediaCards(
        list: sorted.map((e) => e.node).toList(),
        underTitle: (index, style) {
          var item = sorted[index];

          return Text(item.relationType!.name.capitalize());
        },
        onTap: (index) {
          var item = sorted[index].node!;

          context.router.push(MediaRoute(id: item.id));
        },
      ),
    );
  }
}
