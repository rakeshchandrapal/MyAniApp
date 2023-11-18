import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/staff/staff.graphql.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';

@RoutePage()
class MediaStaffPage extends StatelessWidget {
  const MediaStaffPage({super.key, @PathParam.inherit('id') required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Query$Staff$Widget(
      options: Options$Query$Staff(
        variables: Variables$Query$Staff(mediaId: id),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.parsedData == null) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (result.hasException) {
          return GraphqlError(exception: result.exception!);
        }

        return Pagination(
          pageInfo: result.parsedData!.Media!.staff!.pageInfo!,
          opts: FetchMoreOptions$Query$Staff(
            variables: Variables$Query$Staff(
                page: result.parsedData!.Media!.staff!.pageInfo!.currentPage! +
                    1),
            updateQuery: (previousResultData, fetchMoreResultData) {
              var list = [
                ...previousResultData!['Media']!['staff']['edges'],
                ...fetchMoreResultData!['Media']!['staff']['edges'],
              ];
              fetchMoreResultData['Media']!['staff']['edges'] = list;
              return fetchMoreResultData;
            },
          ),
          fetchMore: fetchMore!,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              var staff = result.parsedData!.Media!.staff!.edges![index]!;

              return StaffCard(
                staff: staff,
              );
            },
            itemCount: result.parsedData!.Media!.staff!.edges!.length,
          ),
        );
      },
    );
  }
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
        onTap: () => context.pushRoute(StaffRoute(id: staff.node!.id)),
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
