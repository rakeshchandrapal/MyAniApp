import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/media/__generated__/characters.data.gql.dart';
import 'package:myaniapp/app/media/__generated__/characters.req.gql.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/custom_dropdown.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/widget.dart';

class MediaCharacters extends StatefulWidget {
  const MediaCharacters({super.key, required this.mediaId});

  final int mediaId;

  @override
  State<MediaCharacters> createState() => _MediaCharactersState();
}

class _MediaCharactersState extends State<MediaCharacters>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GQLRequest(
      operationRequest: GMediaCharactersReq((b) => b
        ..requestId = "mediaCharacters${widget.mediaId}"
        ..vars.mediaId = widget.mediaId),
      builder: (context, response, error, refetch) {
        // print(response?.data!.Media!.characters!.edges!);

        return GraphqlPagination(
          pageInfo: response!.data!.Media!.characters!.pageInfo!,
          req: (nextPage) =>
              (response.operationRequest as GMediaCharactersReq).rebuild(
            (p0) => p0
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Media.characters.edges.insertAll(
                    0,
                    previous?.Media?.characters?.edges?.whereNot((p0) =>
                            result.Media?.characters?.edges?.contains(p0) ??
                            false) ??
                        [])),
          ),
          child: _CharacterList(
            characters: response.data!.Media!.characters!,
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _CharacterList extends StatefulWidget {
  const _CharacterList({
    required this.characters,
  });

  final GMediaCharactersData_Media_characters characters;

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
                      onTap: () => context.push(
                          "/character/${character.node!.id}",
                          extra: {"character": character.node}),
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
                                      onTap: () => context.push(
                                          "/staff/${va.voiceActor!.id}/roles",
                                          extra: {"staff": va.voiceActor!}),
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
