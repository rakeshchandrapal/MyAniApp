import 'package:MyAniApp/graphql/Activity.graphql.dart';
import 'package:MyAniApp/graphql/Like.graphql.dart';
import 'package:MyAniApp/graphql/Notifications.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/graphql_client.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/graphql_error.dart';
import 'package:MyAniApp/widgets/markdown.dart';
import 'package:MyAniApp/widgets/markdown_editor.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class Activity extends HookWidget {
  final String id;
  const Activity({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Activity(
      Options$Query$Activity(
        variables: Variables$Query$Activity(id: int.tryParse(id)),
      ),
    );

    // var data = hook.result.parsedData!;

    return Scaffold(
      appBar: AppBar(),
      body: Graphql(
        hook: hook,
        builder: (result) => SingleChildScrollView(
          child: Column(
            children: [
              ActivityCard(activity: result.activity!),
              TextButton(
                onPressed: () => _showEditor(
                  context,
                  (markdown) async {
                    (await client()).value.mutate$SaveActivityReply(
                          Options$Mutation$SaveActivityReply(
                            onCompleted: (_, __) => hook.refetch(),
                            variables: Variables$Mutation$SaveActivityReply(
                              activityId: int.tryParse(id),
                              text: markdown,
                            ),
                          ),
                        );
                  },
                ),
                child: const Text('Reply'),
              ),
              for (var i in result.replies!.activityReplies!)
                ActivityCard(activity: i),
              // ],
              // )
            ],
          ),
        ),
      ),
    );
  }

  _showEditor(BuildContext context, Function(String) onSave) {
    showDialog(
      context: context,
      builder: (context) => AEditor(
        onSave: onSave,
      ),
    );
  }
}

class AEditor extends HookWidget {
  final Function(String) onSave;
  const AEditor({
    super.key,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Editor(
        onSave: onSave,
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final dynamic activity;
  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    Widget? text;
    String? image;
    Fragment$BasicUser? user;
    int? createdAt;

    if (activity is Query$Activity$activity$$ListActivity) {
      var i = (activity as Query$Activity$activity$$ListActivity);
      image = i.media?.coverImage?.large;
      user = i.user;
      createdAt = i.createdAt;
      text = Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: toBeginningOfSentenceCase(i.status),
            ),
            if (i.progress != null) TextSpan(text: ' ${i.progress} of'),
            TextSpan(
              text: ' ${i.media?.title?.userPreferred}',
              style: const TextStyle(
                color: Color(0xff0969da),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => context.push('/media/${i.media!.id}'),
            ),
          ],
        ),
        overflow: TextOverflow.ellipsis,
      );
    } else if (activity is Query$Activity$activity$$TextActivity) {
      var i = (activity as Query$Activity$activity$$TextActivity);
      createdAt = i.createdAt;
      user = i.user;
      text = Markdown(
        data: i.text!,
      );
    } else if (activity is Query$Activity$replies$activityReplies) {
      var i = activity as Query$Activity$replies$activityReplies;
      createdAt = i.createdAt;
      user = i.user;
      text = Markdown(data: i.text!);
    }

    if (text == null || user == null || createdAt == null) {
      return const SizedBox();
    }

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CachedNetworkImage(
                  imageUrl: user.avatar!.large!,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator.adaptive(),
                  height: 60,
                  width: 60,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.name),
                  Text(
                    timeago.format(
                      dateFromTimestamp(createdAt),
                    ),
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ],
          ),
          Container(
            constraints: const BoxConstraints(maxHeight: 300),
            child: Row(
              children: [
                if (image != null)
                  GestureDetector(
                    onTap: () => context.push(
                        '/media/${(activity as Query$Activity$activity$$ListActivity).media!.id}'),
                    child: SizedBox(
                      height: 120,
                      width: 80,
                      child: AspectRatio(
                        aspectRatio: 9 / 16,
                        child: CachedNetworkImage(
                          // width: 70,
                          imageUrl: image,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: text,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onInverseSurface,
            child: Row(
              children: [
                Mutation$ToggleLike$Widget(
                  builder: (p0, p1) {
                    return IconButton(
                      onPressed: () {
                        p0(
                          variables: Variables$Mutation$ToggleLike(
                            id: activity.id,
                            type: activity.runtimeType ==
                                    Query$Activity$replies$activityReplies
                                ? Enum$LikeableType.ACTIVITY_REPLY
                                : Enum$LikeableType.ACTIVITY,
                          ),
                        );
                      },
                      icon: Row(
                        children: [
                          activity.isLiked == true
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red[400],
                                )
                              : const Icon(Icons.favorite),
                          Text(
                            activity.likeCount.toString(),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
