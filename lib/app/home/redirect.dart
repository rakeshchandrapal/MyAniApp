import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/home/%5Btab%5D/page.dart';

FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
  if (state.fullPath != "/home/:tab") return "/home/${HomeTabs.overview.name}";
  return null;
}
