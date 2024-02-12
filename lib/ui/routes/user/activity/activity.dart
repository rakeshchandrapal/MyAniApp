import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/providers/user_profile.dart';
import 'package:myaniapp/ui/common/activity_card.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/user/activity/__generated__/activity.req.gql.dart';

class UserActivityPage extends ConsumerStatefulWidget {
  const UserActivityPage({super.key, required this.name});

  final String name;

  @override
  ConsumerState<UserActivityPage> createState() => _UserActivityPageState();
}

class _UserActivityPageState extends ConsumerState<UserActivityPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var user = ref.watch(userProfileProvider(widget.name));

    return GQLRequest(
      operationRequest: GUserActivitiesReq((b) => b
        ..requestId = "userActivities"
        ..vars.userId = user.value!.id),
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
                showReplyCount: true,
                onDelete: refetch,
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
