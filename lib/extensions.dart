import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/graphql/__gen/fragments/fuzzy_date.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';

extension Capitalize on String {
  String capitalize() {
    return replaceAll('_', " ")
        .split(' ')
        .map(
          (element) => toBeginningOfSentenceCase(element.toLowerCase()),
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

extension FuzzyToDate on Input$FuzzyDateInput {
  DateTime? toDate() {
    if (year == null) return null;

    return DateTime(year!, month ?? 1, day ?? 1);
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

extension InputFuzzyToDate on Fragment$FuzzyDate {
  DateTime? toDate() {
    if (year == null) return null;

    return DateTime(year!, month ?? 1, day ?? 1);
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

// extension InputFuzzyBuilderToDate on GFuzzyDateInputBuilder {
//   DateTime? toDate() {
//     if (year == null) return null;

//     return DateTime(year!, month ?? 1, day ?? 1);
//   }

//   String? toDateString() {
//     if (day == null && month == null && year == null) return null;
//     var str = '';
//     if (month != null) str += DateFormat('MMMM').format(DateTime(0, month!));
//     if (day != null) str += ' $day';
//     if (year != null) {
//       if (str.isEmpty) {
//         str += year!.toString();
//       } else {
//         str += ', $year';
//       }
//     }

//     return str;
//   }
// }

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension Abbreviate on num {
  String abbreviate() {
    var f = NumberFormat.compact(locale: "en_US");
    return f.format(this);
  }
}

extension DateFromUnix on int {
  DateTime dateFromTimestamp() {
    return DateTime.fromMillisecondsSinceEpoch(this * 1000);
  }
}

extension TextStyleBold on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
}

extension PopFromBranches on StatefulNavigationShell {
  void popFromBranches(BuildContext context) {
    if (currentIndex != 0) {
      goBranch(0);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pop();
      });
    } else {
      context.pop();
    }
  }
}
