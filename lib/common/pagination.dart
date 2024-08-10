import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart';
import 'package:myaniapp/main.dart';

class GraphqlPagination extends StatelessWidget {
  const GraphqlPagination({
    super.key,
    required this.pageInfo,
    this.depth,
    required this.req,
    required this.child,
    this.isLoading,
  });

  final GPageInfo pageInfo;
  final int? depth;
  final OperationRequest Function(int nextPage) req;
  final Widget child;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    bool loading = isLoading ?? false;
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if ((depth != null && notification.depth != depth) ||
            notification.metrics.axisDirection != AxisDirection.down) {
          return false;
        }

        if (notification.metrics.pixels >
                notification.metrics.maxScrollExtent * .95 &&
            pageInfo.hasNextPage == true &&
            loading == false) {
          loading = true;
          client.requestController.add(req((pageInfo.currentPage ?? 1) + 1));
          // print(req((pageInfo.currentPage ?? 1) + 1));
        }
        return false;
      },
      child: child,
    );
  }
}
