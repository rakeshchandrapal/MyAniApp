import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/common/activity_card.dart';
import 'package:myaniapp/common/comment.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/markdown_editor.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/list_activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/message_activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/text_activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/home_activities.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/routes.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';

class ActivityScreen extends HookConsumerWidget {
  const ActivityScreen({
    super.key,
    required this.id,
    this.placeholder,
  });

  final int id;
  final dynamic placeholder;

  void reply(WidgetRef ref, BuildContext context, dynamic activity,
      QueryRefetch refetch) {
    requiredLogin(
      ref,
      "reply",
      () => MarkdownEditor.show(
        context,
        leading: ActivityCard(
          activity: activity,
          hasTap: false,
          withFooter: false,
        ),
        onSave: (text) => c
            .query(GQLRequest(
              saveActivityReplyQuery,
              variables: Variables$Mutation$SaveActivityReply(
                text: text,
                activityId: activity.id,
              ).toJson(),
            ))
            .last
            .then(
              (value) => refetch(),
            ),
      ),
    )();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(activityQuery,
        variables: Variables$Query$Activity(id: id).toJson(),
        parseData: Query$Activity.fromJson,
        mergeResults: defaultMergeResults("replies.activityReplies")));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      loading: null,
      error: Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (snapshot.errors, snapshot.linkError),
          refetch: refetch,
        ),
      ),
      builder: () {
        // dynamic placeholder =
        //     (GoRouterState.of(context).extra as Map?)?["activity"];

        if (snapshot.loading == true &&
            placeholder is! Fragment$ListActivity &&
            placeholder is! Fragment$TextActivity &&
            placeholder is! Fragment$MessageActivity) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        var data = snapshot.parsedData;

        var view = CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: ActivityCard(
                activity: data?.activity ?? placeholder,
                hasTap: false,
                onReply: () => reply(
                    ref, context, (data?.activity ?? placeholder), refetch),
              ),
            ),
            SliverAppBar(
              primary: false,
              automaticallyImplyLeading: false,
              pinned: true,
              surfaceTintColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: InkWell(
                  onTap: () => reply(
                      ref, context, (data?.activity ?? placeholder), refetch),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color:
                              context.theme.colorScheme.surfaceContainerHighest,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Post a reply",
                        style: context.theme.textTheme.bodyLarge
                            ?.copyWith(color: context.theme.hintColor),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Show(
              when: data != null,
              fallback: const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
              child: () => SliverList.builder(
                itemBuilder: (context, index) {
                  var comment = data.replies!.activityReplies![index]!;

                  return Comment(
                    collapsible: true,
                    avatar: comment.user!.avatar!.large!,
                    username: comment.user!.name,
                    createdAt: comment.createdAt,
                    onAvatarTap: () => context.push(
                        Routes.user(comment.user!.name),
                        extra: {"placeholder": comment.user}),
                    body: MarkdownWidget.body(
                      data: comment.text!,
                      selectable: true,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                    footer: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: IconButton(
                        onPressed: () => c
                            .query(GQLRequest(
                              toggleLikeQuery,
                              variables: Variables$Mutation$ToggleLike(
                                id: comment.id,
                                type: Enum$LikeableType.ACTIVITY_REPLY,
                              ).toJson(),
                            ))
                            .last
                            .then(
                              (value) => refetch(FetchPolicy.cacheFirst),
                            ),
                        icon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.favorite),
                            const SizedBox(width: 2),
                            Text(comment.likeCount.abbreviate())
                          ],
                        ),
                        color: comment.isLiked == true ? Colors.red : null,
                      ),
                    ),
                  );
                },
                itemCount: data!.replies!.activityReplies!.length,
              ),
            )
          ],
        );

        return Scaffold(
          body: Show(
            when: data != null,
            fallback: view,
            child: () => GraphqlPagination(
              pageInfo: data!.replies!.pageInfo!,
              req: (nextPage) => fetchMore(
                variables: Variables$Query$Activity.fromJson(
                        snapshot.request!.variables)
                    .copyWith(page: nextPage)
                    .toJson(),
              ),
              child: view,
            ),
          ),
        );
      },
    );
  }
}
