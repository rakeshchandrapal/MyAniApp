import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/comment.dart';
import 'package:myaniapp/common/dialogs/confirmation.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/markdown_editor.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/activity/activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/app/home/activities.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/list_activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/message_activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/text_activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class ActivityPage extends HookConsumerWidget {
  const ActivityPage({
    super.key,
    @pathParam required this.id,
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
                    onAvatarTap: () => context.pushRoute(
                      UserRoute(
                          name: comment.user!.name, placeholder: comment.user),
                    ),
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

class ActivityCard extends ConsumerWidget {
  const ActivityCard(
      {super.key,
      this.activity,
      this.hasTap = true,
      // this.onDeleted,
      this.refetch,
      this.withFooter = true,
      this.onReply})
      : assert(activity is Fragment$ListActivity ||
            activity is Fragment$TextActivity ||
            activity is Fragment$MessageActivity);

  final dynamic activity;
  final bool hasTap;
  final QueryRefetch? refetch;
  final bool withFooter;
  final VoidCallback? onReply;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userId = ref.watch(
        userProvider.select((value) => value.value?.parsedData?.Viewer?.id));

    var path = 'idk';

    try {
      path = context.routeData.path;
    } catch (error) {}

    var footer = withFooter
        ? Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: Row(
              children: [
                IconButton(
                  color: (activity.isLiked ?? false) ? Colors.red : null,
                  // onPressed: () {},
                  onPressed: requiredLogin(
                      ref,
                      "like an activity",
                      () => c
                          .query(
                            GQLRequest(
                              toggleLikeQuery,
                              variables: Variables$Mutation$ToggleLike(
                                      id: activity.id,
                                      type: Enum$LikeableType.ACTIVITY)
                                  .toJson(),
                            ),
                          )
                          .last
                          .then((_) => refetch?.call(FetchPolicy.cacheOnly))),
                  icon: Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                      ),
                      Text(
                        (activity.likeCount as int? ?? 0).abbreviate(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: hasTap
                      ? () => context.pushRoute(
                          ActivityRoute(id: activity.id, placeholder: activity))
                      : onReply,
                  icon: Row(
                    children: [
                      const Icon(Icons.chat),
                      Text((activity.replyCount ?? 0).toString())
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: requiredLogin(
                    ref,
                    "subscribe to an activity",
                    () => c
                        .query(
                          GQLRequest(
                            toggleActivitySubscriptionQuery,
                            variables:
                                Variables$Mutation$ToggleActivitySubscription(
                              id: activity.id,
                              subscribe: !(activity.isSubscribed ?? false),
                            ).toJson(),
                          ),
                        )
                        .last
                        .then((_) => refetch?.call(FetchPolicy.cacheOnly)),
                  ),
                  icon: Icon(
                    activity.isSubscribed == true
                        ? Icons.notifications_active
                        : Icons.notifications,
                    color:
                        (activity.isSubscribed ?? false) ? Colors.yellow : null,
                  ),
                ),
                if (userId == activity.userId)
                  IconButton(
                    onPressed: requiredLogin(
                      ref,
                      "delete an activity",
                      () => ConfirmationDialog.show(
                        context,
                        "activity",
                        () => c
                            .query(
                              GQLRequest(
                                deleteActivityQuery,
                                variables: Variables$Mutation$DeleteActivity(
                                        id: activity.id)
                                    .toJson(),
                              ),
                            )
                            .last
                            .then((_) => refetch?.call()),
                      ),
                    ),
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  )
              ],
            ),
          )
        : null;

    if (activity is Fragment$ListActivity) {
      var a = activity as Fragment$ListActivity;
      return Comment(
        collapsible: false,
        onAvatarTap: () => context.pushRoute(
          UserRoute(name: a.user!.name, placeholder: a.user),
        ),
        onTap: hasTap
            ? () => context.pushRoute(ActivityRoute(id: a.id, placeholder: a))
            : null,
        avatar: a.user!.avatar!.large!,
        username: a.user!.name,
        createdAt: a.createdAt,
        footer: footer,
        body: Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
          child: Row(
            children: [
              InkWellImage(
                borderRadius: imageRadius,
                onTap: () => context.pushRoute(
                  MediaRoute(id: a.media!.id, placeholder: a.media),
                ),
                onLongPress: () => MediaSheet.show(context, a.media!),
                child: SizedBox(
                  height: 100,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: imageRadius,
                    child: BlurImage(
                      enabled: a.media!.isAdult ?? false,
                      child: CachedImage(
                        a.media!.coverImage!.extraLarge!,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: toBeginningOfSentenceCase(a.status!)),
                      if (a.progress != null)
                        TextSpan(text: " ${a.progress!} of"),
                      TextSpan(
                        text: " ${a.media!.title!.userPreferred}",
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.pushRoute(
                                MediaRoute(
                                    id: a.media!.id, placeholder: a.media),
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (activity is Fragment$TextActivity) {
      // print(activity.text);
      var a = activity as Fragment$TextActivity;
      return Comment(
        collapsible: false,
        onTap: hasTap
            ? () => context.pushRoute(ActivityRoute(id: a.id, placeholder: a))
            : null,
        onAvatarTap: () => context.pushRoute(
          UserRoute(name: a.user!.name, placeholder: a.user),
        ),
        avatar: a.user!.avatar!.large!,
        username: a.user!.name,
        createdAt: a.createdAt,
        footer: footer,
        body: MarkdownWidget.body(
          data: a.text!,
          selectable: true,
        ),
      );
    } else if (activity is Fragment$MessageActivity) {
      var a = activity as Fragment$MessageActivity;

      return Comment(
        avatar: a.messenger!.avatar!.large!,
        username: a.messenger!.name,
        createdAt: a.createdAt,
        body: MarkdownWidget.body(
          data: a.message!,
          selectable: true,
        ),
        footer: footer,
        collapsible: false,
        onTap: hasTap
            ? () => context.pushRoute(ActivityRoute(id: a.id, placeholder: a))
            : null,
        onAvatarTap: () => context.pushRoute(
          UserRoute(name: a.messenger!.name, placeholder: a.messenger),
        ),
      );
    }

    return Text(activity.toString());
  }
}
