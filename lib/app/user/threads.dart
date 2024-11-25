import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/comment.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/user/thread.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class UserThreadsScreen extends HookWidget {
  const UserThreadsScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      userThreadsQuery,
      variables: Variables$Query$UserThreads(userId: id).toJson(),
      parseData: Query$UserThreads.fromJson,
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () => ThreadsView(
        data: snapshot.parsedData!,
        fetchMore: fetchMore,
        request: snapshot.request!,
      ),
    );
  }
}

class ThreadsView extends StatefulWidget {
  const ThreadsView({
    super.key,
    required this.data,
    required this.request,
    required this.fetchMore,
  });

  final Query$UserThreads data;
  final GQLRequest request;
  final QueryHookFetchMore fetchMore;

  @override
  State<ThreadsView> createState() => _ThreadsViewState();
}

class _ThreadsViewState extends State<ThreadsView> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: selected == 0
          ? widget.data.thread!.pageInfo!
          : widget.data.comments!.pageInfo!,
      req: (nextPage) {
        var vars =
            Variables$Query$UserThreads.fromJson(widget.request.variables);

        if (selected == 0) {
          return widget.fetchMore(
              variables: vars.copyWith(threadPage: nextPage).toJson(),
              mergeResults: defaultMergeResults("thread.threads"));
        }
        return widget.fetchMore(
            variables: vars.copyWith(commentsPage: nextPage).toJson(),
            mergeResults: defaultMergeResults("comment.threadComments"));
      },
      // depth: ,
      // req: (nextPage) => widget.req.rebuild((b) {
      //   if (selected == 0) {
      //     b.vars.threadPage = nextPage;
      //   } else {
      //     b.vars.commentsPage = nextPage;
      //   }

      //   b.updateResult = (prev, result) => result!.rebuild((p0) => p0
      //     ..thread.threads.insertAll(0, prev?.thread?.threads ?? [])
      //     ..comments
      //         .threadComments
      //         .insertAll(0, prev?.comments?.threadComments ?? []));

      //   return b;
      // }),
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: SliverToBoxAdapter(
              child: SegmentedButton(
                selected: {selected},
                onSelectionChanged: (p0) => setState(() => selected = p0.first),
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text(
                      "Posts",
                    ),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text(
                      "Comments",
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (selected == 0)
            SliverList.builder(
              itemBuilder: (context, index) {
                var thread = widget.data.thread!.threads![index]!;

                return ThreadCard(thread: thread);
              },
              itemCount: widget.data.thread!.threads!.length,
            )
          else
            SliverList.builder(
              itemBuilder: (context, index) {
                var thread = widget.data.comments!.threadComments![index]!;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () => context.pushRoute(ThreadRoute(
                          id: thread.threadId!,
                        )),
                        child: Text(
                          thread.thread!.title!,
                          style: context.theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    Comment(
                      avatar: thread.user!.avatar!.large!,
                      username: thread.user!.name,
                      createdAt: thread.createdAt,
                      body: MarkdownWidget.body(data: thread.comment!),
                      collapsible: true,
                    ),
                  ],
                );
              },
              itemCount: widget.data.comments!.threadComments!.length,
            )
        ],
      ),
    );
  }
}
