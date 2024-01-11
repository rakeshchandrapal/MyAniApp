import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';

class GraphqlPagination extends StatelessWidget {
  const GraphqlPagination({
    super.key,
    required this.pageInfo,
    this.depth,
    required this.fetchMore,
    required this.child,
    this.isLoading,
  });

  final Fragment$PageInfo pageInfo;
  final int? depth;
  final Future Function(int nextPage) fetchMore;
  final Widget child;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    bool loading = isLoading ?? false;
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (depth != null && notification.depth != depth) return false;

        if (notification.metrics.pixels >
                notification.metrics.maxScrollExtent * .95 &&
            pageInfo.hasNextPage == true &&
            loading == false) {
          loading = true;
          fetchMore((pageInfo.currentPage ?? 1) + 1)
              .then((value) => loading = false);
        }
        return false;
      },
      child: child,
    );
  }
}
