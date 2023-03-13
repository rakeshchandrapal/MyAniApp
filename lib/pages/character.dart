import 'package:MyAniApp/graphql/Character.graphql.dart';
import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/pages/media_view.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/graphql_error.dart';
import 'package:MyAniApp/widgets/html.dart';
import 'package:MyAniApp/widgets/lists/cards.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

var metaRegex = RegExp(r'(?:__|\*\*)(.*?)\n\n', dotAll: true);

class Character extends HookWidget {
  final String id;

  const Character({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Character(
      Options$Query$Character(
        variables: Variables$Query$Character(
          id: int.tryParse(id),
        ),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) {
        var description = result.Character?.description != null
            ? result.Character!.description!.replaceAll(metaRegex, '')
            : null;
        var meta = result.Character?.description != null
            ? metaRegex.firstMatch(result.Character!.description!)
            : null;
        var hasNext = result.Character?.media?.pageInfo?.hasNextPage;

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

        return SafeArea(
          child: NotificationListener<ScrollUpdateNotification>(
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
                          child: HTML(
                            data: removeHTML(description),
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
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: 150,
              width: 100,
              child: AspectRatio(
                aspectRatio: 9 / 16,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ImagePage(
                        image: character.image!.large!,
                        tag: 'character',
                      ),
                    ),
                  ),
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
                          if (meta != null)
                            HTML(
                              data: removeHTML(meta!),
                              padding: const EdgeInsets.all(0),
                              // shrinkWrap: true,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        if (context.canPop())
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: BackButton(
                onPressed: () => context.pop(),
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }
}
