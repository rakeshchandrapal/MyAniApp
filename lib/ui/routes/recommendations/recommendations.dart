import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/sheet_card.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/recommendations/__generated__/recommendations.req.gql.dart';
import 'package:myaniapp/utils/require_login.dart';

class RecommendationsPage extends ConsumerStatefulWidget {
  const RecommendationsPage({super.key});

  @override
  ConsumerState<RecommendationsPage> createState() =>
      _RecommendationsPageState();
}

class _RecommendationsPageState extends ConsumerState<RecommendationsPage> {
  bool onList = false;
  GRecommendationSort sort = GRecommendationSort.ID_DESC;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: Row(
                children: [
                  SegmentedButton<bool>(
                    segments: const [
                      ButtonSegment(
                        value: false,
                        label: Text('All'),
                      ),
                      ButtonSegment(
                        value: true,
                        label: Text('My List'),
                      )
                    ],
                    selected: {onList},
                    onSelectionChanged: (p0) =>
                        setState(() => onList = p0.first),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SegmentedButton<GRecommendationSort>(
                    segments: const [
                      ButtonSegment(
                        value: GRecommendationSort.ID_DESC,
                        label: Text('Recent'),
                      ),
                      ButtonSegment(
                        value: GRecommendationSort.RATING_DESC,
                        label: Text('Highest Rated'),
                      ),
                      ButtonSegment(
                        value: GRecommendationSort.RATING,
                        label: Text('Lowest Rated'),
                      )
                    ],
                    selected: {sort},
                    onSelectionChanged: (p0) => setState(() => sort = p0.first),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: GQLRequest(
        key: Key("$sort,$onList"),
        operationRequest: GRecommendationsReq((b) => b
          ..requestId = "userRecommendations"
          ..vars.sort.add(sort)
          ..vars.onList = onList),
        builder: (context, response, error, refetch) => GraphqlPagination(
          req: (nextPage) =>
              (response.operationRequest as GRecommendationsReq).rebuild(
            (p0) => p0
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Page.recommendations.insertAll(
                    0,
                    previous?.Page?.recommendations?.whereNot((p0) =>
                            result.Page?.recommendations?.contains(p0) ??
                            false) ??
                        [])),
          ),
          pageInfo: response!.data!.Page!.pageInfo!,
          child: ListView.separated(
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemBuilder: (context, index) {
              var recommendation =
                  response.data!.Page!.recommendations![index]!;

              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 110,
                            child: GridCard(
                              aspectRatio: 1.9 / 3,
                              imageUrl:
                                  recommendation.media!.coverImage!.extraLarge!,
                              title: recommendation.media!.title!.userPreferred,
                              onTap: () => context
                                  .push('/media/${recommendation.media!.id}'),
                              onLongPress: () => showMediaCard(
                                context,
                                recommendation.media!,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 110,
                            child: GridCard(
                              aspectRatio: 1.9 / 3,
                              imageUrl: recommendation
                                  .mediaRecommendation!.coverImage!.extraLarge!,
                              title: recommendation
                                  .mediaRecommendation!.title!.userPreferred,
                              onTap: () => context.push(
                                  '/media/${recommendation.mediaRecommendation!.id}'),
                              onLongPress: () => showMediaCard(
                                context,
                                recommendation.mediaRecommendation!,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .surfaceVariant
                          .withOpacity(0.7),
                      borderRadius: imageRadius,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.thumb_up,
                            ),
                            color: recommendation.userRating ==
                                    GRecommendationRating.RATE_UP
                                ? Colors.green
                                : null,
                            onPressed: requireLogin(
                                ref,
                                'rate a recommendation',
                                () => ref
                                    .read(ferryClientProvider)
                                    .request(
                                      GSaveRecommendationReq(
                                        (b) => b
                                          ..vars.mediaId =
                                              recommendation.media!.id
                                          ..vars.mediaRecommendationId =
                                              recommendation
                                                  .mediaRecommendation!.id
                                          ..vars.rating = recommendation
                                                      .userRating ==
                                                  GRecommendationRating.RATE_UP
                                              ? GRecommendationRating.NO_RATING
                                              : GRecommendationRating.RATE_UP,
                                      ),
                                    )
                                    .first),
                          ),
                          IconButton(
                            icon: const Icon(Icons.thumb_down),
                            color: recommendation.userRating ==
                                    GRecommendationRating.RATE_DOWN
                                ? Colors.red
                                : null,
                            onPressed: requireLogin(
                                ref,
                                'rate a recommendation',
                                () => ref
                                    .read(ferryClientProvider)
                                    .request(
                                      GSaveRecommendationReq(
                                        (b) => b
                                          ..vars.mediaId =
                                              recommendation.media!.id
                                          ..vars.mediaRecommendationId =
                                              recommendation
                                                  .mediaRecommendation!.id
                                          ..vars.rating = recommendation
                                                      .userRating ==
                                                  GRecommendationRating
                                                      .RATE_DOWN
                                              ? GRecommendationRating.NO_RATING
                                              : GRecommendationRating.RATE_DOWN,
                                      ),
                                    )
                                    .first),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                              '${recommendation.rating?.isNegative == true ? '' : '+'}${recommendation.rating}'),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
            itemCount: response.data!.Page!.recommendations!.length,
          ),
        ),
      ),
    );
  }
}
