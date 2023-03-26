import 'package:MyAniApp/graphql/Activity.graphql.dart';
import 'package:MyAniApp/graphql/Like.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/app_bar.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/markdown.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  bool global = false;

  @override
  Widget build(BuildContext context) {
    return Appbar(
      title: const Text('Feed'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: IconButton(
            onPressed: () => context.router.pushNamed('/settings/app'),
            icon: const Icon(Icons.settings),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SizedBox(
          height: 50,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemBuilder: (context, index) {
              late String name;
              if (index == 0) {
                name = 'Following';
              } else {
                name = 'Global';
              }
              return FilterChip(
                label: Text(name),
                selected: index == 0 ? !global : global,
                onSelected: (value) => setState(() => global = !global),
              );
            },
          ),
        ),
      ),
      child: Social(
        global: global,
      ),
    );
  }
}

class Social extends HookWidget {
  final bool global;
  const Social({
    super.key,
    this.global = false,
  });

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Activities(
      Options$Query$Activities(
        variables: Variables$Query$Activities(
            isFollowing: !global, hasReplies: global),
      ),
    );

    // if (hook.result.isLoading && hook.result.parsedData == null ||
    //     hook.result.parsedData == null) {
    //   const Center(
    //     child: CircularProgressIndicator(),
    //   );
    // }

    // if (hook.result.hasException) {
    //   return Graphql(hook.result.exception!);
    // }

    var nextPage = hook.result.parsedData?.Page?.pageInfo?.hasNextPage;

    FetchMoreOptions$Query$Activities opts = FetchMoreOptions$Query$Activities(
      variables: nextPage != null
          ? Variables$Query$Activities(
              page: (hook.result.parsedData?.Page?.pageInfo?.currentPage ?? 1) +
                  1,
            )
          : null,
      updateQuery: (previousResultData, fetchMoreResultData) {
        var list = [
          ...previousResultData!['Page']!['activities'],
          ...fetchMoreResultData!['Page']!['activities'],
        ];
        fetchMoreResultData['Page']!['activities'] = list;
        return fetchMoreResultData;
      },
    );

    return Graphql(
      hook: hook,
      builder: (result) => NotificationListener<ScrollEndNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels >
                  notification.metrics.maxScrollExtent - 100 &&
              nextPage == true) {
            hook.fetchMore(opts);
          }
          return true;
        },
        child: ListView.separated(
          itemCount: result.Page!.activities!.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 5,
          ),
          itemBuilder: (context, index) {
            var item = result.Page!.activities![index];

            if (item is Query$Activities$Page$activities$$ListActivity) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CachedNetworkImage(
                          imageUrl: item.user!.avatar!.large!,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator.adaptive(),
                          height: 60,
                          width: 60,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.user!.name),
                          Text(
                            timeago.format(
                              dateFromTimestamp(item.createdAt),
                            ),
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ],
                  ),
                  Card(
                    child: InkWell(
                      onTap: () => context.router.push(
                        ActivityRoute(id: item.id),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => context.router
                                .push(MediaRoute(id: item.media!.id!)),
                            child: SizedBox(
                              height: 120,
                              width: 80,
                              child: AspectRatio(
                                aspectRatio: 9 / 16,
                                child: CachedNetworkImage(
                                  // width: 70,
                                  imageUrl: item.media!.coverImage!.large!,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator.adaptive(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: toBeginningOfSentenceCase(
                                              item.status),
                                        ),
                                        if (item.progress != null)
                                          TextSpan(
                                              text: ' ${item.progress} of'),
                                        TextSpan(
                                          text:
                                              ' ${item.media?.title?.userPreferred}',
                                          style: const TextStyle(
                                            color: Color(0xff0969da),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    child: Row(
                      children: [
                        Mutation$ToggleLike$Widget(
                          builder: (p0, p1) {
                            return IconButton(
                              onPressed: () {
                                p0(
                                  variables: Variables$Mutation$ToggleLike(
                                    id: item.id,
                                    type: Enum$LikeableType.ACTIVITY,
                                  ),
                                );
                              },
                              icon: Row(
                                children: [
                                  item.isLiked == true
                                      ? Icon(
                                          Icons.favorite,
                                          color: Colors.red[400],
                                        )
                                      : const Icon(Icons.favorite),
                                  Text(
                                    item.likeCount.toString(),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                        IconButton(
                          onPressed: () => context.router.push(
                            ActivityRoute(id: item.id),
                          ),
                          icon: Row(
                            children: [
                              const Icon(Icons.forum_rounded),
                              Text(item.replyCount.toString()),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_active),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else if (item is Query$Activities$Page$activities$$TextActivity) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl: item.user!.avatar!.large!,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator.adaptive(),
                        height: 60,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.user!.name),
                          Text(
                            timeago.format(
                              dateFromTimestamp(item.createdAt),
                            ),
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ],
                  ),
                  Card(
                    child: InkWell(
                      onTap: () => context.router.push(
                        ActivityRoute(id: item.id),
                      ),
                      // onTap: () => context.push('/media/${item.media!.id}'),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: 120,
                          //   width: 80,
                          //   child: AspectRatio(
                          //     aspectRatio: 9 / 16,
                          //     child: CachedNetworkImage(
                          //       // width: 70,
                          //       imageUrl: item.media!.coverImage!.large!,
                          //       fit: BoxFit.cover,
                          //       placeholder: (context, url) => const Center(
                          //         child: CircularProgressIndicator.adaptive(),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Markdown(
                                    data: item.text!,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    child: Row(
                      children: [
                        Mutation$ToggleLike$Widget(
                          builder: (p0, p1) {
                            return IconButton(
                              onPressed: () {
                                p0(
                                  variables: Variables$Mutation$ToggleLike(
                                    id: item.id,
                                    type: Enum$LikeableType.ACTIVITY,
                                  ),
                                );
                              },
                              icon: Row(
                                children: [
                                  item.isLiked == true
                                      ? Icon(
                                          Icons.favorite,
                                          color: Colors.red[400],
                                        )
                                      : const Icon(Icons.favorite),
                                  Text(
                                    item.likeCount.toString(),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Row(
                            children: [
                              const Icon(Icons.forum_rounded),
                              Text(item.replyCount.toString()),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_active),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }

            return Text(item!.toJson().toString());
          },
        ),
      ),
    );
  }
}
