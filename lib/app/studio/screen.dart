import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/__gen/studio.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';

class StudioScreen extends HookConsumerWidget {
  const StudioScreen({super.key, required this.id});

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
              onTap: () => context
                  .push(Routes.media(anime.id), extra: {"placeholder": anime}),
              onLongPress: () => MediaSheet.show(context, anime),
            );
          },
          itemCount: snapshot.parsedData!.Studio!.media!.nodes!.length,
        ),
      ),
    );
  }
}
