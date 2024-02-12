import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/list_activity.data.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/message_activity.data.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/text_activity.data.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/comment/comment.dart';
import 'package:myaniapp/ui/common/comment/like.dart';
import 'package:myaniapp/ui/common/dialogs/delete.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/markdown_editor.dart';
import 'package:myaniapp/ui/routes/activity/__generated__/activity.req.gql.dart';
import 'package:myaniapp/ui/routes/home/activities/__generated__/activities.req.gql.dart';
import 'package:myaniapp/utils/require_login.dart';

class ActivityCard extends ConsumerWidget {
  const ActivityCard({
    super.key,
    required this.activity,
    this.showReplyCount,
    this.onDelete,
    this.inActivity,
  });

  final dynamic activity;
  final bool? showReplyCount;
  final VoidCallback? onDelete;
  final bool? inActivity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    var footer = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          LikeButton(
            id: activity.id,
            type: GLikeableType.ACTIVITY,
            onPressed: requireLogin(
              ref,
              "like",
              () => ref
                  .read(ferryClientProvider)
                  .request(GToggleLikeReq(
                    (b) => b
                      ..vars.id = activity.id
                      ..vars.type = GLikeableType.ACTIVITY,
                  ))
                  .first,
            ),
            icon: Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: (activity.isLiked ?? false) ? Colors.red : null,
                ),
                if ((activity.likeCount ?? 0) > 0)
                  Text(activity.likeCount.toString()),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Row(
              children: [
                const FaIcon(FontAwesomeIcons.solidComment),
                if ((activity.replyCount ?? 0) > 0)
                  Text(activity.replyCount.toString()),
              ],
            ),
          ),
          IconButton(
            onPressed: requireLogin(
              ref,
              "subscribe",
              () => ref
                  .read(ferryClientProvider)
                  .request(GToggleActivitySubscriptionReq(
                    (b) => b
                      ..vars.id = activity.id
                      ..vars.subscribe = !(activity.isSubscribed ?? false),
                  ))
                  .first,
            ),
            icon: Icon(
              activity.isSubscribed == true
                  ? Icons.notifications_active
                  : Icons.notifications,
              color: activity.isSubscribed == true ? Colors.yellow : null,
            ),
          ),
          if (user.value?.id == activity.userId && activity is GTextActivity)
            IconButton(
              onPressed: () => showMarkdownEditor(
                context,
                text: activity.text,
                onSave: (text) {
                  if (text.length > 4) {
                    ref
                        .read(ferryClientProvider)
                        .request(GSaveTextActivityReq(
                          (b) => b
                            ..vars.id = activity.id
                            ..vars.text = text,
                        ))
                        .first;
                  }
                },
              ),
              icon: const Icon(Icons.edit),
            ),
          if (user.value?.id == activity.userId)
            IconButton(
              onPressed: () => showDeleteDialog(context).then((value) {
                if (value == true) {
                  ref
                      .read(ferryClientProvider)
                      .request(GDeleteActivityReq(
                        (b) => b..vars.id = activity.id,
                      ))
                      .first
                      .then((value) => onDelete?.call());
                  // client.value.mutate$DeleteActivity(
                  //   Options$Mutation$DeleteActivity(
                  //     variables: Variables$Mutation$DeleteActivity(
                  //       id: activity.id,
                  //     ),
                  //     onCompleted: (p0, p1) => onDelete?.call(),
                  //   ),
                  // );
                }
              }),
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
        ]
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: e,
                ))
            .toList(),
      ),
    );

    if (activity is GTextActivity) {
      var a = activity as GTextActivity;
      return Comment(
        avatarUrl: a.user?.avatar?.large,
        username: a.user?.name,
        createdAt: a.createdAt,
        onTap: inActivity == true
            ? null
            : () => context.push('/activity/${a.id}').then((value) {
                  if (value == true) onDelete?.call();
                }),
        footer: footer,
        body: Markdown(
          data: a.text!,
        ),
      );
    } else if (activity is GListActivity) {
      var a = activity as GListActivity;
      return Comment(
        avatarUrl: a.user?.avatar?.large,
        username: a.user?.name,
        createdAt: a.createdAt,
        onTap: inActivity == true
            ? null
            : () => context.push('/activity/${a.id}').then((value) {
                  if (value == true) onDelete?.call();
                }),
        footer: footer,
        body: Row(
          children: [
            GestureDetector(
              onTap: () => context.push('/media/${a.media!.id}/overview'),
              child: ClipRRect(
                borderRadius: imageRadius,
                child: CImage(
                  imageUrl: a.media!.coverImage!.extraLarge!,
                  height: 130,
                  width: 85,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: toBeginningOfSentenceCase(a.status),
                    ),
                    if (a.progress != null) TextSpan(text: ' ${a.progress} of'),
                    TextSpan(
                      text: ' ${a.media?.title?.userPreferred}',
                      style: const TextStyle(
                        color: linkColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            context.push('/media/${a.media!.id}/overview'),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      );
    } else if (activity is GMessageActivity) {
      var a = activity as GMessageActivity;
      return Comment(
        avatarUrl: a.messenger?.avatar?.large,
        username: a.messenger?.name,
        createdAt: a.createdAt,
        onTap: inActivity == true
            ? null
            : () => context.push('/activity/${a.id}').then((value) {
                  if (value == true) onDelete?.call();
                }),
        badge:
            a.isPrivate == true ? const CommentBadge(label: 'Private') : null,
        footer: footer,
        body: Markdown(
          data: a.message!,
        ),
      );
    }

    return const SizedBox();
  }
}

class ActivityPopupMenu extends ConsumerWidget {
  const ActivityPopupMenu({
    super.key,
    required this.onDelete,
    required this.userId,
    this.onEdit,
    this.text,
    this.subscribed,
    this.onSubscribe,
  });

  final void Function(String text)? onEdit;
  final void Function() onDelete;
  final void Function()? onSubscribe;
  final String? text;
  final bool? subscribed;
  final int? userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    if (user.value == null) return const SizedBox();

    if (userId != user.value!.id && subscribed == null) return const SizedBox();

    return PopupMenuButton(
      onSelected: (value) {
        switch (value) {
          case 0:
            onSubscribe?.call();
            break;
          case 1:
            showMarkdownEditor(context, onSave: onEdit, text: text);
            break;
          case 2:
            onDelete();
            break;
        }
      },
      itemBuilder: (context) => [
        if (subscribed != null)
          PopupMenuItem(
            value: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(subscribed! ? 'Unsubscribe' : 'Subscribe'),
                Icon(
                  subscribed!
                      ? Icons.notifications_active
                      : Icons.notifications,
                  color: subscribed! ? Colors.yellow : null,
                ),
              ],
            ),
          ),
        if (userId != null && userId == user.value!.id && onEdit != null)
          const PopupMenuItem(
            value: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Edit'),
                Icon(Icons.edit),
              ],
            ),
          ),
        if (userId != null && userId == user.value!.id)
          const PopupMenuItem(
            value: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delete'),
                Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
