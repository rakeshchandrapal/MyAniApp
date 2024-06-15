import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/activity/%5Bid%5D/page.dart';
import 'package:myaniapp/app/user/__generated__/activities.req.gql.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/widget.dart';

class UserActivityPage extends StatefulWidget {
  const UserActivityPage({super.key, required this.id});

  final int id;

  @override
  State<UserActivityPage> createState() => _UserActivityPageState();
}

class _UserActivityPageState extends State<UserActivityPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GQLRequest(
      operationRequest: GUserActivitiesReq(
        (b) => b
          ..requestId = "userActivities${widget.id}"
          ..vars.userId = widget.id,
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

  @override
  bool get wantKeepAlive => true;
}
