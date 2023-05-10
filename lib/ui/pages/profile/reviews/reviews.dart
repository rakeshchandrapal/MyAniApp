import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/profile/reviews/reviews.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';

class Reviews extends HookWidget {
  const Reviews({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var hook = useQuery$Reviews(
      Options$Query$Reviews(
        variables: Variables$Query$Reviews(userId: userId),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => Pagination(
        hook: hook,
        opts: FetchMoreOptions$Query$Reviews(
          variables:
              Variables$Query$Reviews(page: result.Page!.pageInfo!.currentPage),
          updateQuery: (previousResultData, fetchMoreResultData) {
            var list = [
              ...previousResultData!['Page']!['reviews'],
              ...fetchMoreResultData!['Page']!['reviews'],
            ];
            fetchMoreResultData['Page']!['reviews'] = list;
            return fetchMoreResultData;
          },
        ),
        pageInfo: result.Page!.pageInfo!,
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            var item = result.Page!.reviews![index]!;

            return ListTile(
              onTap: () => context.router.push(ReviewRoute(id: item.id)),
              title: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Review of ',
                    ),
                    TextSpan(
                      text: item.media!.title!.userPreferred!,
                      style: const TextStyle(color: linkColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            context.router.push(MediaRoute(id: item.media!.id)),
                    ),
                  ],
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.summary!),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
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
                ],
              ),
              tileColor: Theme.of(context)
                  .colorScheme
                  .secondaryContainer
                  .withAlpha(100),
              shape: RoundedRectangleBorder(borderRadius: imageRadius),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: result.Page!.reviews!.length,
        ),
      ),
    );
  }
}
