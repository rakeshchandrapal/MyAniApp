import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/activity/page.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/app/user/activities.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class UserActivityScreen extends HookWidget {
  const UserActivityScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      userActivitiesQuery,
      variables: Variables$Query$UserActivities(userId: id).toJson(),
      parseData: Query$UserActivities.fromJson,
      mergeResults: defaultMergeResults("Page.activities"),
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () => RefreshIndicator.adaptive(
        onRefresh: refetch,
        child: PaginationView.list(
          pageInfo: snapshot.parsedData!.Page!.pageInfo!,
          req: (nextPage) => fetchMore(
            variables: Variables$Query$UserActivities.fromJson(
                    snapshot.request!.variables)
                .copyWith(page: nextPage)
                .toJson(),
          ),
          builder: (context, index) {
            var activity = snapshot.parsedData!.Page!.activities![index]!;

            return ActivityCard(
              activity: activity,
            );
          },
          itemCount: snapshot.parsedData!.Page!.activities!.length,
        ),
      ),
    );
  }
}
