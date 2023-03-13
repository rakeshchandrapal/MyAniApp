import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';

({Enum$MediaSeason nextSeason, int nextYear, Enum$MediaSeason season, int year}) formatDate() {
  var date = DateTime.now();
  var month = date.month;
  var season = getSeason(month);
  var nextYear = DateTime(date.year, month + 3).year;
  var nextSeason = getSeason(month + 3);

  return (season: season, nextSeason: nextSeason, nextYear: nextYear, year: date.year);
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

bool isTodayFromTimestamp(int? timestamp) {
  if (timestamp == null) return false;
  var now = DateTime.now();
  var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
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
    time += '${date.inHours.abs()%24}h';
  } else if (date.inMinutes.abs() > 0) {
    time += '${date.inMinutes.abs()}m';
  } else {
    time += '${date.inSeconds.abs()}s';
  }

  if (date.isNegative) time = '($time ago)';

  return time;
}

List<Query$Home$releasing$media?> sortReleases(
    Query$Home$releasing releases) {
  return releases.media!
    .where((element) => element?.nextAiringEpisode != null && element?.airingSchedule != null)
    .toList()
    ..sort((checka, checkb) {
      var nextEpTimea = checka!.nextAiringEpisode!.airingAt;
      var lastEpTimea = checka.airingSchedule?.edges?.toList().firstWhere((a) => a?.node?.episode == checka.nextAiringEpisode!.episode - 1, orElse: () => null)?.node?.airingAt;
      var nextEpTimeb = checkb!.nextAiringEpisode!.airingAt;
      var lastEpTimeb = checkb.airingSchedule?.edges?.toList().firstWhere((a) => a?.node?.episode == checkb.nextAiringEpisode!.episode - 1, orElse: () => null)?.node?.airingAt;
     
      var datea = isTodayFromTimestamp(lastEpTimea) ? dateFromTimestamp(lastEpTimea!) : dateFromTimestamp(nextEpTimea);
      var dateb = isTodayFromTimestamp(lastEpTimeb) ? dateFromTimestamp(lastEpTimeb!) : dateFromTimestamp(nextEpTimeb);

      return datea.compareTo(dateb);
    });
}
