import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/app/studio/studio.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class StudioScreen extends HookConsumerWidget {
  const StudioScreen({super.key, @pathParam required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      studioQuery,
      variables:
          Variables$Query$Studio(id: id, sort: [Enum$MediaSort.START_DATE_DESC])
              .toJson(),
      parseData: Query$Studio.fromJson,
      mergeResults: defaultMergeResults("Studio.media.nodes"),
    ));
    var listSetting = ref.watch(listSettingsProvider);

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      loading: const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: Scaffold(
        body: GraphqlError(
          exception: (snapshot.errors, snapshot.linkError),
          refetch: refetch,
        ),
      ),
      builder: () => Scaffold(
        appBar: AppBar(
          title: Text(snapshot.parsedData!.Studio!.name),
          actions: [
            ListSettingButton(
              type: listSetting.studio,
              onUpdate: (type) => ref
                  .read(listSettingsProvider.notifier)
                  .update(listSetting.copyWith(studio: type)),
            ),
            const SizedBox(width: 5),
          ],
        ),
        body: PaginationView(
          isGrid: listSetting.studio == ListType.grid,
          pageInfo: snapshot.parsedData!.Studio!.media!.pageInfo!,
          req: (nextPage) => fetchMore(
            variables:
                Variables$Query$Studio.fromJson(snapshot.request!.variables)
                    .copyWith(page: nextPage)
                    .toJson(),
          ),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: GridCard.listRatio,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          builder: (context, index) {
            var anime = snapshot.parsedData!.Studio!.media!.nodes![index]!;

            return MediaCard(
              listType: listSetting.studio,
              image: anime.coverImage!.extraLarge!,
              title: anime.title!.userPreferred,
              blur: anime.isAdult ?? false,
              onTap: () => context.pushRoute(MediaRoute(
                id: anime.id,
                placeholder: anime,
              )),
              onLongPress: () => MediaSheet.show(context, anime),
            );
          },
          itemCount: snapshot.parsedData!.Studio!.media!.nodes!.length,
        ),
        // body: GraphqlPagination(
        //   pageInfo: snapshot.parsedData!.Studio!.media!.pageInfo!,
        //   req: (nextPage) => fetchMore(
        //     variables:
        //         Variables$Query$Studio.fromJson(snapshot.request!.variables)
        //             .copyWith(page: nextPage)
        //             .toJson(),
        //   ),
        //   child: MediaCards(
        //     listType: listSetting.studio,
        //     padding: listSetting.studio == ListType.grid
        //         ? const EdgeInsets.all(8)
        //         : null,
        //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //       maxCrossAxisExtent: 150,
        //       childAspectRatio: GridCard.listRatio,
        //       mainAxisSpacing: 10,
        //       crossAxisSpacing: 10,
        //     ),
        //     itemCount: snapshot.parsedData!.Studio!.media!.nodes!.length,
        //     itemBuilder: (context, index) {
        //       var anime = snapshot.parsedData!.Studio!.media!.nodes![index]!;

        //       return MediaCard(
        //         listType: listSetting.studio,
        //         image: anime.coverImage!.extraLarge!,
        //         title: anime.title!.userPreferred,
        //         blur: anime.isAdult ?? false,
        //         onTap: () => context.pushRoute(MediaRoute(
        //           id: anime.id,
        //           placeholder: anime,
        //         )),
        //         onLongPress: () => MediaSheet.show(context, anime),
        //       );
        //     },
        //   ),
        // ),
        //   child: GridView.builder(
        //     padding: const EdgeInsets.all(8),
        //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //       maxCrossAxisExtent: 150,
        //       childAspectRatio: GridCard.listRatio,
        //       mainAxisSpacing: 10,
        //       crossAxisSpacing: 10,
        //     ),
        //     itemBuilder: (context, index) {
        //       var anime = snapshot.parsedData!.Studio!.media!.nodes![index]!;

        //       return GridCard(
        //         image: anime.coverImage!.extraLarge!,
        //         title: anime.title!.userPreferred,
        //         blur: anime.isAdult ?? false,
        //         onTap: () => context.pushRoute(MediaRoute(
        //           id: anime.id,
        //           placeholder: anime,
        //         )),
        //         onLongPress: () => MediaSheet.show(context, anime),
        //       );
        //     },
        //     itemCount: snapshot.parsedData!.Studio!.media!.nodes!.length,
        //   ),
        // ),
      ),
    );
  }
}
