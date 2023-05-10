import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/search/editor/genre.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/search/search.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/pages/search/editor/editor.dart';
import 'package:myaniapp/ui/pages/search/provider.dart';

@RoutePage()
class SearchPage extends HookConsumerWidget {
  const SearchPage({
    super.key,
    this.isAdult,
    this.type,
    this.sort,
    this.year,
    this.season,
    this.search,
    this.genres,
    this.hideOnList,
    this.tags,
  })  : assert(type
            is Enum$MediaType), // auto route for some reason doesn't get the type and just puts dynamic type
        assert(sort is List<Enum$MediaSort>),
        assert(tags is List<Query$GenreCollection$tags>);

  final List<String>? genres;
  final bool? hideOnList;
  final bool? isAdult;
  final String? search;
  final Enum$MediaSeason? season;
  final List<dynamic>? sort;
  final List<dynamic>? tags;
  final Enum$MediaType? type;
  final int? year;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var d = ref.watch(searchProvider(Variables$Query$Search()));
    var controller = useTextEditingController();

    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (d?.parsedData != null &&
            !d!.isLoading &&
            d.parsedData!.Page!.pageInfo!.hasNextPage == true &&
            notification.metrics.pixels >
                notification.metrics.maxScrollExtent - 100) {
          ref
              .read(searchProvider(Variables$Query$Search()).notifier)
              .nextPage();
        }
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: controller
              ..text = ref
                      .read(searchProvider(Variables$Query$Search()).notifier)
                      .vars
                      .search ??
                  '',
            onSubmitted: (value) => ref
                .read(searchProvider(Variables$Query$Search()).notifier)
                .update(
                  search: value,
                ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () => showSearchEditor(context),
                icon: const Icon(Icons.more_horiz),
                iconSize: 32,
              ),
            )
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (d?.isConcrete == false && d?.parsedData == null)
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                )
              else if (d?.parsedData != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MediaCards(
                    list: d!.parsedData!.Page!.media!,
                    primary: false,
                    onTap: (index) {
                      var item = d.parsedData!.Page!.media![index]!;

                      context.router.push(MediaRoute(id: item.id));
                    },
                  ),
                ),
              if (d?.isLoading == true && d?.parsedData != null)
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
