import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/custom_dropdown.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/media_characters.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';

class MediaCharactersTab extends HookWidget {
  const MediaCharactersTab({super.key, required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      mediaCharactersQuery,
      variables: Variables$Query$MediaCharacters(mediaId: mediaId).toJson(),
      parseData: Query$MediaCharacters.fromJson,
      mergeResults: defaultMergeResults("Media.characters.edges"),
    ));
    var availableLangs = useMemoized(() {
      var langs = [];
      if (snapshot.parsedData == null) return langs;
      snapshot
          .parsedData!.Media!.characters!.edges!.firstOrNull?.voiceActorRoles
          ?.forEach((element) {
        var language =
            '${element!.voiceActor!.languageV2!}${element.dubGroup != null ? ' (${element.dubGroup})' : ''}';

        if (!langs.contains(language)) {
          langs.add(language);
        }
      });
      return langs;
    }, [snapshot.parsedData]);
    var selectedLang = useState("Japanese");

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () => Show(
        when: snapshot.parsedData!.Media!.characters!.edges!.isNotEmpty,
        fallback: Center(child: Text("No characters")),
        child: () => PaginationView.list(
          pageInfo: snapshot.parsedData!.Media!.characters!.pageInfo!,
          req: (nextPage) => fetchMore(
              variables: Variables$Query$MediaCharacters.fromJson(
                      snapshot.request!.variables)
                  .copyWith(page: nextPage)
                  .toJson()),
          trailing: availableLangs.isNotEmpty
              ? SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverToBoxAdapter(
                    child: SheetDropdownMenu<String>(
                      value: selectedLang.value,
                      onChanged: (values) => selectedLang.value = values.first,
                      items: availableLangs.map(
                        (e) => DropdownMenuEntry(
                          value: e,
                          label: e.toString().capitalize(),
                        ),
                      ),
                    ),
                  ),
                )
              : null,
          builder: (context, index) {
            var character =
                snapshot.parsedData!.Media!.characters!.edges![index]!;
            // print(character.toJson());
            var vaS = character.voiceActorRoles!.where((p0) =>
                '${p0!.voiceActor!.languageV2!}${p0.dubGroup != null ? ' (${p0.dubGroup})' : ''}' ==
                selectedLang.value);
            if (vaS.isEmpty) vaS = [null];

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var va in vaS)
                  Card.outlined(
                    child: InkWell(
                      borderRadius: imageRadius,
                      onTap: () => context.push(
                          Routes.character(character.node!.id),
                          extra: {"placeholder": character.node}),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: imageRadius,
                                child: CachedImage(
                                  character.node!.image!.large!,
                                  height: 150,
                                  width: 100,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      character.node!.name!.userPreferred!,
                                      style: context.theme.textTheme.labelLarge,
                                    ),
                                    if (character.role != null)
                                      Text(
                                        character.role!.name,
                                        style:
                                            context.theme.textTheme.labelMedium,
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          if (va != null)
                            Positioned(
                              right: 0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          va.voiceActor!.name!.userPreferred!,
                                          style: context
                                              .theme.textTheme.labelLarge,
                                        ),
                                        if (va.roleNotes != null)
                                          Text(
                                            va.roleNotes!,
                                            style: context
                                                .theme.textTheme.labelMedium,
                                          ),
                                      ],
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: imageRadius,
                                    child: InkWellImage(
                                      onTap: () => context.push(
                                        Routes.staff(va.voiceActor!.id),
                                        extra: {"placeholder": va.voiceActor},
                                      ),
                                      child: CachedImage(
                                        va.voiceActor!.image!.large!,
                                        height: 150,
                                        width: 100,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  )
              ],
            );
          },
          itemCount: snapshot.parsedData!.Media!.characters!.edges!.length,
        ),
      ),
    );
  }
}
