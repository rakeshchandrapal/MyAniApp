import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/thread/comments.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/thread/thread.graphql.dart';
import 'package:myaniapp/ui/common/comment.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';

@RoutePage()
class ThreadPage extends HookWidget {
  const ThreadPage(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    var threadHook = useQuery$Thread(
      Options$Query$Thread(
        variables: Variables$Query$Thread(id: id),
      ),
    );

    var commentsHook = useQuery$Comments(
      Options$Query$Comments(
        variables: Variables$Query$Comments(threadId: id),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: Graphql(
        hook: threadHook,
        builder: (thread) => Graphql(
          hook: commentsHook,
          builder: (comments) => Pagination(
            hook: commentsHook,
            pageInfo: comments.Page!.pageInfo!,
            opts: FetchMoreOptions$Query$Comments(
              variables: Variables$Query$Comments(
                page: (comments.Page!.pageInfo!.currentPage ?? 1) + 1,
              ),
              updateQuery: (previousResultData, fetchMoreResultData) {
                var list = [
                  ...previousResultData!['Page']!['threadComments'],
                  ...fetchMoreResultData!['Page']!['threadComments'],
                ];
                fetchMoreResultData['Page']!['threadComments'] = list;
                return fetchMoreResultData;
              },
            ),
            child: ScrollToTop(
              builder: (controller) => CustomScrollView(
                controller: controller,
                slivers: [
                  SliverToBoxAdapter(
                    child: Top(
                      thread: thread.Thread!,
                    ),
                  ),
                  Comments(
                    comments: comments.Page!.threadComments!
                        .whereType<Query$Comments$Page$threadComments>()
                        .toList(),
                  ),
                  if (commentsHook.result.isLoading)
                    const SliverToBoxAdapter(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Comments extends StatelessWidget {
  const Comments({
    super.key,
    required this.comments,
  });

  final List<Query$Comments$Page$threadComments> comments;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var item = comments[index];

          return ThreadComment(item: item);
        },
        childCount: comments.length,
      ),
    );
  }
}

class Top extends StatelessWidget {
  const Top({
    super.key,
    required this.thread,
  });

  final Query$Thread$Thread thread;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              thread.title!,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Comment(
          header: CommentHeader(
            username: thread.user!.name,
            avatarUrl: thread.user!.avatar!.large!,
            createdAt: thread.createdAt,
          ),
          body: Markdown(
            data: thread.body!,
          ),
          footer: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: 10,
                spacing: 10,
                children: [
                  for (var category in thread.categories!)
                    Chip(
                      label: Text(category!.name),
                      labelPadding: EdgeInsets.zero,
                      labelStyle: Theme.of(context).textTheme.labelSmall,
                    ),
                  for (var media in thread.mediaCategories!)
                    Chip(
                      label: Text(media!.title!.userPreferred!),
                      labelPadding: EdgeInsets.zero,
                      labelStyle: Theme.of(context).textTheme.labelSmall,
                    ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '${thread.replyCount ?? 0} Replies',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class ThreadComment extends StatelessWidget {
  const ThreadComment({
    super.key,
    required this.item,
    this.isReply = false,
  });

  final bool isReply;
  final Query$Comments$Page$threadComments item;

  @override
  Widget build(BuildContext context) {
    List<Query$Comments$Page$threadComments>? replies;

    try {
      replies = item.childComments
          ?.map(
              (comment) => Query$Comments$Page$threadComments.fromJson(comment))
          .cast<Query$Comments$Page$threadComments>()
          .toList() as List<Query$Comments$Page$threadComments>?;
    } catch (err) {}

    return Comment(
      isReply: isReply,
      header: CommentHeader(
        avatarUrl: item.user!.avatar!.large!,
        username: item.user!.name,
        createdAt: item.createdAt,
      ),
      body: Markdown(data: item.comment!),
      replies: replies?.isNotEmpty == true
          ? [
              for (var comment in replies!)
                ThreadComment(
                  item: comment,
                  isReply: true,
                )
            ]
          : null,
    );
  }
}
