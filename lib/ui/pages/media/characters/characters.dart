import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/characters/characters.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/pages/media/characters/voice_actors_sheet.dart';

class CharactersTab extends HookWidget {
  const CharactersTab({super.key, required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var hook = useQuery$Characters(
      Options$Query$Characters(
        variables: Variables$Query$Characters(mediaId: mediaId),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => Pagination(
        hook: hook,
        pageInfo: result.Media!.characters!.pageInfo!,
        opts: FetchMoreOptions$Query$Characters(
          variables: Variables$Query$Characters(
              page: result.Media!.characters!.pageInfo!.currentPage! + 1),
          updateQuery: (previousResultData, fetchMoreResultData) {
            var list = [
              ...previousResultData!['Media']!['characters']['edges'],
              ...fetchMoreResultData!['Media']!['characters']['edges'],
            ];
            fetchMoreResultData['Media']!['characters']['edges'] = list;
            return fetchMoreResultData;
          },
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: [
            for (var character in result.Media!.characters!.edges!)
              CharacterCard(character: character!),
            if (hook.result.isLoading)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator.adaptive(),
                ),
              )
          ],
        ),
      ),
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.character,
  });

  final Query$Characters$Media$characters$edges character;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.7),
          width: 0.7,
        ),
      ),
      surfaceTintColor: Theme.of(context).colorScheme.surfaceVariant,
      child: InkWell(
        onTap: () => context.router.push(
          CharacterRoute(id: character.node!.id),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: CImage(
                imageUrl: character.node!.image!.large!,
                height: 100,
                width: 70,
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(character.node!.name!.userPreferred!),
                        if (character.role != null)
                          Text(
                            character.role!.name,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(fontSize: 10),
                          )
                      ],
                    ),
                    if (character.voiceActorRoles?.isNotEmpty == true)
                      TextButton(
                        onPressed: () => showVoiceActors(
                            context, character.voiceActorRoles!),
                        child: const Text('View Voice Actor'),
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
