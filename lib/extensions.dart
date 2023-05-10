import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';

extension Capitalize on String {
  String capitalize() {
    return replaceAll('_', " ")
        .split(' ')
        .map(
          (element) => toBeginningOfSentenceCase(element.toLowerCase())!,
        )
        .join(' ');
  }
}

// used for icon colors in links at the bottom viewing a media
extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

extension Date on Fragment$FuzzyDate {
  DateTime? toDate() {
    if (year == null) return null;

    return DateTime(year!, month ?? 0, day ?? 0);
  }

  String? toDateString() {
    if (day == null && month == null && year == null) return null;
    var str = '';
    if (month != null) str += DateFormat('MMMM').format(DateTime(0, month!));
    if (day != null) str += ' $day';
    if (year != null) {
      if (str.isEmpty) {
        str += year!.toString();
      } else {
        str += ', $year';
      }
    }

    return str;
  }
}
