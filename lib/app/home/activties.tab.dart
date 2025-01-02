import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/home/screen.dart';
import 'package:myaniapp/common/activity_card.dart';
import 'package:myaniapp/common/hiding_floating_button.dart';
import 'package:myaniapp/common/markdown_editor.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/home_activities.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';

class HomeActivitiesTab extends StatefulHookConsumerWidget {
  const HomeActivitiesTab({super.key});

  @override
  ConsumerState<HomeActivitiesTab> createState() => _HomeActivitiesTabState();
}

class _HomeActivitiesTabState extends ConsumerState<HomeActivitiesTab> {
  bool isFollowing = false;

  Icon getThumbIcon(Set<WidgetState> state) {
    if (state.contains(WidgetState.selected)) {
      return const Icon(Icons.people);
    }

    return const Icon(Icons.public);
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(
      GQLRequest(
        homeActivitiesQuery,
        variables: Variables$Query$HomeActivities(
                hasReplies: !isFollowing, isFollowing: isFollowing)
            .toJson(),
        parseData: Query$HomeActivities.fromJson,
        mergeResults: defaultMergeResults("Page.activities"),
      ),
    );

    return HidingFloatingButton(
      button: FloatingActionButton(
        onPressed: requiredLogin(
          ref,
          "send a post",
          () => MarkdownEditor.show(
            context,
            onSave: (text) => c
                .query(GQLRequest(saveTextActivityQuery,
                    variables: Variables$Mutation$SaveTextActivity(text: text)
                        .toJson()))
                .last
                .then((value) => setState(() {
                      if (!isFollowing) {
                        isFollowing = true;
                      } else {
                        refetch();
                      }
                    })),
            hint: "Write a post",
          ),
        ),
        child: const Icon(Icons.post_add),
      ),
      builder: (button) => Scaffold(
        appBar: AppBar(
          leading: const HomeLeadingIcon(),
          actions: [
            if (user.value?.data != null)
              Switch.adaptive(
                value: isFollowing,
                thumbIcon: WidgetStateProperty.resolveWith(getThumbIcon),
                onChanged: (value) {
                  setState(() => isFollowing = !isFollowing);
                  Future.delayed(
                      const Duration(milliseconds: 100), () => refetch());
                },
              ),
          ],
        ),
        floatingActionButton: button,
        body: GQLWidget(
          response: snapshot,
          refetch: refetch,
          builder: () => RefreshIndicator.adaptive(
            onRefresh: refetch,
            child: PaginationView.list(
              req: (nextPage) => fetchMore(
                variables: Variables$Query$HomeActivities.fromJson(
                        snapshot.request!.variables)
                    .copyWith(page: nextPage)
                    .toJson(),
              ),
              pageInfo: snapshot.parsedData!.Page!.pageInfo!,
              builder: (context, index) {
                var activity = snapshot.parsedData!.Page!.activities![index]!;

                return ActivityCard(
                  activity: activity,
                  refetch: refetch,
                );
              },
              itemCount: snapshot.parsedData!.Page!.activities!.length,
            ),
          ),
        ),
      ),
    );
  }
}
