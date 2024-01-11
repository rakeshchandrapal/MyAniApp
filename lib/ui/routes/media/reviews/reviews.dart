import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/reviews/reviews.graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/utils/graphql.dart';

class MediaReviewsPage extends StatelessWidget {
  const MediaReviewsPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Query$Reviews$Widget(
      options: Options$Query$Reviews(
        variables: Variables$Query$Reviews(mediaId: id),
      ),
      builder: queryBuilder(
        (result, [fetchMore, refetch]) {
          return GraphqlPagination(
            pageInfo: result.parsedData!.Media!.reviews!.pageInfo!,
            fetchMore: (nextPage) => fetchMore!(
              FetchMoreOptions$Query$Reviews(
                variables: Variables$Query$Reviews(page: nextPage),
                updateQuery: (previousResultData, fetchMoreResultData) {
                  var list = [
                    ...previousResultData!['Media']!['reviews']['edges'],
                    ...fetchMoreResultData!['Media']!['reviews']['edges'],
                  ];
                  fetchMoreResultData['Media']!['reviews']['edges'] = list;
                  return fetchMoreResultData;
                },
              ),
            ),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                var item = result.parsedData!.Media!.reviews!.nodes![index]!;

                return ListTile(
                  leading: GestureDetector(
                    onTap: () => context.push('/user/${item.user!.name}'),
                    child: CircleAvatar(
                      backgroundImage:
                          CachedNetworkImageProvider(item.user!.avatar!.large!),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  onTap: () => context.push('/review/${item.id}'),
                  title: Text(item.summary!),
                  subtitle: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (item.rating != null)
                        Row(
                          children: [
                            const Icon(
                              Icons.thumb_up,
                              size: 15,
                            ),
                            Text(item.rating!.toString()),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      Text('${item.score!.toString()}/100'),
                    ],
                  ),
                  // shape: RoundedRectangleBorder(borderRadius: imageRadius),
                );
              },
              itemCount: result.parsedData!.Media!.reviews!.nodes!.length,
            ),
          );
        },
      ),
    );
  }
}
