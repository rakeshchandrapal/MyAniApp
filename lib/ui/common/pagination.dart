import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
// import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';

class GraphqlPagination extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    bool loading = isLoading ?? false;
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (depth != null && notification.depth != depth) return false;

        if (notification.metrics.pixels >
                notification.metrics.maxScrollExtent * .95 &&
            pageInfo.hasNextPage == true &&
            loading == false) {
          loading = true;
          ref
              .read(ferryClientProvider)
              .requestController
              .add(req((pageInfo.currentPage ?? 1) + 1));
          // print(req((pageInfo.currentPage ?? 1) + 1));
        }
        return false;
      },
      child: child,
    );
  }
}
