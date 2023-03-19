import 'package:MyAniApp/graphql/thread.graphql.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/graphql_error.dart';
import 'package:MyAniApp/widgets/image.dart';
import 'package:MyAniApp/widgets/markdown.dart';
import 'package:MyAniApp/widgets/markdown_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:timeago/timeago.dart' as timeago;

class Thread extends HookWidget {
  final String id;
  const Thread({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Thread(
      Options$Query$Thread(
        variables: Variables$Query$Thread(
          id: int.tryParse(id),
        ),
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Graphql(
          hook: hook,
          builder: (result) => Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  result.Thread!.title!.trim(),
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CImage(
                            imageUrl: result.Thread!.user!.avatar!.large!,
                            height: 40,
                            width: 40,
                          ),
                          Text(result.Thread!.user!.name),
                          const Spacer(),
                          Text(
                            timeago.format(
                              dateFromTimestamp(result.Thread!.createdAt),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (result.Thread!.body != null)
                        Markdown(data: result.Thread!.body!),
                      if (result.Thread!.categories?.isNotEmpty == true) ...[
                        const SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: [
                            for (var cat in result.Thread!.categories!)
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Chip(
                                  label: Text(
                                    cat!.name,
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                  visualDensity: const VisualDensity(
                                    horizontal: -2,
                                    vertical: -2,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ]
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Comments(result.Thread!.id),
            ],
          ),
        ),
      ),
    );
  }
}

class Comments extends HookWidget {
  final int id;
  const Comments(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$ThreadComments(
      Options$Query$ThreadComments(
        variables: Variables$Query$ThreadComments(threadId: id),
      ),
    );

    print(hook.result.parsedData?.Page?.threadComments?.length);

    return Graphql(
      hook: hook,
      builder: (result) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${result.Page!.threadComments!.length} Replies',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            TextButton(
                onPressed: () => _showEditor(context),
                child: const Text('Comment')),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var comment = result.Page!.threadComments![index];

                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CImage(
                              imageUrl: comment!.user!.avatar!.large!,
                              height: 40,
                              width: 40,
                            ),
                            Text(comment.user!.name),
                            const Spacer(),
                            Text(
                              timeago.format(
                                dateFromTimestamp(comment.createdAt),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        if (comment.comment != null)
                          Markdown(data: comment.comment!),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: result.Page!.threadComments!.length,
            ),
          ],
        );
      },
    );
  }

  _showEditor(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const Dialog.fullscreen(
        child: Editor(),
      ),
    );
  }
}
