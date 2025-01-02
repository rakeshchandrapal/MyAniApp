import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__gen/fragments/page_info.graphql.dart';

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

class PaginationView extends StatefulWidget {
  const PaginationView({
    super.key,
    required this.isGrid,
    this.gridDelegate,
    required this.req,
    required this.pageInfo,
    this.depth,
    this.trailing,
    required this.builder,
    required this.itemCount,
    this.padding,
  });
  const PaginationView.list({
    super.key,
    required this.req,
    this.depth,
    required this.pageInfo,
    required this.builder,
    required this.itemCount,
    this.trailing,
    this.padding,
  })  : isGrid = false,
        gridDelegate = null;
  const PaginationView.grid({
    super.key,
    required this.req,
    this.depth,
    required this.pageInfo,
    required this.gridDelegate,
    required this.builder,
    required this.itemCount,
    this.trailing,
    this.padding,
  }) : isGrid = true;

  final bool isGrid;
  final SliverGridDelegate? gridDelegate;
  final int itemCount;
  final Widget Function(BuildContext context, int index) builder;
  final Fragment$PageInfo pageInfo;
  final int? depth;
  final FutureOr Function(int nextPage) req;
  final Widget? trailing;
  final EdgeInsets? padding;

  @override
  State<PaginationView> createState() => _PaginationViewState();
}

class _PaginationViewState extends State<PaginationView> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    // if (!widget.isGrid) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if ((widget.depth != null && notification.depth != widget.depth) ||
            notification.metrics.axisDirection != AxisDirection.down) {
          return false;
        }

        if (notification.metrics.pixels >
                notification.metrics.maxScrollExtent * .95 &&
            widget.pageInfo.hasNextPage == true &&
            isLoading == false) {
          setState(() => isLoading = true);
          Future(() async {
            await widget.req((widget.pageInfo.currentPage ?? 1) + 1);
            setState(() => isLoading = false);
          });
        }
        return false;
      },
      child: CustomScrollView(
        slivers: [
          if (widget.trailing != null) widget.trailing!,
          if (widget.isGrid)
            SliverPadding(
              padding: widget.padding ?? EdgeInsets.zero,
              sliver: SliverGrid.builder(
                gridDelegate: widget.gridDelegate!,
                itemBuilder: widget.builder,
                itemCount: widget.itemCount,
              ),
            )
          else
            SliverPadding(
              padding: widget.padding ?? EdgeInsets.zero,
              sliver: SliverList.builder(
                itemBuilder: widget.builder,
                itemCount: widget.itemCount,
              ),
            ),
          if (isLoading)
            const SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            )
        ],
      ),
    );
  }
}
