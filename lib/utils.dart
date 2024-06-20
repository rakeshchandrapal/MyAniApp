import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/common/dialogs/login.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
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

String scoreToText(GScoreFormat format, double value) {
  if (value == 0) return "";

  return switch (format) {
    GScoreFormat.POINT_3 => value == 1
        ? ":("
        : value == 2
            ? ":|"
            : ":)",
    GScoreFormat.POINT_5 => "${value.toInt()} / 5",
    GScoreFormat.POINT_10 => "${value.toInt()} / 10",
    GScoreFormat.POINT_10_DECIMAL => "$value / 10",
    GScoreFormat.POINT_100 => "${value.toInt()} / 100",
    GScoreFormat() => throw UnimplementedError(),
  };
}
