import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/common/dialogs/login.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/providers/user.dart';

DateTime dateFromTimestamp(int timestamp) {
  return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
}

VoidCallback requiredLogin(
    WidgetRef ref, String action, VoidCallback callback) {
  var user = ref.read(userProvider);

  if (user.value?.data != null) return callback;

  return () => LoginDialog.show(ref.context, action);
}

String scoreToText(Enum$ScoreFormat format, double value) {
  if (value == 0) return "";

  return switch (format) {
    Enum$ScoreFormat.POINT_3 => value == 1
        ? ":("
        : value == 2
            ? ":|"
            : ":)",
    Enum$ScoreFormat.POINT_5 => "${value.toInt()} / 5",
    Enum$ScoreFormat.POINT_10 => "${value.toInt()} / 10",
    Enum$ScoreFormat.POINT_10_DECIMAL => "$value / 10",
    Enum$ScoreFormat.POINT_100 => "${value.toInt()} / 100",
    Enum$ScoreFormat() => throw UnimplementedError(),
  };
}
