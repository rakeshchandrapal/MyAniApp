import 'package:MyAniApp/graphql/Releasing.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:markdown_widget/markdown_widget.dart';

({Enum$MediaSeason nextSeason, int nextYear, Enum$MediaSeason season, int year}) formatDate() {
  var date = DateTime.now();
  var month = date.month;
  var season = getSeason(month);
  var nextYear = DateTime(date.year, month + 3).year;
  var nextSeason = getSeason(month + 3);

  return (season: season, nextSeason: nextSeason, nextYear: nextYear, year: date.year);
}

void showImage(BuildContext context, String url) {
  Navigator.of(context).push(
    PageRouteBuilder(
      opaque: false,
      pageBuilder: (_, __, ___) => ImageViewer(
        child: CImage(
          imageUrl: url,
        ),
      ),
    ),
  );
}

Enum$MediaSeason getSeason(int month) {
  return month >= 0 && month <= 2
      ? Enum$MediaSeason.WINTER
      : month >= 3 && month <= 5
          ? Enum$MediaSeason.SPRING
          : month >= 6 && month <= 8
              ? Enum$MediaSeason.SUMMER
              : month >= 9 && month <= 11
                  ? Enum$MediaSeason.FALL
                  : Enum$MediaSeason.FALL;
}

String removeHTML(String data) {
  // var r =
  return data.replaceAll('<br>', '');
}

String formattedDate(int? year, int? month, int? day) {
  return '${month != null ? DateFormat.MMMM().format(DateTime(0, month)) : ''}${day != null ? ' $day' : ''}${(day != null || month != null) && year != null ? ', ' : ''}${year ?? ''}';
}

bool isTodayFromTimestamp(int? timestamp) {
  if (timestamp == null) return false;
  var now = DateTime.now();
  var date = dateFromTimestamp(timestamp);
  return now.year == date.year &&
      now.month == date.month &&
      (now.day) == (date.day);
}

DateTime dateFromTimestamp(int timestamp) {
  return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
}

String fromTimestamp(int timestamp) {
  var date = dateFromTimestamp(timestamp).difference(DateTime.now());

  String time = '';
  if (!date.isNegative) time = 'in ';
  // if (date.inDays)
  if (date.inDays.abs() > 0) {
    time += '${date.inDays.abs()}d ';
  }
  if (date.inHours.abs() > 0) {
    time += '${date.inHours.abs() % 24}h';
  } else if (date.inMinutes.abs() > 0) {
    time += '${date.inMinutes.abs()}m';
  } else {
    time += '${date.inSeconds.abs()}s';
  }

  if (date.isNegative) time = '($time ago)';

  return time;
}

List<Fragment$ReleasingMedia> sortReleases(List<Fragment$ReleasingMedia> releases, {bool includeUnreleased = false,}) {
  return releases
      .where(
        (element) {
          if (includeUnreleased) return true;
            return
            element.nextAiringEpisode != null &&
            element.airingSchedule != null &&
            dateFromTimestamp((element.nextAiringEpisode?.airingAt ??
                        element.airingSchedule!.edges!.first!.node!.airingAt))
                    .difference(DateTime.now())
                    .inDays <=
                7;
        }
      )
      .toList()
    ..sort((a, b) {
      // var airingAta = a.nextAiringEpisode
      if ((a.nextAiringEpisode??a.airingSchedule) == null) {
        return 1;
      } else if ((b.nextAiringEpisode??b.airingSchedule) == null) {
        return -1;
      }
      var nextEpTimea = a.nextAiringEpisode?.airingAt;
      var lastEpTimea = a.nextAiringEpisode?.episode != null ? a.airingSchedule?.edges
          ?.toList()
          .firstWhere(
              (aa) => aa?.node?.episode == a.nextAiringEpisode!.episode - 1,
              orElse: () => null)
          ?.node
          ?.airingAt: null;
      var nextEpTimeb = b.nextAiringEpisode?.airingAt;
      var lastEpTimeb = b.nextAiringEpisode?.episode != null ? b.airingSchedule?.edges
          ?.toList()
          .firstWhere(
              (a) => a?.node?.episode == b.nextAiringEpisode!.episode - 1,
              orElse: () => null)
          ?.node
          ?.airingAt:null;

      if (nextEpTimea == null) {
        return 1;
      } else if (nextEpTimeb == null) {
        return -1;
      }

      var datea = isTodayFromTimestamp(lastEpTimea)
          ? dateFromTimestamp(lastEpTimea!)
          : dateFromTimestamp(nextEpTimea);
      var dateb = isTodayFromTimestamp(lastEpTimeb)
          ? dateFromTimestamp(lastEpTimeb!)
          : dateFromTimestamp(nextEpTimeb);

      return datea.compareTo(dateb);
    });
}
