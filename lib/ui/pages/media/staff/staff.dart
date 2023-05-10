import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/staff/staff.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';

class Staff extends HookWidget {
  const Staff({super.key, required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var hook = useQuery$Staff(
      Options$Query$Staff(
        variables: Variables$Query$Staff(mediaId: mediaId),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => Pagination(
        hook: hook,
        pageInfo: result.Media!.staff!.pageInfo!,
        opts: FetchMoreOptions$Query$Staff(
          variables: Variables$Query$Staff(
              page: result.Media!.staff!.pageInfo!.currentPage! + 1),
          updateQuery: (previousResultData, fetchMoreResultData) {
            var list = [
              ...previousResultData!['Media']!['staff']['edges'],
              ...fetchMoreResultData!['Media']!['staff']['edges'],
            ];
            fetchMoreResultData['Media']!['staff']['edges'] = list;
            return fetchMoreResultData;
          },
        ),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            var item = result.Media!.staff!.edges![index];

            return StaffCard(
              staff: item!,
            );
          },
          itemCount: result.Media!.staff!.edges!.length,
        ),
      ),
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
          color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.7),
          width: 0.7,
        ),
      ),
      surfaceTintColor: Theme.of(context).colorScheme.surfaceVariant,
      child: InkWell(
        onTap: () => context.router.push(
          StaffRoute(id: staff.node!.id),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: CImage(
                imageUrl: staff.node!.image!.large!,
                height: 100,
                width: 70,
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
