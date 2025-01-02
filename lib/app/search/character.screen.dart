import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/__gen/search_character.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';

class CharacterSearchScreen extends HookWidget {
  const CharacterSearchScreen(this.search, {super.key});

  final String? search;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(
      GQLRequest(
        characterSearchQuery,
        parseData: Query$CharacterSearch.fromJson,
        variables: Variables$Query$CharacterSearch(
                isBirthday: search == null,
                search: search,
                sort: search?.isNotEmpty == true
                    ? [Enum$CharacterSort.SEARCH_MATCH]
                    : [
                        Enum$CharacterSort.FAVOURITES_DESC,
                        Enum$CharacterSort.ID_DESC
                      ])
            .toJson(),
        mergeResults: defaultMergeResults("Page.characters"),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        scrolledUnderElevation: 0,
        shape: UnderlineInputBorder(
          borderSide: BorderSide(color: context.theme.dividerColor),
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: SafeArea(
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: BackButton(),
                ),
                hintText: "Search",
                contentPadding: const EdgeInsets.all(20),
              ),
              onSubmitted: (value) {
                // query!.search = value.isEmpty ? null : value;
                var v = value.isNotEmpty ? value : null;
                context.replace(Routes.searchCharacter(v));
                // setState(() => search = v);
                // context.router.replaceNamed("/search/media${query.toString()}");
              },
            ),
          ),
        ),
      ),
      body: GQLWidget(
        response: snapshot,
        refetch: refetch,
        builder: () => GraphqlPagination(
          pageInfo: snapshot.parsedData!.Page!.pageInfo!,
          req: (nextPage) => fetchMore(
              variables: Variables$Query$CharacterSearch.fromJson(
                      snapshot.request!.variables)
                  .copyWith(page: nextPage)
                  .toJson()),
          child: CustomScrollView(
            slivers: [
              if (search == null)
                SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      "Birthdays",
                      style: context.theme.textTheme.titleLarge?.bold,
                    ),
                  ),
                ),
              SliverPadding(
                padding: EdgeInsets.all(8),
                sliver: SliverGrid.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: GridCard.listRatio,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    var character =
                        snapshot.parsedData!.Page!.characters![index]!;

                    return MediaCard(
                      listType: ListType.grid,
                      image: character.image!.large,
                      title: character.name!.userPreferred,
                      onTap: () => context.push(Routes.character(character.id),
                          extra: {"placeholder": character}),
                    );
                  },
                  itemCount: snapshot.parsedData!.Page!.characters!.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
