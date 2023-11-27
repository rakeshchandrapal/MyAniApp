import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/user/stats/stats.graphql.dart';
import 'package:myaniapp/providers/userProfile.dart';
import 'package:myaniapp/utils/graphql.dart';

class UserStatsPage extends ConsumerWidget {
  const UserStatsPage({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProfileProvider(name));

    return Query$UserStats$Widget(
      options: Options$Query$UserStats(
        variables: Variables$Query$UserStats(name: name),
      ),
      builder: queryBuilder(
        (result, {fetchMore, refetch}) {
          return ListView(
            children: [
              Row(
                children: [
                  const Icon(Icons.tv),
                  Text(
                    user.requireValue.statistics!.anime!.count.toString(),
                  ),
                  const Icon(Icons.play_arrow),
                  Text(
                    user.requireValue.statistics!.anime!.episodesWatched
                        .toString(),
                  ),
                  const Icon(Icons.calendar_today),
                  Text(
                    (user.requireValue.statistics!.anime!.minutesWatched / 1440)
                        .toStringAsFixed(1),
                  ),
                  const Icon(Icons.hourglass_full),
                  Text(
                    user.requireValue.statistics!.anime!.episodesWatched
                        .toString(),
                  ),
                  const Icon(Icons.percent),
                  Text(
                    user.requireValue.statistics!.anime!.meanScore.toString(),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
