import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/characters/characters.graphql.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';

class MediaCharactersPage extends StatelessWidget {
  const MediaCharactersPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return ScrollToTop(
      builder: (_) => Query$Characters$Widget(
        options: Options$Query$Characters(
          variables: Variables$Query$Characters(mediaId: id),
        ),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading && result.parsedData == null) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (result.hasException) {
            return GraphqlError(exception: result.exception!);
          }

          return Characters(
            characters: result.parsedData!.Media!.characters!,
            fetchMore: fetchMore!,
          );
        },
      ),
    );
  }
}

class Characters extends StatefulWidget {
  const Characters({
    super.key,
    required this.characters,
    required this.fetchMore,
  });

  final Query$Characters$Media$characters characters;
  final FetchMore fetchMore;

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
    return GraphqlPagination(
      pageInfo: widget.characters.pageInfo!,
      fetchMore: (nextPage) => widget.fetchMore(
        FetchMoreOptions$Query$Characters(
          variables: Variables$Query$Characters(page: nextPage),
          updateQuery: (previousResultData, fetchMoreResultData) {
            var list = [
              ...previousResultData!['Media']!['characters']['edges'],
              ...fetchMoreResultData!['Media']!['characters']['edges'],
            ];
            fetchMoreResultData['Media']!['characters']['edges'] = list;
            return fetchMoreResultData;
          },
        ),
      ),
      child: CustomScrollView(
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
      ),
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.character,
    this.voice,
  });

  final Query$Characters$Media$characters$edges character;
  final Query$Characters$Media$characters$edges$voiceActorRoles? voice;

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
