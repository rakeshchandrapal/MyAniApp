import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/custom_dropdown.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/media/characters.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class MediaCharactersScreen extends HookWidget {
  const MediaCharactersScreen(
      {super.key, @PathParam.inherit("id") required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      mediaCharactersQuery,
      variables: Variables$Query$MediaCharacters(mediaId: mediaId).toJson(),
      parseData: Query$MediaCharacters.fromJson,
      mergeResults: defaultMergeResults("Media.characters.edges"),
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () {
        return GraphqlPagination(
          pageInfo: snapshot!.parsedData!.Media!.characters!.pageInfo!,
          req: (nextPage) => fetchMore(
              variables: Variables$Query$MediaCharacters.fromJson(
                      snapshot.request!.variables)
                  .copyWith(page: nextPage)
                  .toJson()),
          child: _CharacterList(
            characters: snapshot.parsedData!.Media!.characters!,
          ),
        );
      },
    );
  }
}

class _CharacterList extends StatefulWidget {
  const _CharacterList({
    required this.characters,
  });

  final Query$MediaCharacters$Media$characters characters;

  @override
  State<_CharacterList> createState() => _CharacterListState();
}

class _CharacterListState extends State<_CharacterList> {
  List<String> availableLangs = [];
  String selectedLang = "Japanese";

  @override
  void initState() {
    super.initState();
    widget.characters.edges!.firstOrNull?.voiceActorRoles?.forEach((element) {
      var language =
          '${element!.voiceActor!.languageV2!}${element.dubGroup != null ? ' (${element.dubGroup})' : ''}';

      if (!availableLangs.contains(language)) {
        availableLangs.add(language);
      }
    });
    availableLangs.sort();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        if (availableLangs.isNotEmpty)
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverToBoxAdapter(
              child: SheetDropdownMenu(
                value: selectedLang,
                onChanged: (values) =>
                    setState(() => selectedLang = values.first),
                items: availableLangs.map(
                  (e) => DropdownMenuEntry(
                    value: e,
                    label: e.capitalize(),
                  ),
                ),
              ),
            ),
          ),
        SliverList.separated(
          itemBuilder: (context, index) {
            var character = widget.characters.edges![index]!;
            var vaS = character.voiceActorRoles!.where((p0) =>
                '${p0!.voiceActor!.languageV2!}${p0.dubGroup != null ? ' (${p0.dubGroup})' : ''}' ==
                selectedLang);
            if (vaS.isEmpty) vaS = [null];

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var va in vaS)
                  Card.outlined(
                    child: InkWell(
                      borderRadius: imageRadius,
                      onTap: () => context.pushRoute(CharacterRoute(
                        id: character.node!.id,
                        placeholder: character.node,
                      )),
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
                                // children: [Text(character.role?.name ?? "kj")],
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
                                      onTap: () => context.pushRoute(StaffRoute(
                                        id: va.voiceActor!.id,
                                        placeholder: va.voiceActor,
                                      )),
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
          separatorBuilder: (context, index) => const SizedBox(
            height: 5,
          ),
          itemCount: widget.characters.edges!.length,
        ),
      ],
    );
  }
}
