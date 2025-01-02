import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/fragments/thread.graphql.dart';
import 'package:myaniapp/routes.dart';
import 'package:relative_time/relative_time.dart';

class ThreadCard extends StatelessWidget {
  const ThreadCard({
    super.key,
    required this.thread,
  });

  final Fragment$ThreadFragment thread;

  @override
  Widget build(BuildContext context) {
    if (thread.isSticky == true) {
      return Card.outlined(
        child: InkWellImage(
          borderRadius: imageRadius,
          onTap: () => context
              .push(Routes.thread(thread.id), extra: {"placeholder": thread}),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.push_pin),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          thread.title!.trim(),
                          style: context.theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.remove_red_eye,
                              size: 20,
                            ),
                            Text((thread.viewCount ?? 0).abbreviate()),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.comment,
                              size: 20,
                            ),
                            Text((thread.replyCount ?? 0).abbreviate()),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    return Card.outlined(
      child: InkWellImage(
        borderRadius: imageRadius,
        onTap: () => context
            .push(Routes.thread(thread.id), extra: {"placeholder": thread}),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                thread.title!.trim(),
                style: context.theme.textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove_red_eye,
                    size: 20,
                  ),
                  Text((thread.viewCount ?? 0).abbreviate()),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.comment,
                    size: 20,
                  ),
                  Text((thread.replyCount ?? 0).abbreviate()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Show(
                when: thread.replyCount != 0 &&
                    thread.replyUser != null &&
                    thread.repliedAt != null,
                fallback: Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: ListTileCircleAvatar(
                        url: thread.user!.avatar!.large!,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(text: " by "),
                            TextSpan(
                              text: thread.user!.name,
                              style: const TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                child: () => Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: ListTileCircleAvatar(
                        url: thread.replyUser!.avatar!.large!,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: thread.replyUser!.name,
                              style: const TextStyle(color: Colors.blue),
                            ),
                            const TextSpan(text: " replied "),
                            TextSpan(
                              text: thread.repliedAt!
                                  .dateFromTimestamp()
                                  .relativeTime(context),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (thread.categories?.isNotEmpty == true)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: SingleChildScrollView(
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var cat in thread.categories!)
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Chip(
                            label: Text(cat!.name),
                          ),
                        ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
