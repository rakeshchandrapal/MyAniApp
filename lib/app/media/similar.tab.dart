import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/graphql/__gen/media_similar.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';

class MediaSimilarTab extends HookConsumerWidget {
  const MediaSimilarTab({super.key, required this.mediaId});

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
      builder: () => Show(
        when: snapshot.parsedData!.Media!.recommendations!.nodes!.isNotEmpty,
        fallback: Center(child: Text("Nothing similar")),
        child: () => Show(
          when: listSetting == ListType.grid,
          fallback: PaginationView.list(
            req: (nextPage) => fetchMore(
                variables: Variables$Query$MediaSimilar.fromJson(
                        snapshot.request!.variables)
                    .copyWith(page: nextPage)
                    .toJson()),
            pageInfo: snapshot.parsedData!.Media!.recommendations!.pageInfo!,
            builder: (context, index) {
              var media = snapshot.parsedData!.Media!.recommendations!
                  .nodes![index]!.mediaRecommendation;

              if (media == null) return const SizedBox();

              return MediaCard(
                listType: listSetting,
                image: media.coverImage!.extraLarge!,
                title: media.title!.userPreferred,
                blur: media.isAdult ?? false,
                onTap: () => context.push(Routes.media(media.id),
                    extra: {"placeholder": media}),
                onLongPress: () => MediaSheet.show(context, media),
              );
            },
            itemCount:
                snapshot.parsedData!.Media!.recommendations!.nodes!.length,
          ),
          child: () => PaginationView.grid(
            padding: const EdgeInsets.all(8),
            req: (nextPage) => fetchMore(
                variables: Variables$Query$MediaSimilar.fromJson(
                        snapshot.request!.variables)
                    .copyWith(page: nextPage)
                    .toJson()),
            pageInfo: snapshot.parsedData!.Media!.recommendations!.pageInfo!,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: GridCard.listRatio,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            builder: (context, index) {
              var media = snapshot.parsedData!.Media!.recommendations!
                  .nodes![index]!.mediaRecommendation;

              if (media == null) return const SizedBox();

              return MediaCard(
                listType: listSetting,
                image: media.coverImage!.extraLarge!,
                title: media.title!.userPreferred,
                blur: media.isAdult ?? false,
                onTap: () => context.push(Routes.media(media.id),
                    extra: {"placeholder": media}),
                onLongPress: () => MediaSheet.show(context, media),
              );
            },
            itemCount:
                snapshot.parsedData!.Media!.recommendations!.nodes!.length,
          ),
        ),
      ),
    );
  }
}
