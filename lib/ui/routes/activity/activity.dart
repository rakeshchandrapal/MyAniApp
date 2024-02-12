import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
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
import 'package:myaniapp/ui/routes/activity/__generated__/activity.req.gql.dart';
import 'package:myaniapp/ui/routes/home/activities/__generated__/activities.req.gql.dart';
import 'package:myaniapp/utils/require_login.dart';

class ActivityPage extends ConsumerWidget {
  ActivityPage({super.key, required this.id});

  final int id;
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return GQLRequest(
      operationRequest: GActivityReq((b) => b
        ..requestId = "activity"
        ..vars.id = id),
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (response!.graphqlErrors, response.linkException),
        ),
      ),
      builder: (context, response, error, refetch) => GraphqlPagination(
        req: (nextPage) => (response.operationRequest as GActivityReq).rebuild(
          (b) => b
            ..vars.page = nextPage
            ..updateResult = (previous, result) => result?.rebuild((p0) => p0
              ..replies.activityReplies.insertAll(
                  0,
                  previous?.replies?.activityReplies?.whereNot((p0) =>
                          result.replies?.activityReplies?.contains(p0) ??
                          false) ??
                      [])),
        ),
        pageInfo: response!.data!.replies!.pageInfo!,
        child: RefreshIndicator.adaptive(
          onRefresh: refetch,
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
                        ref
                            .watch(ferryClientProvider)
                            .request(GSaveActivityReplyReq(
                              (b) => b
                                ..vars.activityId = id
                                ..vars.text = text,
                            ))
                            .first
                            .then((value) => refetch());
                      }
                    },
                  ),
                ),
                child: const Icon(Icons.reply),
              ),
            ),
            body: CustomScrollView(
              controller: _controller,
              slivers: [
                SliverToBoxAdapter(
                  child: ActivityCard(
                    activity: response.data!.activity!,
                    onDelete: () => context.pop(true),
                    inActivity: true,
                  ),
                ),
                SliverList.builder(
                  itemBuilder: (context, index) {
                    var reply =
                        response.data!.replies!.activityReplies![index]!;

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
                            type: GLikeableType.ACTIVITY_REPLY,
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
                              () => ref
                                  .read(ferryClientProvider)
                                  .request(GToggleLikeReq(
                                    (b) => b
                                      ..vars.id = reply.id
                                      ..vars.type =
                                          GLikeableType.ACTIVITY_REPLY,
                                  ))
                                  .first
                                  .then((value) => refetch()),
                            ),
                          ),
                          if (user.value?.id == reply.userId)
                            IconButton(
                              onPressed: () => showMarkdownEditor(
                                context,
                                text: reply.text,
                                onSave: (text) {
                                  if (text.length > 2) {
                                    ref
                                        .read(ferryClientProvider)
                                        .request(GSaveActivityReplyReq(
                                          (b) => b
                                            ..vars.id = reply.id
                                            ..vars.text = text,
                                        ))
                                        .first
                                        .then((value) => refetch());
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
                                    ref
                                        .read(ferryClientProvider)
                                        .request(GDeleteActivityReplyReq(
                                          (b) => b..vars.id = reply.id,
                                        ))
                                        .first
                                        .then((value) => refetch());
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
                  itemCount: response.data!.replies!.activityReplies!.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
