import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
  if (state.fullPath != "/user/:name/:tab" &&
      state.fullPath != "/user/anime" &&
      state.fullPath != "/user/manga") {
    return "/user/${state.pathParameters["name"]}/info";
  }
  return null;
}
