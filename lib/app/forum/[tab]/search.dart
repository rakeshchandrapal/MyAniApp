import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/graphql/__gen/app/forum/forums.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:mygraphql/graphql.dart';

class ForumSearchPage extends StatefulHookWidget {
  const ForumSearchPage({
    super.key,
    this.search,
    this.categoryId,
    required this.onChange,
  });

  final String? search;
  final int? categoryId;

  final void Function(String search) onChange;

  @override
  State<ForumSearchPage> createState() => _ForumSearchPageState();
}

class _ForumSearchPageState extends State<ForumSearchPage> {
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
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      forumsQuery,
      variables: Variables$Query$Forums(
        id: widget.categoryId,
        sort: [Enum$ThreadSort.ID_DESC],
        search: widget.search,
      ).toJson(),
      parseData: Query$Forums.fromJson,
      mergeResults: defaultMergeResults("Page.threads"),
    ));

    if (widget.search?.isNotEmpty == true) {
      return GQLWidget(
        // key: Key("${widget.search},${widget.categoryId}"),
        // operationRequest: GForumsReq((b) => b
        //   ..requestId = "searchForums${widget.search}${widget.categoryId}"
        //   ..vars.search = widget.search
        //   ..vars.id = widget.categoryId
        //   ..vars.sort.add(GThreadSort.ID_DESC)),
        refetch: refetch,
        response: snapshot,
        builder: () => RefreshIndicator.adaptive(
          onRefresh: refetch,
          child: PaginationView.list(
            pageInfo: snapshot!.parsedData!.Page!.pageInfo!,
            req: (nextPage) => fetchMore(
              variables:
                  Variables$Query$Forums.fromJson(snapshot.request!.variables)
                      .copyWith(page: nextPage)
                      .toJson(),
            ),
            trailing: SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
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
            builder: (context, index) {
              var thread = snapshot.parsedData!.Page!.threads![index]!;

              return ThreadCard(thread: thread);
            },
            itemCount: snapshot.parsedData!.Page!.threads!.length,
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
