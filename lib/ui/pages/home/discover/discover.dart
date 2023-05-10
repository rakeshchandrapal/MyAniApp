import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/home/discover/discover.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/card_sheet.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/utils/utils.dart';

@RoutePage()
class DiscoverPage extends HookWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    var season = Season();
    var hook = useQuery$Discovery(
      Options$Query$Discovery(
        variables: Variables$Query$Discovery(
          nextYear: season.nextYear,
          nextSeason: season.nextSeason,
          season: season.season,
          seasonYear: season.year,
        ),
      ),
    );

    return RefreshIndicator(
      onRefresh: hook.refetch,
      child: Graphql(
        hook: hook,
        builder: (result) {
          return ListView(
            children: [
              ElevatedButton(
                onPressed: () => context.router.push(SearchRoute()),
                child: const Text('Search'),
              ),
              _List(
                title: 'Trending',
                list: result.trending!.media!
                    .whereType<Fragment$Media>()
                    .toList(),
                onViewMore: () {},
              ),
              _List(
                title: 'Popular This Season',
                list:
                    result.season!.media!.whereType<Fragment$Media>().toList(),
                onViewMore: () {},
              ),
              _List(
                title: 'Popular Next Season',
                list: result.nextSeason!.media!
                    .whereType<Fragment$Media>()
                    .toList(),
                onViewMore: () {},
              ),
              _List(
                title: 'All Time Popular',
                list:
                    result.popular!.media!.whereType<Fragment$Media>().toList(),
                onViewMore: () {},
              ),
            ],
          );
        },
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({
    required this.title,
    required this.list,
    this.onViewMore,
  });

  final List<Fragment$Media> list;
  final VoidCallback? onViewMore;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              if (onViewMore != null)
                TextButton(
                    onPressed: onViewMore, child: const Text('View More'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
              itemBuilder: (context, index) {
                var item = list[index];

                return SizedBox(
                  width: 110,
                  child: GridCard(
                    title: item.title!.userPreferred,
                    imageUrl: item.coverImage!.large!,
                    index: index,
                    onTap: (index) =>
                        context.router.push(MediaRoute(id: item.id)),
                    onLongPress: (index) => showCardSheet(context, item),
                  ),
                );
              },
              itemCount: list.length,
            ),
          ),
        ),
      ],
    );
  }
}
