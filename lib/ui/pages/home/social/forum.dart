import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/home/social/forum.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/thread.dart';
import 'package:myaniapp/ui/pages/threads/threads.dart';

class Forums extends HookWidget {
  const Forums({super.key});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var hook = useQuery$PinnedThreads();

    return Graphql(
      hook: hook,
      builder: (result) {
        var pinned = result.Page!.threads!
            .where((element) => element?.isSticky == true)
            .toList();

        return CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var item = pinned[index]!;

                  return Padding(
                    padding: const EdgeInsets.all(4),
                    child: ThreadCard(thread: item),
                  );
                },
                childCount: pinned.length,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  ListTile(
                    title: const Text('Recent Activity'),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () => context.router
                        .push(ThreadsRoute(feed: ThreadFeed.recent)),
                  ),
                  ListTile(
                    title: const Text('New'),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () => context.router
                        .push(ThreadsRoute(feed: ThreadFeed.latest)),
                  ),
                  ListTile(
                    title: const Text('Subscribed'),
                    trailing: const Icon(Icons.arrow_right),
                    onTap: () => context.router
                        .push(ThreadsRoute(feed: ThreadFeed.subscribed)),
                  ),
                  const ListTile(
                    title: Text('Search'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
