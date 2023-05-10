import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/staff/staff.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/card_sheet.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/pagination.dart';

class Production extends StatelessWidget {
  const Production({
    super.key,
    required this.medias,
    required this.hook,
    required this.onList,
    required this.onListTap,
  });

  final QueryHookResult hook;
  final Query$Staff$Staff$staffMedia medias;
  final bool onList;
  final VoidCallback onListTap;

  @override
  Widget build(BuildContext context) {
    return Pagination(
      hook: hook,
      pageInfo: medias.pageInfo!,
      opts: FetchMoreOptions$Query$Staff(
        variables: Variables$Query$Staff(
          staffPage: medias.pageInfo!.currentPage! + 1,
        ),
        updateQuery: (previousResultData, fetchMoreResultData) {
          var list = [
            ...previousResultData!['Staff']!['staffMedia']['edges'],
            ...fetchMoreResultData!['Staff']!['staffMedia']['edges'],
          ];
          fetchMoreResultData['Staff']!['staffMedia']['edges'] = list;
          return fetchMoreResultData;
        },
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Staff Roles',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                GestureDetector(
                  onTap: onListTap,
                  child: Row(
                    children: [
                      Checkbox(
                        value: onList,
                        onChanged: (value) => onListTap(),
                      ),
                      const Text('On My List'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: GridCards(
                card: (index) {
                  var item = medias.edges![index]!;

                  return GridCard(
                    imageUrl: item.node!.coverImage!.large!,
                    index: index,
                    title: item.node!.title!.userPreferred,
                    underTitle: (index, style) => Text(item.staffRole ?? ''),
                    onLongPress: (index) => showCardSheet(context, item.node!),
                    onTap: (index) =>
                        context.router.push(MediaRoute(id: item.node!.id)),
                    chips: (index) {
                      return [
                        GridChip(
                          bottom: 5,
                          right: 5,
                          child: Text(
                            item.node!.type!.name.capitalize(),
                          ),
                        ),
                      ];
                    },
                  );
                },
                itemCount: medias.edges!.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
