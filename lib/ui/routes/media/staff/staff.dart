import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/staff/staff.graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/utils/graphql.dart';

class MediaStaffPage extends StatefulWidget {
  const MediaStaffPage({super.key, required this.id});

  final int id;

  @override
  State<MediaStaffPage> createState() => _MediaStaffPageState();
}

class _MediaStaffPageState extends State<MediaStaffPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ScrollToTop(
      builder: (scrollController) => Query$Staff$Widget(
        options: Options$Query$Staff(
          variables: Variables$Query$Staff(mediaId: widget.id),
        ),
        builder: queryBuilder(
          (result, [fetchMore, refetch]) => GraphqlPagination(
            pageInfo: result.parsedData!.Media!.staff!.pageInfo!,
            fetchMore: (nextPage) => fetchMore!(
              FetchMoreOptions$Query$Staff(
                variables: Variables$Query$Staff(page: nextPage),
                updateQuery: (previousResultData, fetchMoreResultData) {
                  var list = [
                    ...previousResultData!['Media']!['staff']['edges'],
                    ...fetchMoreResultData!['Media']!['staff']['edges'],
                  ];
                  fetchMoreResultData['Media']!['staff']['edges'] = list;
                  return fetchMoreResultData;
                },
              ),
            ),
            child: ListView.builder(
              // controller: scrollController,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                var staff = result.parsedData!.Media!.staff!.edges![index]!;

                return StaffCard(
                  staff: staff,
                );
              },
              itemCount: result.parsedData!.Media!.staff!.edges!.length,
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class StaffCard extends StatelessWidget {
  const StaffCard({
    super.key,
    required this.staff,
  });

  final Query$Staff$Media$staff$edges staff;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Theme.of(context).colorScheme.surfaceVariant,
          width: 1,
        ),
      ),
      elevation: 1,
      surfaceTintColor: Theme.of(context).colorScheme.surfaceVariant,
      child: InkWell(
        onTap: () => context.push('/staff/${staff.node!.id}'),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 90,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: CImage(
                    imageUrl: staff.node!.image!.large!,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(staff.node!.name!.userPreferred!),
                    if (staff.role != null)
                      Text(
                        staff.role!,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(fontSize: 10),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
