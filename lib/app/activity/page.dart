import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/app/activity/__generated__/activity.data.gql.dart';
import 'package:myaniapp/app/activity/__generated__/activity.req.gql.dart';
import 'package:myaniapp/app/home/__generated__/activities.req.gql.dart';
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
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/list_activity.data.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/message_activity.data.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/text_activity.data.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:myaniapp/utils.dart';

@RoutePage()
class ActivityPage extends ConsumerWidget {
  const ActivityPage({
    super.key,
    @pathParam required this.id,
    this.placeholder,
  });

  final int id;
  final dynamic placeholder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GQLRequest(
      operationRequest: GActivityReq(
        (b) => b
          ..requestId = "activityPage"
          ..vars.id = id,
      ),
      loading: null,
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (response!.graphqlErrors, response.linkException),
          req: response.operationRequest,
        ),
      ),
      builder: (context, response, error, refetch) {
        // dynamic placeholder =
        //     (GoRouterState.of(context).extra as Map?)?["activity"];

        if (response?.loading == true &&
            placeholder is! GListActivity &&
            placeholder is! GTextActivity &&
            placeholder is! GMessageActivity) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        GActivityData? data = response?.data;

        var view = CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: ActivityCard(
                activity: data?.activity ?? placeholder,
                hasTap: false,
              ),
            ),
            SliverAppBar(
              primary: false,
              automaticallyImplyLeading: false,
              pinned: true,
              surfaceTintColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: InkWell(
                  onTap: requiredLogin(
                    ref,
                    "reply",
                    () => MarkdownEditor.show(
                      context,
                      leading: ActivityCard(
                        activity: data?.activity ?? placeholder,
                        hasTap: false,
                        withFooter: false,
                      ),
                      onSave: (text) => client
                          .request(GSaveActivityReplyReq(
                            (b) => b
                              ..vars.activityId =
                                  (placeholder ?? data?.activity)!.id
                              ..vars.text = text,
                          ))
                          .first
                          .then((value) => refetch()),
                    ),
                  ),
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
                        onPressed: () => client
                            .request(GToggleLikeReq(
                              (b) => b
                                ..vars.id = comment.id
                                ..vars.type = GLikeableType.ACTIVITY_REPLY,
                            ))
                            .first,
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
              req: (nextPage) =>
                  (response!.operationRequest as GActivityReq).rebuild(
                (p0) => p0
                  ..vars.page = nextPage
                  ..updateResult = (previous, result) => result?.rebuild(
                        (p0) => p0
                          ..replies.activityReplies.insertAll(
                                0,
                                previous?.replies?.activityReplies?.whereNot(
                                        (p0) =>
                                            result.replies?.activityReplies
                                                ?.contains(p0) ??
                                            false) ??
                                    [],
                              ),
                      ),
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
      this.onDeleted,
      this.withFooter = true})
      : assert(activity is GListActivity ||
            activity is GTextActivity ||
            activity is GMessageActivity);

  final dynamic activity;
  final bool hasTap;
  final VoidCallback? onDeleted;
  final bool withFooter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userId = ref
        .watch(userProvider.select((value) => value.value?.data?.Viewer?.id));

    var footer = withFooter
        ? Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: Row(
              children: [
                IconButton(
                  color: (activity.isLiked ?? false) ? Colors.red : null,
                  onPressed: requiredLogin(
                    ref,
                    "like an activity",
                    () => client
                        .request(
                          GToggleLikeReq(
                            (b) => b
                              ..vars.id = activity.id
                              ..vars.type = GLikeableType.ACTIVITY,
                          ),
                        )
                        .first,
                  ),
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
                Row(
                  children: [
                    const Icon(Icons.chat),
                    Text((activity.replyCount ?? 0).toString())
                  ],
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: requiredLogin(
                    ref,
                    "subscribe to an activity",
                    () => client
                        .request(
                          GToggleActivitySubscriptionReq(
                            (b) => b
                              ..vars.id = activity.id
                              ..vars.subscribe =
                                  !(activity.isSubscribed ?? false),
                          ),
                        )
                        .first,
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
                      "delete an activity.",
                      () => ConfirmationDialog.show(
                        context,
                        "activity",
                        () => client
                            .request(
                              GDeleteActivityReq(
                                (b) => b..vars.id = activity.id,
                              ),
                            )
                            .first
                            .then((value) => onDeleted?.call()),
                        delete: true,
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

    if (activity is GListActivity) {
      var a = activity as GListActivity;
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
                                ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (activity is GTextActivity) {
      // print(activity.text);
      var a = activity as GTextActivity;
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
    } else if (activity is GMessageActivity) {
      var a = activity as GMessageActivity;

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
