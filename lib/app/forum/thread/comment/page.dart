import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/forum/thread/page.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/graphql/__gen/app/forum/thread/comment/comment.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class ThreadCommentScreen extends HookWidget {
  const ThreadCommentScreen(
      {super.key,
      @pathParam required this.commentId,
      @pathParam required this.id});

  final int id;
  final int commentId;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      commentQuery,
      variables: Variables$Query$Comment(id: commentId).toJson(),
      parseData: Query$Comment.fromJson,
    ));

    return Scaffold(
      appBar: AppBar(),
      body: GQLWidget(
        refetch: refetch,
        response: snapshot,
        builder: () => ListView(
          children: [
            ListTile(
              title:
                  const Text("Viewing a single comment, click to view thread"),
              onTap: () => context.pushRoute(ThreadRoute(
                  id: snapshot.parsedData!.ThreadComment!.first!.threadId!)),
            ),
            ThreadComment(
              comment: snapshot.parsedData!.ThreadComment!.first!.comment!,
              avatar: snapshot
                  .parsedData!.ThreadComment!.first!.user!.avatar!.large!,
              username: snapshot.parsedData!.ThreadComment!.first!.user!.name,
              createdAt: snapshot.parsedData!.ThreadComment!.first!.createdAt,
              isLiked:
                  snapshot.parsedData!.ThreadComment!.first!.isLiked ?? false,
              id: snapshot.parsedData!.ThreadComment!.first!.id,
              likeCount: snapshot.parsedData!.ThreadComment!.first!.likeCount,
              refetch: refetch,
              parentId: snapshot.parsedData!.ThreadComment!.first!.id,
              replies: snapshot
                  .parsedData!.ThreadComment!.first!.childComments?.asList,
              onAvatarTap: () => context.pushRoute(
                UserRoute(
                    name:
                        snapshot.parsedData!.ThreadComment!.first!.user!.name),
              ),
            )
          ],
        ),
      ),
    );
  }
}
