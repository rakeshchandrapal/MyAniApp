import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/forum/forums.graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/thread_card.dart';
import 'package:myaniapp/utils/graphql.dart';

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
      return Query$Forums$Widget(
        options: Options$Query$Forums(
          variables: Variables$Query$Forums(
            search: widget.search,
            id: widget.categoryId,
            sort: [Enum$ThreadSort.ID_DESC],
          ),
        ),
        builder: queryBuilder(
          (result, [fetchMore, refetch]) {
            return RefreshIndicator.adaptive(
              onRefresh: refetch!,
              child: Pagination(
                  fetchMore: fetchMore!,
                  pageInfo: result.parsedData!.Page!.pageInfo!,
                  opts: FetchMoreOptions$Query$Forums(
                    updateQuery: (previousResultData, fetchMoreResultData) {
                      var list = [
                        ...previousResultData!['Page']['threads'],
                        ...fetchMoreResultData!['Page']['threads']
                      ];

                      fetchMoreResultData['Page']['threads'] = list;

                      return fetchMoreResultData;
                    },
                    variables: Variables$Query$Forums(
                      page: (result.parsedData!.Page!.pageInfo!.currentPage ??
                              1) +
                          1,
                    ),
                  ),
                  child: CustomScrollView(
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
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
                            var thread =
                                result.parsedData!.Page!.threads![index]!;

                            return ThreadCard(thread: thread);
                          },
                          itemCount: result.parsedData!.Page!.threads!.length,
                        ),
                      ),
                    ],
                  )),
            );
          },
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: TextField(
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
