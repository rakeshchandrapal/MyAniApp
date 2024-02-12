import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/ui/routes/media/characters/__generated__/characters.data.gql.dart';
import 'package:myaniapp/ui/routes/media/characters/__generated__/characters.req.gql.dart';

class MediaCharactersPage extends StatefulWidget {
  const MediaCharactersPage({super.key, required this.id});

  final int id;

  @override
  State<MediaCharactersPage> createState() => _MediaCharactersPageState();
}

class _MediaCharactersPageState extends State<MediaCharactersPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ScrollToTop(
      builder: (scrollController) => GQLRequest(
        operationRequest: GCharactersReq((b) => b
          ..requestId = "mediaCharacters"
          ..vars.mediaId = widget.id),
        builder: (context, response, error, refetch) => GraphqlPagination(
          pageInfo: response!.data!.Media!.characters!.pageInfo!,
          req: (nextPage) => GCharactersReq(
            (b) => b
              ..replace(response.operationRequest as GCharactersReq)
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Media.characters.edges.insertAll(
                    0,
                    previous?.Media?.characters?.edges?.whereNot((p0) =>
                            result.Media?.characters?.edges?.contains(p0) ??
                            false) ??
                        [])),
          ),
          child: Characters(
            characters: response.data!.Media!.characters!,
          ),
        ),
      ),
      // builder: (_) => Query$Characters$Widget(
      //   options: Options$Query$Characters(
      //     variables: Variables$Query$Characters(mediaId: widget.id),
      //   ),
      //   builder: (result, {fetchMore, refetch}) {
      //     if (result.isLoading && result.parsedData == null) {
      //       return const Center(
      //         child: CircularProgressIndicator.adaptive(),
      //       );
      //     } else if (result.hasException) {
      //       return GraphqlError(exception: result.exception!);
      //     }

      //     return Characters(
      //       characters: result.parsedData!.Media!.characters!,
      //       fetchMore: fetchMore!,
      //     );
      //   },
      // ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class Characters extends StatefulWidget {
  const Characters({
    super.key,
    required this.characters,
    // required this.fetchMore,
  });

  final GCharactersData_Media_characters characters;
  // final FetchMore fetchMore;

  @override
  State<Characters> createState() => _CharactersState();
}

class _CharactersState extends State<Characters> {
  String selectedLanguage = 'Japanese';
  final List<String> availableLanguages = [];

  @override
  void initState() {
    super.initState();
    widget.characters.edges!.firstOrNull?.voiceActorRoles?.forEach((element) {
      var language =
          '${element!.voiceActor!.languageV2!}${element.dubGroup != null ? ' (${element.dubGroup})' : ''}';

      if (!availableLanguages.contains(language)) {
        availableLanguages.add(language);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        if (availableLanguages.isNotEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomDropdown(
                hint: 'Language',
                value: selectedLanguage,
                onChanged: (value) =>
                    setState(() => selectedLanguage = value ?? 'Japanese'),
                dropdownItems: availableLanguages
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        SliverList.separated(
          itemCount: widget.characters.edges!.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemBuilder: (context, index) {
            var character = widget.characters.edges![index]!;
            var voices = character.voiceActorRoles!.where(
              (element) {
                var language =
                    '${element!.voiceActor!.languageV2!}${element.dubGroup != null ? ' (${element.dubGroup})' : ''}';
                return language == selectedLanguage;
              },
            ).toList();

            if (voices.isEmpty) {
              return CharacterCard(character: character);
            }

            return ListView.separated(
              primary: false,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: voices.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) {
                var voice = voices[index];

                return CharacterCard(character: character, voice: voice);
              },
            );
          },
        ),
      ],
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.character,
    this.voice,
  });

  final GCharactersData_Media_characters_edges character;
  final GCharactersData_Media_characters_edges_voiceActorRoles? voice;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Theme.of(context).colorScheme.surfaceVariant,
          width: 1,
        ),
      ),
      surfaceTintColor: Theme.of(context).colorScheme.surfaceVariant,
      child: InkWell(
        onTap: () => context.push('/character/${character.node!.id}'),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 90,
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: CImage(
                        imageUrl: character.node!.image!.large!,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        character.node!.name!.userPreferred!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (character.role != null)
                        Text(character.role!.name.capitalize())
                    ],
                  ),
                )
              ],
            ),
            if (voice != null)
              Positioned(
                right: 0,
                child: GestureDetector(
                  onTap: () => context.push('/staff/${voice!.voiceActor!.id}'),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            if (voice!.roleNotes != null)
                              Text(voice!.roleNotes!),
                            Text(
                              voice!.voiceActor?.name?.userPreferred ??
                                  'Unknown',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        child: AspectRatio(
                          aspectRatio: 2 / 3,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            child: CImage(
                              imageUrl: voice!.voiceActor?.image?.large ??
                                  'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
