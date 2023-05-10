import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/activity/activity.graphql.dart';
import 'package:myaniapp/ui/common/comment.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';

import '../../../constants.dart';
import '../../../routes.gr.dart';
import '../../common/image.dart';

@RoutePage()
class ActivityPage extends HookWidget {
  const ActivityPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Activity(
      Options$Query$Activity(
        variables: Variables$Query$Activity(id: id),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: Graphql(
        hook: hook,
        builder: (result) => CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Activity(activity: result.activity!),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${result.replies?.activityReplies?.length ?? 0} Replies',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Comment(header: CommentHeader(username: result.activity!, avatarUrl: avatarUrl),)
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var item = result.replies!.activityReplies![index]!;

                  return Comment(
                    header: CommentHeader(
                      username: item.user!.name,
                      avatarUrl: item.user!.avatar!.large!,
                      createdAt: item.createdAt,
                      leading: Row(
                        children: [
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
                    ),
                    body: Markdown(data: item.text!),
                  );
                },
                childCount: result.replies!.activityReplies!.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Activity extends StatelessWidget {
  const Activity({super.key, required this.activity});

  final Query$Activity$activity activity;

  @override
  Widget build(BuildContext context) {
    if (activity is Query$Activity$activity$$TextActivity) {
      var item = activity as Query$Activity$activity$$TextActivity;
      return Comment(
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
    } else if (activity is Query$Activity$activity$$ListActivity) {
      var item = activity as Query$Activity$activity$$ListActivity;
      return Comment(
        header: CommentHeader(
          username: item.user!.name,
          avatarUrl: item.user!.avatar!.large!,
          createdAt: item.createdAt,
        ),
        body: Row(
          children: [
            GestureDetector(
              onTap: () => context.router.push(MediaRoute(id: item.media!.id)),
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
            Text.rich(
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
                        ..onTap = () => context.router
                            .push(MediaRoute(id: item.media!.id))),
                ],
              ),
              // '${item.status} ${item.media!.title!.userPreferred!}',
              overflow: TextOverflow.clip,
            ),
          ],
        ),
        footer: Row(
          children: [
            // IconButton(
            //   onPressed: () {},
            //   icon: Row(
            //     children: [
            //       const Icon(Icons.forum),
            //       Text(item.replyCount.toString())
            //     ],
            //   ),
            // ),
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

    return Text(activity.toJson().toString());
  }
}
