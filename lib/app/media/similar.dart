import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/app/media/similar.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class MediaSimilarScreen extends HookConsumerWidget {
  const MediaSimilarScreen(
      {super.key, @PathParam.inherit("id") required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listSetting = ref.watch(listSettingsProvider.select(
      (value) => value.mediaSimilar,
    ));
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      mediaSimilarQuery,
      variables: Variables$Query$MediaSimilar(mediaId: mediaId).toJson(),
      parseData: Query$MediaSimilar.fromJson,
      mergeResults: defaultMergeResults("Media.recommendations.nodes"),
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () => GraphqlPagination(
        pageInfo: snapshot!.parsedData!.Media!.recommendations!.pageInfo!,
        req: (nextPage) => fetchMore(
            variables: Variables$Query$MediaSimilar.fromJson(
                    snapshot.request!.variables)
                .copyWith(page: nextPage)
                .toJson()),
        child: MediaCards(
          listType: listSetting,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: GridCard.listRatio,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          padding:
              listSetting == ListType.grid ? const EdgeInsets.all(8) : null,
          itemBuilder: (context, index) {
            var media = snapshot.parsedData!.Media!.recommendations!
                .nodes![index]!.mediaRecommendation;

            if (media == null) return const SizedBox();

            return MediaCard(
              listType: listSetting,
              image: media.coverImage!.extraLarge!,
              title: media.title!.userPreferred,
              blur: media.isAdult ?? false,
              onTap: () => context.pushRoute(MediaRoute(
                id: media.id,
                placeholder: media,
              )),
              onLongPress: () => MediaSheet.show(context, media),
            );
          },
          itemCount: snapshot.parsedData!.Media!.recommendations!.nodes!.length,
        ),
      ),
    );
  }
}
