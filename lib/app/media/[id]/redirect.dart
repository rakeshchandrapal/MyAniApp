import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
  if (state.fullPath != "/media/:id/:tab") {
    return "/media/${state.pathParameters["id"]}/info";
  }
  return null;
}
