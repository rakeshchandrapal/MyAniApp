import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/activity/activity.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/home/activities/activities.graphql.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/comment.dart';
import 'package:myaniapp/ui/common/dialogs/delete.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/markdown_editor.dart';
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
    if (activity is Fragment$TextActivity) {
      var a = activity as Fragment$TextActivity;
      return Comment(
        avatarUrl: a.user?.avatar?.large,
        username: a.user?.name,
        createdAt: a.createdAt,
        onTap: inActivity == true
            ? null
            : () => context.push('/activity/${a.id}').then((value) {
                  if (value == true) onDelete?.call();
                }),
        leading: Row(
          children: [
            IconButton(
              onPressed: requireLogin(
                ref,
                'like',
                () => client.value.mutate$ToggleLike(
                  Options$Mutation$ToggleLike(
                    variables: Variables$Mutation$ToggleLike(
                      id: a.id,
                      type: Enum$LikeableType.ACTIVITY,
                    ),
                  ),
                ),
              ),
              icon: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: (a.isLiked ?? false) ? Colors.red : null,
                  ),
                  if (a.likeCount > 0) Text(a.likeCount.toString()),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            if (showReplyCount == true)
              Row(
                children: [
                  Icon(
                    Icons.forum,
                    color: Colors.grey[400],
                  ),
                  if (a.replyCount > 0) Text(a.replyCount.toString()),
                ],
              ),
            ActivityPopupMenu(
              subscribed: a.isSubscribed ?? false,
              text: a.text,
              userId: a.userId,
              onSubscribe: () => client.value.mutate$ToggleActivitySubscription(
                Options$Mutation$ToggleActivitySubscription(
                  variables: Variables$Mutation$ToggleActivitySubscription(
                    id: a.id,
                    subscribe: !(a.isSubscribed ?? false),
                  ),
                  onError: (error) => logger.e(error),
                ),
              ),
              onDelete: () => showDeleteDialog(context).then((value) {
                if (value == true) {
                  client.value.mutate$DeleteActivity(
                    Options$Mutation$DeleteActivity(
                      variables: Variables$Mutation$DeleteActivity(
                        id: a.id,
                      ),
                      onCompleted: (p0, p1) => onDelete?.call(),
                    ),
                  );
                }
              }),
              onEdit: (text) {
                if (text.length > 4) {
                  client.value.mutate$SaveTextActivity(
                    Options$Mutation$SaveTextActivity(
                      variables: Variables$Mutation$SaveTextActivity(
                        id: a.id,
                        text: text,
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
        body: Markdown(
          data: a.text!,
          selectable: false,
        ),
      );
    } else if (activity is Fragment$ListActivity) {
      var a = activity as Fragment$ListActivity;
      return Comment(
        avatarUrl: a.user?.avatar?.large,
        username: a.user?.name,
        createdAt: a.createdAt,
        onTap: inActivity == true
            ? null
            : () => context.push('/activity/${a.id}').then((value) {
                  if (value == true) onDelete?.call();
                }),
        leading: Row(
          children: [
            IconButton(
              onPressed: requireLogin(
                ref,
                'like',
                () => client.value.mutate$ToggleLike(
                  Options$Mutation$ToggleLike(
                    variables: Variables$Mutation$ToggleLike(
                      id: a.id,
                      type: Enum$LikeableType.ACTIVITY,
                    ),
                  ),
                ),
              ),
              icon: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: (a.isLiked ?? false) ? Colors.red : null,
                  ),
                  if (a.likeCount > 0) Text(a.likeCount.toString()),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            if (showReplyCount == true)
              Row(
                children: [
                  Icon(
                    Icons.forum,
                    color: Colors.grey[400],
                  ),
                  if (a.replyCount > 0) Text(a.replyCount.toString()),
                ],
              ),
            ActivityPopupMenu(
              subscribed: a.isSubscribed ?? false,
              userId: a.userId,
              onSubscribe: () => client.value.mutate$ToggleActivitySubscription(
                Options$Mutation$ToggleActivitySubscription(
                  variables: Variables$Mutation$ToggleActivitySubscription(
                    id: a.id,
                    subscribe: !(a.isSubscribed ?? false),
                  ),
                  onError: (error) => logger.e(error),
                ),
              ),
              onDelete: () => showDeleteDialog(context).then((value) {
                if (value == true) {
                  client.value.mutate$DeleteActivity(
                    Options$Mutation$DeleteActivity(
                      variables: Variables$Mutation$DeleteActivity(
                        id: a.id,
                      ),
                      onCompleted: (p0, p1) => onDelete?.call(),
                    ),
                  );
                }
              }),
            ),
          ],
        ),
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
    } else if (activity is Fragment$MessageActivity) {
      var a = activity as Fragment$MessageActivity;
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
        leading: Row(
          children: [
            IconButton(
              onPressed: requireLogin(
                ref,
                'like',
                () => client.value.mutate$ToggleLike(
                  Options$Mutation$ToggleLike(
                    variables: Variables$Mutation$ToggleLike(
                      id: a.id,
                      type: Enum$LikeableType.ACTIVITY,
                    ),
                  ),
                ),
              ),
              icon: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: (a.isLiked ?? false) ? Colors.red : null,
                  ),
                  if (a.likeCount > 0) Text(a.likeCount.toString()),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            if (showReplyCount == true)
              Row(
                children: [
                  Icon(
                    Icons.forum,
                    color: Colors.grey[400],
                  ),
                  if (a.replyCount > 0) Text(a.replyCount.toString()),
                ],
              ),
            ActivityPopupMenu(
              subscribed: a.isSubscribed ?? false,
              userId: a.userId,
              text: a.message,
              onSubscribe: () => client.value.mutate$ToggleActivitySubscription(
                Options$Mutation$ToggleActivitySubscription(
                  variables: Variables$Mutation$ToggleActivitySubscription(
                    id: a.id,
                    subscribe: !(a.isSubscribed ?? false),
                  ),
                  onError: (error) => logger.e(error),
                ),
              ),
              onDelete: () => showDeleteDialog(context).then((value) {
                if (value == true) {
                  client.value.mutate$DeleteActivity(
                    Options$Mutation$DeleteActivity(
                      variables: Variables$Mutation$DeleteActivity(
                        id: a.id,
                      ),
                      onCompleted: (p0, p1) => onDelete?.call(),
                    ),
                  );
                }
              }),
              onEdit: (text) {
                if (text.length > 4) {
                  client.value.mutate$SaveMessageActivity(
                    Options$Mutation$SaveMessageActivity(
                      variables: Variables$Mutation$SaveMessageActivity(
                        id: a.id,
                        message: text,
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
        body: Markdown(
          data: a.message!,
          selectable: false,
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
