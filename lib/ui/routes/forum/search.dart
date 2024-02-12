import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/thread_card.dart';
import 'package:myaniapp/ui/routes/forum/__generated__/forums.req.gql.dart';

class ForumSearch extends StatefulWidget {
  const ForumSearch({
    super.key,
    this.search,
    this.categoryId,
    required this.onChange,
  });

  final String? search;
  final int? categoryId;

  final void Function(String search) onChange;

  @override
  State<ForumSearch> createState() => _ForumSearchState();
}

class _ForumSearchState extends State<ForumSearch> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.search);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.search?.isNotEmpty == true) {
      return GQLRequest(
        key: Key("${widget.search},${widget.categoryId}"),
        operationRequest: GForumsReq((b) => b
          ..requestId = "searchForums"
          ..vars.search = widget.search
          ..vars.id = widget.categoryId
          ..vars.sort.add(GThreadSort.ID_DESC)),
        builder: (context, response, error, refetch) =>
            RefreshIndicator.adaptive(
          onRefresh: refetch,
          child: GraphqlPagination(
            req: (nextPage) =>
                (response.operationRequest as GForumsReq).rebuild(
              (p0) => p0
                ..vars.page = nextPage
                ..updateResult = (previous, result) => result?.rebuild((p0) =>
                    p0
                      ..Page.threads.insertAll(
                          0,
                          previous?.Page?.threads?.whereNot((p0) =>
                                  result.Page?.threads?.contains(p0) ??
                                  false) ??
                              [])),
            ),
            pageInfo: response!.data!.Page!.pageInfo!,
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  sliver: SliverToBoxAdapter(
                    child: TextField(
                      controller: _controller,
                      onSubmitted: widget.onChange,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Search...',
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverList.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      var thread = response.data!.Page!.threads![index]!;

                      return ThreadCard(thread: thread);
                    },
                    itemCount: response.data!.Page!.threads!.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: TextField(
        controller: _controller,
        onSubmitted: widget.onChange,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: 'Search...',
        ),
      ),
    );
  }
}
