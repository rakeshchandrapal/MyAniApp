import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/media/reviews/__generated__/reviews.req.gql.dart';

class MediaReviewsPage extends StatefulWidget {
  const MediaReviewsPage({super.key, required this.id});

  final int id;

  @override
  State<MediaReviewsPage> createState() => _MediaReviewsPageState();
}

class _MediaReviewsPageState extends State<MediaReviewsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GQLRequest(
      operationRequest: GReviewsReq((b) => b
        ..requestId = "mediaReviews"
        ..vars.mediaId = widget.id),
      builder: (context, response, error, refetch) => GraphqlPagination(
        pageInfo: response!.data!.Media!.reviews!.pageInfo!,
        req: (nextPage) => GReviewsReq(
          (b) => b
            ..replace(response.operationRequest as GReviewsReq)
            ..vars.page = nextPage
            ..updateResult = (previous, result) => result?.rebuild((p0) => p0
              ..Media.reviews.nodes.insertAll(
                  0,
                  previous?.Media?.reviews?.nodes?.whereNot((p0) =>
                          result.Media?.reviews?.nodes?.contains(p0) ??
                          false) ??
                      [])),
        ),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            var item = response.data!.Media!.reviews!.nodes![index]!;

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
          itemCount: response.data!.Media!.reviews!.nodes!.length,
        ),
      ),
    );
    // return Query$Reviews$Widget(
    //   options: Options$Query$Reviews(
    //     variables: Variables$Query$Reviews(mediaId: widget.id),
    //   ),
    //   builder: queryBuilder(
    //     (result, [fetchMore, refetch]) {
    //       return GraphqlPagination(
    //         pageInfo: result.parsedData!.Media!.reviews!.pageInfo!,
    //         fetchMore: (nextPage) => fetchMore!(
    //           FetchMoreOptions$Query$Reviews(
    //             variables: Variables$Query$Reviews(page: nextPage),
    //             updateQuery: (previousResultData, fetchMoreResultData) {
    //               var list = [
    //                 ...previousResultData!['Media']!['reviews']['edges'],
    //                 ...fetchMoreResultData!['Media']!['reviews']['edges'],
    //               ];
    //               fetchMoreResultData['Media']!['reviews']['edges'] = list;
    //               return fetchMoreResultData;
    //             },
    //           ),
    //         ),
    //         child: ListView.builder(
    //           padding: EdgeInsets.zero,
    //           itemBuilder: (context, index) {
    //             var item = result.parsedData!.Media!.reviews!.nodes![index]!;

    //             return ListTile(
    //               leading: GestureDetector(
    //                 onTap: () => context.push('/user/${item.user!.name}'),
    //                 child: CircleAvatar(
    //                   backgroundImage:
    //                       CachedNetworkImageProvider(item.user!.avatar!.large!),
    //                   backgroundColor: Colors.transparent,
    //                 ),
    //               ),
    //               onTap: () => context.push('/review/${item.id}'),
    //               title: Text(item.summary!),
    //               subtitle: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   if (item.rating != null)
    //                     Row(
    //                       children: [
    //                         const Icon(
    //                           Icons.thumb_up,
    //                           size: 15,
    //                         ),
    //                         Text(item.rating!.toString()),
    //                         const SizedBox(
    //                           width: 10,
    //                         ),
    //                       ],
    //                     ),
    //                   Text('${item.score!.toString()}/100'),
    //                 ],
    //               ),
    //               // shape: RoundedRectangleBorder(borderRadius: imageRadius),
    //             );
    //           },
    //           itemCount: result.parsedData!.Media!.reviews!.nodes!.length,
    //         ),
    //       );
    //     },
    //   ),
    // );
  }

  @override
  bool get wantKeepAlive => true;
}
