import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/comment.dart';
import 'package:myaniapp/common/dialogs/confirmation.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/list_activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/message_activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/fragments/text_activity.graphql.dart';
import 'package:myaniapp/graphql/__gen/home_activities.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/routes.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';

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
                      ? () => context.push(Routes.activity(activity.id),
                          extra: {"placeholder": activity})
                      // ? () => context.pushRoute(
                      //     ActivityRoute(id: activity.id, placeholder: activity))
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
        onAvatarTap: () => context
            .push(Routes.user(a.user!.name), extra: {"placeholder": a.user}),
        onTap: hasTap
            ? () =>
                context.push(Routes.activity(a.id), extra: {"placeholder": a})
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
                onTap: () => context.push(Routes.media(a.media!.id),
                    extra: {"placeholder": a.media}),
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
                          ..onTap = () => context.push(
                              Routes.media(a.media!.id),
                              extra: {"placeholder": a.media}),
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
            ? () =>
                context.push(Routes.activity(a.id), extra: {"placeholder": a})
            : null,
        onAvatarTap: () => context
            .push(Routes.user(a.user!.name), extra: {"placeholder": a.user}),
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
            ? () =>
                context.push(Routes.activity(a.id), extra: {"placeholder": a})
            : null,
        onAvatarTap: () => context.push(Routes.user(a.messenger!.name),
            extra: {"placeholder": a.messenger}),
      );
    }

    return Text(activity.toString());
  }
}
