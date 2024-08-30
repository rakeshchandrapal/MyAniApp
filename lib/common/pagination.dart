import 'dart:async';

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/page_info.graphql.dart';
import 'package:myaniapp/main.dart';

class GraphqlPagination extends StatefulWidget {
  const GraphqlPagination({
    super.key,
    required this.pageInfo,
    this.depth,
    required this.req,
    required this.child,
    this.isLoading,
  });

  final Fragment$PageInfo pageInfo;
  final int? depth;
  final FutureOr Function(int nextPage) req;
  final Widget child;
  final bool? isLoading;

  @override
  State<GraphqlPagination> createState() => _GraphqlPaginationState();
}

class _GraphqlPaginationState extends State<GraphqlPagination> {
  late bool loading = widget.isLoading ?? false;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if ((widget.depth != null && notification.depth != widget.depth) ||
            notification.metrics.axisDirection != AxisDirection.down) {
          return false;
        }

        if (notification.metrics.pixels >
                notification.metrics.maxScrollExtent * .95 &&
            widget.pageInfo.hasNextPage == true &&
            loading == false) {
          Future(() async {
            setState(() => loading = true);
            await widget.req((widget.pageInfo.currentPage ?? 1) + 1);
            setState(() => loading = false);
          });
          // client.requestController.add(req((pageInfo.currentPage ?? 1) + 1));
          // print(req((pageInfo.currentPage ?? 1) + 1));
        }
        return false;
      },
      child: widget.child,
    );
  }
}
