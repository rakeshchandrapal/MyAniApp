import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/activity/activity.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/home/activities/activities.graphql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/activity_card.dart';
import 'package:myaniapp/ui/common/comment/comment.dart';
import 'package:myaniapp/ui/common/comment/like.dart';
import 'package:myaniapp/ui/common/dialogs/delete.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/hidden_floating_action_button.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/markdown_editor.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/utils/require_login.dart';

class ActivityPage extends ConsumerWidget {
  ActivityPage({super.key, required this.id});

  final int id;
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return Query$Activity$Widget(
      options: Options$Query$Activity(
        variables: Variables$Query$Activity(id: id),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.parsedData == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else if (result.hasException) {
          return Scaffold(
            appBar: AppBar(),
            body: GraphqlError(exception: result.exception!),
          );
        }

        return Pagination(
          fetchMore: fetchMore!,
          opts: FetchMoreOptions$Query$Activity(
            updateQuery: (previousResultData, fetchMoreResultData) {
              var list = [
                ...previousResultData!['replies']['activityReplies'],
                ...fetchMoreResultData!['replies']['activityReplies'],
              ];

              fetchMoreResultData['replies']['activityReplies'] = list;

              return fetchMoreResultData;
            },
            variables: Variables$Query$Activity(
              page:
                  (result.parsedData!.replies!.pageInfo!.currentPage ?? 1) + 1,
            ),
          ),
          pageInfo: result.parsedData!.replies!.pageInfo!,
          child: Scaffold(
            appBar: AppBar(),
            floatingActionButton: HiddenFloatingActionButton(
              scrollController: _controller,
              child: FloatingActionButton(
                onPressed: requireLogin(
                  ref,
                  'reply',
                  () => showMarkdownEditor(
                    context,
                    onSave: (text) {
                      if (text.isNotEmpty) {
                        client.value.mutate$SaveActivityReply(
                          Options$Mutation$SaveActivityReply(
                            variables: Variables$Mutation$SaveActivityReply(
                              activityId: id,
                              text: text,
                            ),
                            onCompleted: (p0, p1) => refetch!(),
                          ),
                        );
                      }
                    },
                  ),
                ),
                child: const Icon(Icons.reply),
              ),
            ),
            body: RefreshIndicator.adaptive(
              onRefresh: refetch!,
              child: CustomScrollView(
                controller: _controller,
                slivers: [
                  SliverToBoxAdapter(
                    child: ActivityCard(
                      activity: result.parsedData!.activity!,
                      onDelete: () => context.pop(true),
                      inActivity: true,
                    ),
                  ),
                  SliverList.builder(
                    itemBuilder: (context, index) {
                      var reply =
                          result.parsedData!.replies!.activityReplies![index]!;

                      return Comment(
                        body: Markdown(
                          data: reply.text!,
                        ),
                        avatarUrl: reply.user?.avatar?.large,
                        createdAt: reply.createdAt,
                        username: reply.user?.name,
                        footer: Row(
                          children: [
                            LikeButton(
                              id: reply.id,
                              type: Enum$LikeableType.ACTIVITY_REPLY,
                              icon: Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: (reply.isLiked ?? false)
                                        ? Colors.red
                                        : null,
                                  ),
                                  if (reply.likeCount > 0)
                                    Text(reply.likeCount.toString()),
                                ],
                              ),
                              onPressed: requireLogin(
                                ref,
                                'like',
                                () => client.value.mutate$ToggleLike(
                                  Options$Mutation$ToggleLike(
                                    variables: Variables$Mutation$ToggleLike(
                                      id: reply.id,
                                      type: Enum$LikeableType.ACTIVITY_REPLY,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (user.value?.id == reply.userId)
                              IconButton(
                                onPressed: () => showMarkdownEditor(
                                  context,
                                  text: reply.text,
                                  onSave: (text) {
                                    if (text.length > 2) {
                                      client.value.mutate$SaveActivityReply(
                                        Options$Mutation$SaveActivityReply(
                                          variables:
                                              Variables$Mutation$SaveActivityReply(
                                            id: reply.id,
                                            text: text,
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                                icon: const Icon(Icons.edit),
                              ),
                            if (user.value?.id == reply.userId)
                              IconButton(
                                onPressed: () => showDeleteDialog(context).then(
                                  (value) {
                                    if (value == true) {
                                      client.value.mutate$DeleteActivityReply(
                                        Options$Mutation$DeleteActivityReply(
                                          variables:
                                              Variables$Mutation$DeleteActivityReply(
                                            id: reply.id,
                                          ),
                                          onCompleted: (p0, p1) => refetch(),
                                        ),
                                      );
                                    }
                                  },
                                ),
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                    itemCount:
                        result.parsedData!.replies!.activityReplies!.length,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
