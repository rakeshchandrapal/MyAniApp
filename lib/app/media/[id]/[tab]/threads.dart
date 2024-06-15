import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/media/__generated__/reviews.req.gql.dart';
import 'package:myaniapp/app/media/__generated__/threads.req.gql.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/graphql/widget.dart';

class MediaThreadsPage extends StatefulWidget {
  const MediaThreadsPage({super.key, required this.mediaId});

  final int mediaId;

  @override
  State<MediaThreadsPage> createState() => _MediaThreadsPageState();
}

class _MediaThreadsPageState extends State<MediaThreadsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GQLRequest(
      operationRequest: GMediaThreadsReq((b) => b
        ..requestId = "mediaReviews${widget.mediaId}"
        ..vars.mediaId = widget.mediaId),
      builder: (context, response, error, refetch) => GraphqlPagination(
        pageInfo: response!.data!.Page!.pageInfo!,
        req: (nextPage) => (response.operationRequest as GMediaReviewsReq)
            .rebuild((p0) => p0
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Media.reviews.nodes.insertAll(
                    0,
                    previous?.Media?.reviews?.nodes?.whereNot((p0) =>
                            result.Media?.reviews?.nodes?.contains(p0) ??
                            false) ??
                        []))),
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            var thread = response.data!.Page!.threads![index]!;

            return ThreadCard(thread: thread);
          },
          itemCount: response.data!.Page!.threads!.length,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
