import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/dialogs/login.dart';

VoidCallback? requireLogin(
    WidgetRef ref, String action, VoidCallback callback) {
  var user = ref.watch(userProvider);

  if (user.value != null) return callback;

  return () => showLoginDialog(ref.context, action);
}
