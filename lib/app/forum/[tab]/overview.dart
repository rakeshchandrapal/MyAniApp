import 'package:flutter/material.dart';
import 'package:myaniapp/app/forum/__generated__/overview.req.gql.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/graphql/widget.dart';

class ForumOverviewPage extends StatelessWidget {
  const ForumOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest: GForumOverviewReq(),
      builder: (context, response, error, refetch) {
        var pinned =
            response!.data!.recent!.threads!.where((e) => e!.isSticky == true);
        var recent = response.data!.recent!.threads!
            .where((e) => e!.isSticky != true)
            .take(4);

        return RefreshIndicator.adaptive(
          onRefresh: refetch,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Pinned',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  ...pinned.map((e) => ThreadCard(thread: e!))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Recent',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  ...recent.map((e) => ThreadCard(thread: e!))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Release Discussion',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  ...response.data!.release!.threads!
                      .map((e) => ThreadCard(thread: e!))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'New',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  ...response.data!.Gnew!.threads!
                      .map((e) => ThreadCard(thread: e!))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
