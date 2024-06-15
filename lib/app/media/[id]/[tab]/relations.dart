import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/media/__generated__/media.data.gql.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/providers/list_settings.dart';

var _mediaRelations = GMediaRelation.values.toList();

class MediaRelations extends ConsumerStatefulWidget {
  const MediaRelations({super.key, required this.media});

  final GMediaData_Media media;

  @override
  ConsumerState<MediaRelations> createState() => _MediaRelationsState();
}

class _MediaRelationsState extends ConsumerState<MediaRelations>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    var listSetting = ref.watch(listSettingsProvider.select(
      (value) => value.mediaRelations,
    ));

    super.build(context);
    var sorted = widget.media.relations!.edges!.toList()
      ..sort(
        (a, b) => _mediaRelations
            .indexOf(a!.relationType!)
            .compareTo(_mediaRelations.indexOf(b!.relationType!)),
      );

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
        var media0 = sorted[index]!;

        return MediaCard(
          listType: listSetting,
          image: media0.node!.coverImage!.extraLarge!,
          title: media0.node!.title!.userPreferred,
          blur: media0.node!.isAdult ?? false,
          underTitle: Show(
            when: media0.relationType != null,
            child: () => Text(
              media0.relationType!.name.capitalize(),
              style: context.theme.textTheme.labelMedium,
            ),
          ),
          onTap: () => context.push("/media/${media0.node!.id}/overview",
              extra: {"media": media0.node}),
          onLongPress: () => MediaSheet.show(context, media0.node!),
        );
      },
      itemCount: sorted.length,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
