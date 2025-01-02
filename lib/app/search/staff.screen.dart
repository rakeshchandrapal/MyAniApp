import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/__gen/search_staff.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';

class StaffSearchScreen extends HookWidget {
  const StaffSearchScreen(this.search, {super.key});

  final String? search;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(
      GQLRequest(
        staffSearchQuery,
        parseData: Query$StaffSearch.fromJson,
        variables: Variables$Query$StaffSearch(
                isBirthday: search == null,
                search: search,
                sort: search?.isNotEmpty == true
                    ? [Enum$StaffSort.SEARCH_MATCH]
                    : [Enum$StaffSort.FAVOURITES_DESC, Enum$StaffSort.ID_DESC])
            .toJson(),
        mergeResults: defaultMergeResults("Page.staff"),
      ),
    );
    print([snapshot.request!.variables]);

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
                context.replace(Routes.searchStaff(v));
                // context.router.replaceNamed("/search/staff?search=$v");
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
              variables: Variables$Query$StaffSearch.fromJson(
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
                    var staff = snapshot.parsedData!.Page!.staff![index]!;

                    return MediaCard(
                      listType: ListType.grid,
                      image: staff.image!.large,
                      title: staff.name!.userPreferred,
                      onTap: () => context.push(Routes.staff(staff.id),
                          extra: {"placeholder": staff}),
                    );
                  },
                  itemCount: snapshot.parsedData!.Page!.staff!.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
