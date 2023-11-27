import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/user/activity/activity.graphql.dart';
import 'package:myaniapp/providers/userProfile.dart';
import 'package:myaniapp/ui/common/activity_card.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';

class UserActivityPage extends ConsumerWidget {
  const UserActivityPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProfileProvider(name));

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

        return ListView.builder(
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
        );
      },
    );
  }
}
