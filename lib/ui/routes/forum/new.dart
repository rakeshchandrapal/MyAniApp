import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/thread_card.dart';
import 'package:myaniapp/ui/routes/forum/__generated__/forums.req.gql.dart';

class NewForums extends StatelessWidget {
  const NewForums({super.key, this.categoryId});

  final int? categoryId;

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      key: Key(categoryId?.toString() ?? ""),
      operationRequest: GForumsReq((b) => b
        ..requestId = "newForums"
        ..vars.sort.add(GThreadSort.CREATED_AT_DESC)
        ..vars.id = categoryId),
      builder: (context, response, error, refetch) => RefreshIndicator.adaptive(
        onRefresh: refetch,
        child: GraphqlPagination(
          req: (nextPage) => (response.operationRequest as GForumsReq).rebuild(
            (p0) => p0
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Page.threads.insertAll(
                    0,
                    previous?.Page?.threads?.whereNot((p0) =>
                            result.Page?.threads?.contains(p0) ?? false) ??
                        [])),
          ),
          pageInfo: response!.data!.Page!.pageInfo!,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
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
      ),
    );
  }
}
