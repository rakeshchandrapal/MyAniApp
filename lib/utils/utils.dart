import 'package:intl/intl.dart';
import 'package:myaniapp/graphql/fragments/__generated__/releasing_media.data.gql.dart';

DateTime dateFromTimestamp(int timestamp) {
  return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
}

String abbreviateNumber(num number) {
  var f = NumberFormat.compact(locale: "en_US");
  return f.format(number);
}

// String timeAgo(DateTime date) {
//   var diff = DateTime.now().difference(date);

//   print(diff.inHours);

//   // less then 24 hours
//   if (diff.inHours < 24) {
//     return '${diff.inHours}h';
//   } else if (diff.inDays < 30) {
//     return '${diff.inDays}d';
//   } else if (diff.y)

//   return date.toString();
// }

bool isTodayFromTimestamp(int? timestamp) {
  if (timestamp == null) return false;
  var now = DateTime.now();
  var date = dateFromTimestamp(timestamp);
  return now.year == date.year &&
      now.month == date.month &&
      (now.day == date.day || now.day == (date.day + 1));
}

bool hasTimestampPassed(int? timestamp) {
  if (timestamp == null) return false;
  var date = dateFromTimestamp(timestamp).difference(DateTime.now());
  if (date.isNegative) return true;
  return false;
}

Iterable<GReleasingMedia> sortReleases(
  Iterable<GReleasingMedia?> releases, {
  bool includeUnreleased = false,
}) {
  return releases
      .where((element) {
        if (includeUnreleased) return true;
        if (element?.airingSchedule != null &&
            element?.nextAiringEpisode != null &&
            isTodayFromTimestamp(element!.airingSchedule!.edges!
                .firstWhere(
                    (e) =>
                        e!.node!.episode ==
                        element.nextAiringEpisode!.episode - 1,
                    orElse: () => null)
                ?.node
                ?.airingAt)) {
          return true;
        }
        return element?.airingSchedule != null &&
            element?.nextAiringEpisode != null &&
            dateFromTimestamp((element!.nextAiringEpisode?.airingAt ??
                        element.airingSchedule!.edges!.first!.node!.airingAt))
                    .difference(DateTime.now())
                    .inDays <=
                7;
      })
      .whereType<GReleasingMedia>()
      .toList()
    ..sort(
      (a, b) {
        // first check if a and b have airingSchedule and a next episode
        if ((a.airingSchedule ?? a.nextAiringEpisode) == null &&
            (b.airingSchedule ?? b.nextAiringEpisode) == null) {
          return 0;
        } else if (b.airingSchedule == null || b.nextAiringEpisode == null) {
          return -1;
        } else if (a.airingSchedule == null || a.nextAiringEpisode == null) {
          return 1;
        }

        var prevEpia = a.airingSchedule!.edges!.firstWhere(
          (element) =>
              element?.node?.episode == (a.nextAiringEpisode!.episode - 1),
          orElse: () => null,
        );
        var prevEpib = b.airingSchedule!.edges!.firstWhere(
          (element) =>
              element?.node?.episode == (b.nextAiringEpisode!.episode - 1),
          orElse: () => null,
        );

        var todaya = isTodayFromTimestamp(prevEpia?.node?.airingAt);
        var todayb = isTodayFromTimestamp(prevEpib?.node?.airingAt);

        // check if the most recent episode released is today
        if (todaya && todayb) {
          return 0;
        } else if (todayb) {
          return 1;
        } else if (todaya) {
          return -1;
        }

        var datea = dateFromTimestamp(a.nextAiringEpisode!.airingAt);
        var dateb = dateFromTimestamp(b.nextAiringEpisode!.airingAt);

        return datea.compareTo(dateb);
      },
    );
}
