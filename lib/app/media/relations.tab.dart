import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/media.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/routes.dart';

var _mediaRelations = Enum$MediaRelation.values.toList();

class MediaRelationsTab extends ConsumerWidget {
  const MediaRelationsTab({super.key, required this.media});

  final Query$Media$Media media;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listSetting = ref.watch(listSettingsProvider.select(
      (value) => value.mediaRelations,
    ));

    var sorted = media.relations!.edges!.toList()
      ..sort(
        (a, b) => _mediaRelations
            .indexOf(a!.relationType!)
            .compareTo(_mediaRelations.indexOf(b!.relationType!)),
      );

    if (sorted.isEmpty) return Center(child: Text("No relations"));

    return MediaCards(
      listType: listSetting,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        childAspectRatio: GridCard.listRatio,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      padding: listSetting == ListType.grid ? const EdgeInsets.all(8) : null,
      itemBuilder: (context, index) {
        var media = sorted[index]!;

        return MediaCard(
          listType: listSetting,
          image: media.node!.coverImage!.extraLarge!,
          title: media.node!.title!.userPreferred,
          blur: media.node!.isAdult ?? false,
          underTitle: Show(
            when: media.relationType != null,
            child: () => Text(
              media.relationType!.name.capitalize(),
              style: context.theme.textTheme.labelMedium,
            ),
          ),
          onTap: () => context.push(Routes.media(media.node!.id),
              extra: {"placeholder": media.node}),
          onLongPress: () => MediaSheet.show(context, media.node!),
        );
      },
      itemCount: sorted.length,
    );
  }
}
