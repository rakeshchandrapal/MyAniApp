import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/staff/staff.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/card_sheet.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';

class Voices extends StatelessWidget {
  const Voices({
    super.key,
    required this.hook,
    required this.staff,
    required this.onList,
    required this.onListTap,
  });

  final QueryHookResult hook;
  final bool onList;
  final VoidCallback onListTap;
  final Query$Staff$Staff staff;

  @override
  Widget build(BuildContext context) {
    return Pagination(
      hook: hook,
      pageInfo: staff.characterMedia!.pageInfo!,
      opts: FetchMoreOptions$Query$Staff(
        variables: Variables$Query$Staff(
          characterPage: staff.characterMedia!.pageInfo!.currentPage! + 1,
        ),
        updateQuery: (previousResultData, fetchMoreResultData) {
          var list = [
            ...previousResultData!['Staff']!['characterMedia']['edges'],
            ...fetchMoreResultData!['Staff']!['characterMedia']['edges'],
          ];
          fetchMoreResultData['Staff']!['characterMedia']['edges'] = list;
          return fetchMoreResultData;
        },
      ),
      child: _Appearances(
        staff: staff,
        onList: onList,
        onListTap: onListTap,
      ),
    );
  }
}

class _Appearances extends StatelessWidget {
  const _Appearances({
    required this.staff,
    required this.onList,
    required this.onListTap,
  });

  final bool onList;
  final VoidCallback onListTap;
  final Query$Staff$Staff staff;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var years = _Media.sort(staff.characterMedia!.edges!
        .whereType<Query$Staff$Staff$characterMedia$edges>()
        .toList());

    // print(years.first.year);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Voices',
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
            child: ListView.separated(
              primary: true,
              // physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) {
                var item = years[index];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.year == 0 ? 'TBA' : item.year.toString(),
                      style: theme.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GridCards(
                      primary: false,
                      card: (cardIndex) {
                        var item = years[index].medias[cardIndex];

                        return GridCard(
                          imageUrl: item.characters!.first!.image!.large!,
                          index: cardIndex,
                          title: item.characters!.first!.name!.userPreferred!,
                          underTitle: (index, style) =>
                              Text(item.node!.title!.userPreferred!),
                          onTap: (index) => context.router.push(
                              CharacterRoute(id: item.characters!.first!.id)),
                          chips: (index) => [
                            GestureDetector(
                              onLongPress: () =>
                                  showCardSheet(context, item.node!),
                              onTap: () => context.router
                                  .push(MediaRoute(id: item.node!.id)),
                              child: ClipRRect(
                                borderRadius: imageRadius,
                                child: CImage(
                                  imageUrl: item.node!.coverImage!.large!,
                                  height: 100,
                                  width: 70,
                                ),
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: years[index].medias.length,
                    ),
                  ],
                );
              },
              itemCount: years.length,
            ),
          ),
        ),
      ],
    );
  }
}

// used to sort media by year
class _Media {
  const _Media(this.medias, this.year);

  final List<Query$Staff$Staff$characterMedia$edges> medias;
  final int year;

  static List<_Media> sort(List<Query$Staff$Staff$characterMedia$edges> edges) {
    List<_Media> list = [];

    for (var edge in edges) {
      var index = list
          .indexWhere((element) => element.year == edge.node!.startDate?.year);

      if (index != -1) {
        list[index].medias.add(edge);
      } else if (edge.node!.startDate?.year == null) {
        var tba = list.indexWhere((element) => element.year == 0);

        if (tba != -1) {
          list[tba].medias.add(edge);
        } else {
          list.insert(0, _Media([edge], 0));
        }

        continue;
      } else {
        // print(edge.node!.title!.userPreferred);
        list.add(_Media([edge], edge.node!.startDate!.year!));
      }
    }

    return list;
  }
}
