import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/comment/comment.dart';
import 'package:myaniapp/ui/common/comment/like.dart';
import 'package:myaniapp/ui/common/dialogs/delete.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/markdown_editor.dart';
import 'package:myaniapp/ui/routes/home/activities/__generated__/activities.req.gql.dart';
import 'package:myaniapp/ui/routes/thread/__generated__/thread.req.gql.dart';
import 'package:myaniapp/ui/routes/thread/comment/__generated__/comment.data.gql.dart';
import 'package:myaniapp/ui/routes/thread/comment/__generated__/comment.req.gql.dart';
import 'package:myaniapp/utils/require_login.dart';

class ThreadCommentPage extends StatelessWidget {
  const ThreadCommentPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GQLRequest(
        operationRequest: GCommentReq(
          (b) => b..vars.id = id,
        ),
        builder: (context, response, error, refetch) => ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  text: "Viewing a comment. View the entire thread?",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => context.push(
                        '/thread/${response!.data!.ThreadComment!.first!.threadId}'),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: linkColor),
                ),
              ),
            ),
            _ThreadComment(
              comment: response!.data!.ThreadComment!.first!,
              refetch: refetch,
            ),
          ],
        ),
      ),
    );
  }
}

class _ThreadComment extends ConsumerWidget {
  const _ThreadComment({
    super.key,
    required this.comment,
    required this.refetch,
    this.isReply,
  });

  final GCommentData_ThreadComment comment;
  final void Function() refetch;
  final bool? isReply;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    List<GCommentData_ThreadComment> replies = [];

    try {
      if (comment.childComments != null) {
        for (var reply in comment.childComments!.asList) {
          replies.add(GCommentData_ThreadComment.fromJson(reply)!);
        }
      }
    } catch (err) {}

    return Comment(
      body: Markdown(data: comment.comment!),
      createdAt: comment.createdAt,
      avatarUrl: comment.user?.avatar?.large,
      username: comment.user?.name,
      isReply: isReply ?? false,
      footer: Row(
        children: [
          LikeButton(
            id: comment.id,
            type: GLikeableType.THREAD_COMMENT,
            icon: Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: (comment.isLiked ?? false) ? Colors.red : null,
                ),
                if (comment.likeCount > 0) Text(comment.likeCount.toString()),
              ],
            ),
            onPressed: requireLogin(
              ref,
              'like',
              () => ref
                  .read(ferryClientProvider)
                  .request(GToggleLikeReq(
                    (b) => b
                      ..vars.id = comment.id
                      ..vars.type = GLikeableType.THREAD_COMMENT,
                  ))
                  .first,
            ),
          ),
          IconButton(
            onPressed: requireLogin(
              ref,
              'reply',
              () => showMarkdownEditor(
                context,
                onSave: (text) {
                  if (text.length > 2) {
                    ref
                        .read(ferryClientProvider)
                        .request(GSaveCommentReq(
                          (b) => b
                            ..vars.comment = text
                            ..vars.parentCommentId = comment.id,
                        ))
                        .first
                        .then((value) => refetch());
                  }
                },
              ),
            ),
            icon: const Icon(Icons.reply),
          ),
          if (comment.user != null && comment.user!.id == user.value?.id)
            IconButton(
              onPressed: () => showDeleteDialog(context).then((value) {
                if (value == true) {
                  ref
                      .read(ferryClientProvider)
                      .request(GDeleteCommentReq(
                        (b) => b..vars.id = comment.id,
                      ))
                      .first
                      .then((value) => refetch());
                }
              }),
              icon: const Icon(Icons.delete),
            ),
        ],
      ),
      replies: [
        for (var reply in replies)
          _ThreadComment(
            comment: reply,
            refetch: refetch,
            isReply: true,
          )
      ],
    );
  }
}
