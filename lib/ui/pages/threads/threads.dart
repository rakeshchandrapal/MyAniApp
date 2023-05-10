import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/threads/threads.graphql.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/ui/common/thread.dart';

enum ThreadFeed { recent, latest, subscribed, search }

@RoutePage()
class ThreadsPage extends HookWidget {
  const ThreadsPage({super.key, required this.feed});

  final ThreadFeed feed;

  List<Enum$ThreadSort>? getSortOptions() {
    switch (feed) {
      case ThreadFeed.recent:
        return [Enum$ThreadSort.REPLIED_AT_DESC];
      case ThreadFeed.latest:
        return [Enum$ThreadSort.ID_DESC];
      case ThreadFeed.subscribed:
        return [Enum$ThreadSort.REPLIED_AT_DESC];
      case ThreadFeed.search:
        // TODO: Handle this case.
        break;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Threads(
      Options$Query$Threads(
        variables: Variables$Query$Threads(
          sort: getSortOptions(),
          subscribed: feed == ThreadFeed.subscribed ? true : null,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(feed == ThreadFeed.latest ? 'New' : feed.name.capitalize()),
      ),
      body: RefreshIndicator(
        onRefresh: hook.refetch,
        child: ScrollToTop(
          builder: (controller) => Graphql(
            hook: hook,
            builder: (result) => ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              controller: controller,
              itemBuilder: (context, index) {
                var item = result.Page!.threads![index]!;

                return ThreadCard(thread: item);
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: result.Page!.threads!.length,
            ),
          ),
        ),
      ),
    );
  }
}
