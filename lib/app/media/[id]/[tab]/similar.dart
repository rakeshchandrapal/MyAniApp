import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/media/__generated__/similar.req.gql.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/list_settings.dart';

class MediaSimilarPage extends ConsumerStatefulWidget {
  const MediaSimilarPage({super.key, required this.mediaId});

  final int mediaId;

  @override
  ConsumerState<MediaSimilarPage> createState() => _MediaSimilarPageState();
}

class _MediaSimilarPageState extends ConsumerState<MediaSimilarPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var listSetting = ref.watch(listSettingsProvider.select(
      (value) => value.mediaSimilar,
    ));

    return GQLRequest(
      operationRequest: GMediaSimilarReq((b) => b
        ..requestId = "mediaSimilar${widget.mediaId}"
        ..vars.mediaId = widget.mediaId),
      builder: (context, response, error, refetch) => GraphqlPagination(
        pageInfo: response!.data!.Media!.recommendations!.pageInfo!,
        req: (nextPage) =>
            (response.operationRequest as GMediaSimilarReq).rebuild(
          (p0) => p0
            ..vars.page = nextPage
            ..updateResult = (previous, result) => result?.rebuild((p0) => p0
              ..Media.recommendations.nodes.insertAll(
                  0,
                  previous?.Media?.recommendations?.nodes?.whereNot((p0) =>
                          result.Media?.recommendations?.nodes?.contains(p0) ??
                          false) ??
                      [])),
        ),
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
            var media = response.data!.Media!.recommendations!.nodes![index]!
                .mediaRecommendation;

            if (media == null) return const SizedBox();

            return MediaCard(
              listType: listSetting,
              image: media.coverImage!.extraLarge!,
              title: media.title!.userPreferred,
              blur: media.isAdult ?? false,
              onTap: () => context
                  .push("/media/${media.id}/overview", extra: {"media": media}),
              onLongPress: () => MediaSheet.show(context, media),
            );
          },
          itemCount: response.data!.Media!.recommendations!.nodes!.length,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
