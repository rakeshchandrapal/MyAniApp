import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/user/activity/activity.graphql.dart';
import 'package:myaniapp/providers/user_profile.dart';
import 'package:myaniapp/ui/common/activity_card.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';

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

    return Query$Activities$Widget(
      options: Options$Query$Activities(
        variables: Variables$Query$Activities(
          userId: user.value!.id,
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.parsedData == null) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (result.hasException) {
          return GraphqlError(exception: result.exception!);
        }

        return RefreshIndicator.adaptive(
          onRefresh: refetch!,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              var activity = result.parsedData!.Page!.activities![index]!;

              return ActivityCard(
                activity: activity,
                showReplyCount: true,
                onDelete: refetch,
              );
            },
            itemCount: result.parsedData!.Page!.activities!.length,
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
