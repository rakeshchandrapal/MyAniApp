import 'dart:math';

import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/user/stats/stats.graphql.dart';
import 'package:myaniapp/providers/user_profile.dart';
import 'package:myaniapp/utils/graphql.dart';

class UserStatsPage extends ConsumerStatefulWidget {
  const UserStatsPage({
    super.key,
    required this.name,
  });

  final String name;

  @override
  ConsumerState<UserStatsPage> createState() => _UserStatsPageState();
}

class _UserStatsPageState extends ConsumerState<UserStatsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var user = ref.watch(userProfileProvider(widget.name));

    return Query$UserStats$Widget(
      options: Options$Query$UserStats(
        variables: Variables$Query$UserStats(name: widget.name),
      ),
      builder: queryBuilder(
        (result, [fetchMore, refetch]) {
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
                  const Icon(FontAwesomeIcons.divide),
                  Text(
                    user.requireValue.statistics!.anime!.standardDeviation
                        .toString(),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Text('Score'),
              ScoreChart(
                scoreStats:
                    result.parsedData!.User!.statistics!.anime!.scores!.cast(),
                username: widget.name,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text('Episode Count'),
              EpisodeChart(
                scoreStats:
                    result.parsedData!.User!.statistics!.anime!.lengths!.cast(),
              )
              // SizedBox(
              //   height: 200,
              //   child: BarChart(
              //     BarChartData(
              //       barGroups: [
              //         BarChartGroupData(
              //           x: 0,
              //           barRods: [
              //             BarChartRodData(toY: 9),
              //           ],
              //         )
              //       ],
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ScoreChart extends ConsumerStatefulWidget {
  const ScoreChart({
    super.key,
    required this.scoreStats,
    required this.username,
  });

  final List<Query$UserStats$User$statistics$anime$scores> scoreStats;
  final String username;

  @override
  ConsumerState<ScoreChart> createState() => _ScoreChartState();
}

class _ScoreChartState extends ConsumerState<ScoreChart> {
  late final List<Widget> xTiles;

  @override
  void initState() {
    super.initState();
    var user = ref.read(userProfileProvider(widget.username));
    xTiles = switch (user.requireValue.mediaListOptions!.scoreFormat!) {
      (Enum$ScoreFormat.POINT_3) => [
          const Icon(FontAwesomeIcons.faceFrown),
          const Icon(FontAwesomeIcons.faceMeh),
          const Icon(FontAwesomeIcons.faceSmile)
        ],
      _ => []
    };
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: BarChart(
        BarChartData(
          barTouchData: BarTouchData(
            // enabled: false,
            touchTooltipData: BarTouchTooltipData(
              fitInsideHorizontally: true,
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                // print(groupIndex);
                var data = widget.scoreStats.reversed.elementAt(groupIndex);
                return BarTooltipItem(
                  "",
                  Theme.of(context).textTheme.bodySmall!,
                  children: [
                    TextSpan(text: "Score: ${data.score}\n"),
                    TextSpan(text: "Count: ${data.count}\n"),
                    TextSpan(
                      text:
                          "Hours Watched: ${(data.minutesWatched / 1440).toStringAsFixed(1)}\n",
                    ),
                    TextSpan(text: "Mean Score: ${data.meanScore}")
                  ],
                );
              },
            ),
          ),
          barGroups: getDataGroups(),
          backgroundColor: Theme.of(context).colorScheme.surface,
          gridData: const FlGridData(show: false),
          maxY: widget.scoreStats.map((e) => e.count).reduce(max).toDouble(),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles:
                  SideTitles(getTitlesWidget: getBottomTiles, showTitles: true),
            ),
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> getDataGroups() {
    List<BarChartGroupData> s = [];

    for (var element in widget.scoreStats.reversed) {
      s.add(
        BarChartGroupData(
          x: element.score!,
          barRods: [
            BarChartRodData(
              toY: element.count.toDouble(),
              width: 20,
            ),
          ],
        ),
      );
    }

    return s;
  }

  Widget getBottomTiles(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: xTiles.isEmpty
          ? Text(value.truncate().toString())
          : xTiles.elementAt(value.toInt() - 1),
    );
  }
}

class EpisodeChart extends ConsumerStatefulWidget {
  const EpisodeChart({
    super.key,
    required this.scoreStats,
  });

  final List<Query$UserStats$User$statistics$anime$lengths> scoreStats;

  @override
  ConsumerState<EpisodeChart> createState() => _EpisodeChartState();
}

final digitRegExp = RegExp('(\\d+)');

class _EpisodeChartState extends ConsumerState<EpisodeChart> {
  late final List<Query$UserStats$User$statistics$anime$lengths> lengths;

  @override
  void initState() {
    super.initState();
    lengths = widget.scoreStats.sorted(sorted);
  }

  int sorted(Query$UserStats$User$statistics$anime$lengths a,
      Query$UserStats$User$statistics$anime$lengths b) {
    int? lengthA =
        int.tryParse(digitRegExp.firstMatch(a.length!)?.group(1) ?? '');
    int? lengthB =
        int.tryParse(digitRegExp.firstMatch(b.length!)?.group(1) ?? '');

    return (lengthA ?? 0).compareTo(lengthB ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: BarChart(
        BarChartData(
          barTouchData: BarTouchData(
            // enabled: false,
            touchTooltipData: BarTouchTooltipData(
              fitInsideHorizontally: true,
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                var data = lengths.elementAt(groupIndex);
                return BarTooltipItem(
                  "",
                  Theme.of(context).textTheme.bodySmall!,
                  children: [
                    TextSpan(text: "Count: ${data.count}\n"),
                    TextSpan(
                      text:
                          "Hours Watched: ${(data.minutesWatched / 1440).toStringAsFixed(1)}\n",
                    ),
                    TextSpan(text: "Mean Score: ${data.meanScore}")
                  ],
                );
              },
            ),
          ),
          barGroups: getDataGroups(),
          backgroundColor: Theme.of(context).colorScheme.surface,
          gridData: const FlGridData(show: false),
          maxY: lengths.map((e) => e.count).reduce(max).toDouble(),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles:
                  SideTitles(getTitlesWidget: getBottomTiles, showTitles: true),
            ),
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> getDataGroups() {
    List<BarChartGroupData> s = [];

    for (var (index, element) in lengths.indexed) {
      s.add(
        BarChartGroupData(
          x: index,
          barRods: [
            BarChartRodData(
              toY: element.count.toDouble(),
              width: 10,
            ),
          ],
        ),
      );
    }

    return s;
  }

  Widget getBottomTiles(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(lengths.elementAt(value.toInt()).length!),
    );
  }
}
