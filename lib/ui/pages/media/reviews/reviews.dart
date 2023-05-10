import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/reviews/reviews.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';

class Reviews extends HookWidget {
  const Reviews({super.key, required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var hook = useQuery$Reviews(
      Options$Query$Reviews(
        variables: Variables$Query$Reviews(mediaId: mediaId),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => Pagination(
        hook: hook,
        pageInfo: result.Media!.reviews!.pageInfo!,
        opts: FetchMoreOptions$Query$Reviews(
          variables: Variables$Query$Reviews(
              page: result.Media!.reviews!.pageInfo!.currentPage! + 1),
          updateQuery: (previousResultData, fetchMoreResultData) {
            var list = [
              ...previousResultData!['Media']!['reviews']['edges'],
              ...fetchMoreResultData!['Media']!['reviews']['edges'],
            ];
            fetchMoreResultData['Media']!['reviews']['edges'] = list;
            return fetchMoreResultData;
          },
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              var item = result.Media!.reviews!.nodes![index]!;

              return ListTile(
                leading: GestureDetector(
                  onTap: () =>
                      context.router.push(ProfileRoute(name: item.user!.name)),
                  child: CircleAvatar(
                    backgroundImage:
                        CachedNetworkImageProvider(item.user!.avatar!.large!),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                onTap: () => context.router.push(ReviewRoute(id: item.id)),
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
                tileColor: Theme.of(context)
                    .colorScheme
                    .secondaryContainer
                    .withAlpha(100),
                shape: RoundedRectangleBorder(borderRadius: imageRadius),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: result.Media!.reviews!.nodes!.length,
          ),
        ),
      ),
    );
  }
}
