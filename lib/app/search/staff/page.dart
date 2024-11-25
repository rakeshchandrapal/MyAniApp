import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/search/staff/staff.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class StaffSearchScreen extends StatefulHookWidget {
  const StaffSearchScreen({super.key});

  @override
  State<StaffSearchScreen> createState() => _StaffSearchScreenState();
}

class _StaffSearchScreenState extends State<StaffSearchScreen> {
  String? search;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => setState(
        () => search = context.routeData.queryParams.optString("search")));
  }

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(
      GQLRequest(staffSearchQuery,
          parseData: Query$StaffSearch.fromJson,
          variables: Variables$Query$StaffSearch(
                  isBirthday: search == null,
                  search: search,
                  sort: search?.isNotEmpty == true
                      ? [Enum$StaffSort.FAVOURITES_DESC, Enum$StaffSort.ID_DESC]
                      : [Enum$StaffSort.SEARCH_MATCH])
              .toJson()),
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
              // focusNode: _focusNode,
              autofocus: false,
              // onTap: () => _focusNode.requestFocus(),
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
                context.router.replaceNamed("/search/staff?search=$value");
                setState(() => search = value);
                // context.router.replaceNamed("/search/media${query.toString()}");
              },
            ),
          ),
        ),
      ),
      body: GQLWidget(
        response: snapshot,
        refetch: refetch,
        builder: () => CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(8),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Birthdays",
                  style: context.theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
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
                    onTap: () => context.pushRoute(
                      StaffRoute(id: staff.id, placeholder: staff),
                    ),
                  );
                },
                itemCount: snapshot.parsedData!.Page!.staff!.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
