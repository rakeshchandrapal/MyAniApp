import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/page.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/text_viewall_button.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/forum/overview.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

class ForumOverviewPage extends HookWidget {
  const ForumOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      forumOverviewQuery,
      parseData: Query$ForumOverview.fromJson,
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () {
        var pinned = snapshot.parsedData!.recent!.threads!
            .where((e) => e!.isSticky == true);
        var recent = snapshot.parsedData!.recent!.threads!
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
                      "Pinned",
                      style: context.theme.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
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
                    child: TextViewAllButton(
                      title: "Recent",
                      onTap: () => context.navigateTo(
                        ForumRoute(tab: ForumTabs.recent.name),
                      ),
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
                    child: TextViewAllButton(
                      title: "Release Discussion",
                      onTap: () => context.navigateTo(
                        ForumRoute(tab: ForumTabs.recent.name, category: 5),
                      ),
                    ),
                  ),
                  ...snapshot.parsedData!.release!.threads!
                      .map((e) => ThreadCard(thread: e!))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextViewAllButton(
                      title: "New",
                      onTap: () => context.navigateTo(
                        ForumRoute(tab: ForumTabs.$new.name),
                      ),
                    ),
                  ),
                  ...snapshot.parsedData!.$new!.threads!
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
