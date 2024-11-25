import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/app/search/media/editor.dart';
import 'package:myaniapp/app/search/media/query.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/search/media/mediaSearch.graphql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, this.autofocus});

  final bool? autofocus;

  @override
  Widget build(BuildContext context) {
    return SearchView(autofocus: autofocus);
  }
}

class SearchView extends ConsumerStatefulWidget {
  const SearchView({super.key, this.autofocus});

  // final MediaSearchQuery query;
  final bool? autofocus;

  @override
  ConsumerState<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView> {
  final FocusNode _focusNode = FocusNode();
  MediaSearchQuery? query;

  @override
  void initState() {
    super.initState();
    postFrameThings();
  }

  void postFrameThings() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      query = await MediaSearchQuery.from(context.routeData.queryParams.rawMap);

      if (widget.autofocus == true) {
        _focusNode.requestFocus();
      }

      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(SearchView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (query != null &&
        !jsonMapEquals(context.routeData.queryParams.rawMap, query!.rawQuery)) {
      Future(() async {
        query =
            await MediaSearchQuery.from(context.routeData.queryParams.rawMap);
        setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var listSetting = ref.watch(listSettingsProvider.select(
      (value) => value.search,
    ));

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
              focusNode: _focusNode,
              autofocus: false,
              onTap: () => _focusNode.requestFocus(),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: BackButton(),
                ),
                hintText: "Search",
                contentPadding: const EdgeInsets.all(20),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: IconButton(
                    onPressed: () {
                      MediaSearchEditor.show(context, query!);
                      _focusNode.unfocus();
                    },
                    icon: const Icon(Icons.more_horiz),
                  ),
                ),
              ),
              onSubmitted: (value) {
                query!.search = value.isEmpty ? null : value;
                context.router.replaceNamed("/search/media${query.toString()}");
              },
            ),
          ),
        ),
      ),
      body: Show(
        when: !(query?.isEmpty ?? true),
        child: () => HookBuilder(
          builder: (context) {
            var (:snapshot, :fetchMore, :refetch) = c.useQuery(query!.toReq());

            return RefreshIndicator.adaptive(
              onRefresh: refetch,
              child: GQLWidget(
                key: Key(query.toString()),
                refetch: refetch,
                response: snapshot,
                builder: () => GraphqlPagination(
                  pageInfo: snapshot.parsedData!.Page!.pageInfo!,
                  req: (nextPage) => fetchMore(
                      variables: Variables$Query$Search.fromJson(
                              snapshot.request!.variables)
                          .copyWith(page: nextPage)
                          .toJson()),
                  child: MediaCards(
                    listType: listSetting,
                    padding:
                        EdgeInsets.all(listSetting == ListType.grid ? 8 : 0),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: GridCard.listRatio,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      var media = snapshot.parsedData!.Page!.media![index]!;

                      return MediaCard(
                        listType: listSetting,
                        image: media.coverImage!.extraLarge!,
                        title: media.title!.userPreferred!,
                        blur: media.isAdult!,
                        onLongPress: () => MediaSheet.show(context, media),
                        onTap: () => context.pushRoute(
                            MediaRoute(id: media.id, placeholder: media)),
                        // onTap: () => context
                        //     .push("/media/${media.id}/info", extra: {"media": media}),
                      );
                    },
                    itemCount: snapshot.parsedData!.Page!.media!.length,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
