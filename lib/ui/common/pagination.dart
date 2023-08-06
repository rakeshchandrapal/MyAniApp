import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';

class Pagination extends StatelessWidget {
  Pagination({
    super.key,
    required this.child,
    required this.pageInfo,
    required this.opts,
    required this.fetchMore,
    this.isLoading,
    this.depth,
  });

  final Widget child;
  final FetchMoreOptions opts;
  final Fragment$PageInfo pageInfo;
  final FetchMore fetchMore;
  final int? depth;
  bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (depth != null && notification.depth != depth) return false;

        if (notification.metrics.pixels >
                notification.metrics.maxScrollExtent - 100 &&
            pageInfo.hasNextPage == true &&
            (isLoading == false || isLoading == null)) {
          isLoading = true;
          fetchMore(opts);
        }
        return false;
      },
      child: child,
    );
  }
}
