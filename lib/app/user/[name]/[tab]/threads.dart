import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/user/__generated__/thread.data.gql.dart';
import 'package:myaniapp/app/user/__generated__/thread.req.gql.dart';
import 'package:myaniapp/common/comment.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/widget.dart';

class UserThreadsPage extends StatefulWidget {
  const UserThreadsPage({super.key, required this.id});

  final int id;

  @override
  State<UserThreadsPage> createState() => _UserThreadsPageState();
}

class _UserThreadsPageState extends State<UserThreadsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GQLRequest(
      operationRequest: GUserThreadsReq(
        (b) => b
          ..requestId = "userThreads${widget.id}"
          ..vars.userId = widget.id,
      ),
      builder: (context, response, error, refetch) => ThreadsView(
        data: response!.data!,
        req: response.operationRequest as GUserThreadsReq,
      ),
    );
  }
}

class ThreadsView extends StatefulWidget {
  const ThreadsView({super.key, required this.data, required this.req});

  final GUserThreadsData data;
  final GUserThreadsReq req;

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
      // depth: ,
      req: (nextPage) => widget.req.rebuild((b) {
        if (selected == 0) {
          b.vars.threadPage = nextPage;
        } else {
          b.vars.commentsPage = nextPage;
        }

        b.updateResult = (prev, result) => result!.rebuild((p0) => p0
          ..thread.threads.insertAll(0, prev?.thread?.threads ?? [])
          ..comments
              .threadComments
              .insertAll(0, prev?.comments?.threadComments ?? []));

        return b;
      }),
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
                        onTap: () =>
                            context.push("/forum/thread/${thread.thread!.id}"),
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
