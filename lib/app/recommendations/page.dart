import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/recommendations/__generated__/recommendations.req.gql.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/widget.dart';

class RecommendationsPage extends StatefulWidget {
  const RecommendationsPage({super.key});

  @override
  State<RecommendationsPage> createState() => _RecommendationsStatePage();
}

class _RecommendationsStatePage extends State<RecommendationsPage> {
  bool onMyList = false;
  GRecommendationSort sort = GRecommendationSort.ID_DESC;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: Row(
                children: [
                  SegmentedButton(
                    segments: const [
                      ButtonSegment(
                        value: false,
                        label: Text("All"),
                      ),
                      ButtonSegment(
                        value: true,
                        label: Text(
                          "My List",
                        ),
                      ),
                    ],
                    selected: {onMyList},
                    onSelectionChanged: (p0) =>
                        setState(() => onMyList = p0.first),
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
        key: Key("$sort$onMyList"),
        operationRequest: GRecommendationsReq(
          (b) => b
            ..requestId = "recommendationPage"
            ..vars.onList = onMyList
            ..vars.sort.add(sort),
        ),
        builder: (context, response, error, refetch) => GraphqlPagination(
          pageInfo: response!.data!.Page!.pageInfo!,
          req: (nextPage) {
            return (response.operationRequest as GRecommendationsReq).rebuild(
              (p0) => p0
                ..vars.page = nextPage
                ..updateResult = (previous, result) => result?.rebuild(
                      (p0) => p0
                        ..Page.recommendations.insertAll(
                              0,
                              previous?.Page?.recommendations?.whereNot((p0) =>
                                      result.Page?.recommendations
                                          ?.contains(p0) ??
                                      false) ??
                                  [],
                            ),
                    ),
            );
          },
          child: RefreshIndicator.adaptive(
            onRefresh: refetch,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                mainAxisExtent: 170,
              ),
              itemBuilder: (context, index) {
                var rec = response.data!.Page!.recommendations![index]!;
                if (rec.media == null || rec.mediaRecommendation == null) {
                  return const SizedBox();
                }

                return Card.outlined(
                  child: Stack(
                    // alignment: Alignment.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 130,
                              width: 85,
                              child: GridCard(
                                image: rec.media!.coverImage!.extraLarge!,
                                title: rec.media!.title!.userPreferred,
                                blur: rec.media!.isAdult ?? false,
                                onTap: () => context.push(
                                    "/media/${rec.media!.id}/overview",
                                    extra: {"media": rec.media!}),
                                onLongPress: () =>
                                    MediaSheet.show(context, rec.media!),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: 85,
                              child: GridCard(
                                image: rec.mediaRecommendation!.coverImage!
                                    .extraLarge!,
                                title: rec
                                    .mediaRecommendation!.title!.userPreferred,
                                blur: rec.mediaRecommendation!.isAdult ?? false,
                                onTap: () => context.push(
                                    "/media/${rec.mediaRecommendation!.id}/overview",
                                    extra: {"media": rec.mediaRecommendation!}),
                                onLongPress: () => MediaSheet.show(
                                    context, rec.mediaRecommendation!),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: context
                                .theme.colorScheme.surfaceContainerHigh
                                .withOpacity(.5),
                            borderRadius: imageRadius,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.thumb_up),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.thumb_down),
                                  ),
                                ],
                              ),
                              Text(
                                  "${(rec.rating ?? 0) > 0 ? "+ " : ""}${(rec.rating ?? 0)}")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: response.data!.Page!.recommendations!.length,
            ),
          ),
        ),
      ),
    );
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _StickyHeaderDelegate({required this.child});

  @override
  double get minExtent => 40;

  @override
  double get maxExtent => 40; // Adjust this value according to your needs

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SafeArea(
        child: Container(
            color: Theme.of(context).appBarTheme.backgroundColor,
            constraints: const BoxConstraints.tightFor(height: 104),
            child: child));
  }

  @override
  bool shouldRebuild(covariant _StickyHeaderDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
