import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/forum/thread/comment/__generated__/comment.req.gql.dart';
import 'package:myaniapp/app/forum/thread/page.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class ThreadCommentScreen extends StatelessWidget {
  const ThreadCommentScreen(
      {super.key, required this.commentId, required this.id});

  final String id;
  final String commentId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GQLRequest(
        operationRequest: GCommentReq((b) => b
          ..requestId = "threadComment$commentId"
          ..vars.id = int.parse(commentId)),
        builder: (context, response, error, refetch) => ListView(
          children: [
            ListTile(
              title:
                  const Text("Viewing a single comment, click to view thread"),
              onTap: () => context.pushRoute(ThreadRoute(
                  id: response!.data!.ThreadComment!.first!.threadId!)),
            ),
            ThreadComment(
              comment: response!.data!.ThreadComment!.first!.comment!,
              avatar: response.data!.ThreadComment!.first!.user!.avatar!.large!,
              username: response.data!.ThreadComment!.first!.user!.name,
              createdAt: response.data!.ThreadComment!.first!.createdAt,
              isLiked: response.data!.ThreadComment!.first!.isLiked ?? false,
              id: response.data!.ThreadComment!.first!.id,
              likeCount: response.data!.ThreadComment!.first!.likeCount,
              refetch: refetch,
              parentId: response.data!.ThreadComment!.first!.id,
              replies:
                  response.data!.ThreadComment!.first!.childComments?.asList,
              onAvatarTap: () => context.pushRoute(
                UserRoute(
                    name: response.data!.ThreadComment!.first!.user!.name),
              ),
            )
          ],
        ),
      ),
    );
  }
}
