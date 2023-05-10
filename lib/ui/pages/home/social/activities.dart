import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/home/social/activities.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/comment.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';

class Activities extends HookWidget {
  const Activities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var route = ModalRoute.of(context);
    print(route);
    var hook = useQuery$Activities(
      Options$Query$Activities(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Query$Activities(
          isFollowing: false,
          hasReplies: true,
        ),
      ),
    );

    return RefreshIndicator(
      onRefresh: hook.refetch,
      child: ScrollToTop(
        builder: (controller) => Graphql(
          hook: hook,
          builder: (result) => Pagination(
            hook: hook,
            pageInfo: result.Page!.pageInfo!,
            opts: FetchMoreOptions$Query$Activities(
              variables: Variables$Query$Activities(
                  page: result.Page!.pageInfo!.currentPage! + 1),
              updateQuery: (previousResultData, fetchMoreResultData) {
                var list = [
                  ...previousResultData!['Page']['activities'],
                  ...fetchMoreResultData!['Page']['activities']
                ];

                fetchMoreResultData['Page']['activities'] = list;
                return fetchMoreResultData;
              },
            ),
            child: ListView.separated(
              controller: controller,
              itemBuilder: (context, index) {
                var item = result.Page!.activities![index]!;

                if (item is Query$Activities$Page$activities$$TextActivity) {
                  return Comment(
                    onTap: () =>
                        context.router.push(ActivityRoute(id: item.id)),
                    header: CommentHeader(
                      username: item.user!.name,
                      avatarUrl: item.user!.avatar!.large!,
                      createdAt: item.createdAt,
                    ),
                    body: Markdown(data: item.text!),
                    footer: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Row(
                            children: [
                              const Icon(Icons.forum),
                              if (item.replyCount > 0)
                                Text(item.replyCount.toString())
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Row(
                            children: [
                              const Icon(Icons.favorite),
                              if (item.likeCount > 0)
                                Text(item.likeCount.toString()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (item
                    is Query$Activities$Page$activities$$ListActivity) {
                  return Comment(
                    onTap: () =>
                        context.router.push(ActivityRoute(id: item.id)),
                    header: CommentHeader(
                      username: item.user!.name,
                      avatarUrl: item.user!.avatar!.large!,
                      createdAt: item.createdAt,
                    ),
                    body: Row(
                      children: [
                        GestureDetector(
                          onTap: () => context.router
                              .push(MediaRoute(id: item.media!.id)),
                          child: ClipRRect(
                            borderRadius: imageRadius,
                            child: CImage(
                              imageUrl: item.media!.coverImage!.large!,
                              height: 130,
                              width: 85,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: toBeginningOfSentenceCase(item.status),
                                ),
                                if (item.progress != null)
                                  TextSpan(text: ' ${item.progress} of'),
                                TextSpan(
                                  text: ' ${item.media?.title?.userPreferred}',
                                  style: const TextStyle(
                                    color: linkColor,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => context.router.push(
                                          MediaRoute(id: item.media!.id),
                                        ),
                                ),
                              ],
                            ),
                            // '${item.status} ${item.media!.title!.userPreferred!}',
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ],
                    ),
                    footer: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Row(
                            children: [
                              const Icon(Icons.forum),
                              Text(item.replyCount.toString())
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Row(
                            children: [
                              const Icon(Icons.favorite),
                              Text(item.likeCount.toString())
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return Text(item.toJson().toString());
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: result.Page!.activities!.length,
            ),
          ),
        ),
      ),
    );
  }
}
