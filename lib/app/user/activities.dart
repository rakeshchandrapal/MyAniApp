import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/activity/page.dart';
import 'package:myaniapp/app/user/__generated__/activities.req.gql.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/widget.dart';

@RoutePage()
class UserActivityScreen extends StatelessWidget {
  const UserActivityScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest: GUserActivitiesReq(
        (b) => b
          ..requestId = "userActivities$id"
          ..vars.userId = id,
      ),
      builder: (context, response, error, refetch) => RefreshIndicator.adaptive(
        onRefresh: refetch,
        child: GraphqlPagination(
          pageInfo: response!.data!.Page!.pageInfo!,
          req: (nextPage) =>
              (response.operationRequest as GUserActivitiesReq).rebuild(
            (b) => b
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Page.activities.insertAll(
                    0,
                    previous?.Page?.activities?.whereNot((p0) =>
                            result.Page?.activities?.contains(p0) ?? false) ??
                        [])),
          ),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              var activity = response.data!.Page!.activities![index]!;

              return ActivityCard(
                activity: activity,
              );
            },
            itemCount: response.data!.Page!.activities!.length,
          ),
        ),
      ),
    );
  }
}
