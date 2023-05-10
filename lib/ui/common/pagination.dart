import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';

class Pagination extends StatelessWidget {
  const Pagination({
    super.key,
    required this.child,
    required this.pageInfo,
    required this.hook,
    required this.opts,
  });

  final Widget child;
  final QueryHookResult hook;
  final FetchMoreOptions opts;
  final Fragment$PageInfo pageInfo;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (!hook.result.isLoading &&
            notification.metrics.pixels >
                notification.metrics.maxScrollExtent - 100 &&
            pageInfo.hasNextPage == true) {
          hook.fetchMore(opts);
        }
        return false;
      },
      child: child,
    );
  }
}
