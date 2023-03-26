import 'package:MyAniApp/graphql/Character.graphql.dart';
import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/lists/cards.dart';
import 'package:MyAniApp/widgets/markdown.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

var metaRegex = RegExp(r'(?:__|\*\*)(.*?)\n\n', dotAll: true);

@RoutePage()
class CharacterPage extends HookWidget {
  final int id;

  const CharacterPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Character(
      Options$Query$Character(
        variables: Variables$Query$Character(
          id: id,
        ),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) {
        // print(result.Character?.description);
        var description = result.Character?.description != null
            ? result.Character!.description!.replaceAll(metaRegex, '')
            : null;
        var meta = result.Character?.description != null
            ? metaRegex.firstMatch(result.Character!.description!)
            : null;
        var hasNext = result.Character?.media?.pageInfo?.hasNextPage;
        // print(meta);
        var nextOpts = FetchMoreOptions$Query$Character(
          variables: Variables$Query$Character(
              page: hasNext != null
                  ? result.Character!.media!.pageInfo!.currentPage! + 1
                  : null),
          updateQuery: (previousResultData, fetchMoreResultData) {
            // print(previousResultData);
            var list = [
              ...previousResultData!['Character']!['media']['nodes'],
              ...fetchMoreResultData!['Character']!['media']['nodes'],
            ];
            fetchMoreResultData['Character']!['media']['nodes'] = list;
            return fetchMoreResultData;
          },
        );

        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            elevation: 0,
          ),
          body: NotificationListener<ScrollUpdateNotification>(
            onNotification: (notification) {
              if (!hook.result.isLoading &&
                  notification.metrics.pixels >=
                      notification.metrics.maxScrollExtent - 100 &&
                  hasNext == true) {
                hook.fetchMore(nextOpts);
              }

              return false;
            },
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).padding.top,
                    ),
                    Title(
                      meta: meta?.group(0),
                      character: result.Character!,
                    ),
                    if (description != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 8),
                        child: Container(
                          constraints: const BoxConstraints(maxHeight: 200),
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Color.fromRGBO(92, 114, 138, 0.1),
                          ),
                          // width: /,
                          child: Markdown(
                            data: description,
                          ),
                        ),
                      ),
                    if (result.Character?.media?.nodes?.isNotEmpty == true) ...[
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Text(
                          'Appearances In',
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.bodyLarge?.fontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Appearances(
                        appearances: result.Character!.media!.nodes!,
                      ),
                    ]
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class Appearances extends StatelessWidget {
  const Appearances({
    super.key,
    required this.appearances,
  });

  final List<Fragment$BasicMedia?> appearances;

  @override
  Widget build(BuildContext context) {
    return Cards(
      list: appearances,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      underTitle: (media, style) {
        if (style == ListStyle.grid) {
          return const SizedBox();
        }

        return Text(media.type!.name);
      },
      gridChips: (media) {
        return [
          Positioned(
            top: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .surfaceVariant
                    .withOpacity(0.9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(media.type!.name),
            ),
          ),
        ];
      },
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    this.meta,
    required this.character,
  });

  final String? meta;
  final Query$Character$Character character;

  @override
  Widget build(BuildContext context) {
    print(meta);
    return Row(
      children: [
        SizedBox(
          height: 150,
          width: 100,
          child: AspectRatio(
            aspectRatio: 9 / 16,
            child: GestureDetector(
              onTap: () => showImage(context, character.image!.large!),
              child: Hero(
                tag: 'character',
                child: CachedNetworkImage(
                  imageUrl: character.image!.large!,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            constraints: const BoxConstraints(minWidth: 20, maxHeight: 130),
            // height: 20,
            width: MediaQuery.of(context).size.width - 140,
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      Text(
                        character.name!.userPreferred!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (character.dateOfBirth != null &&
                          character.dateOfBirth?.month != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Birthday: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: formattedDate(
                                  character.dateOfBirth!.year,
                                  character.dateOfBirth!.month,
                                  character.dateOfBirth!.day,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (character.age != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Age: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: character.age),
                            ],
                          ),
                        ),
                      if (character.gender != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Gender: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: character.gender),
                            ],
                          ),
                        ),
                      if (character.bloodType != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Blood Type: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: character.bloodType),
                            ],
                          ),
                        ),
                      if (meta != null)
                        Markdown(
                          data: meta!.replaceAll('\n', '\n\n'),
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
