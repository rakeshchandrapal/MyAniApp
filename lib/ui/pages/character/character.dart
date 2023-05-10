import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/character/character.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/back_button.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/pagination.dart';

@RoutePage()
class CharacterPage extends StatefulHookWidget {
  const CharacterPage({super.key, required this.id});

  final int id;

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  bool onList = false;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Character(
      Options$Query$Character(
        variables: Variables$Query$Character(
          id: widget.id,
          onList: onList == true ? onList : null,
        ),
      ),
    );

    return RefreshIndicator(
      onRefresh: hook.refetch,
      notificationPredicate: (notification) => true,
      child: Scaffold(
        appBar: hook.result.isLoading && hook.result.parsedData == null
            ? AppBar()
            : null,
        body: Graphql(
          hook: hook,
          builder: (result) => NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              Appbar(character: result.Character!),
              if (result.Character!.description?.isNotEmpty == true)
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 184,
                  flexibleSpace: Container(
                    margin: const EdgeInsets.only(left: 8, right: 8),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .surfaceVariant
                          .withAlpha(50),
                      borderRadius: imageRadius,
                    ),
                    constraints: const BoxConstraints(maxHeight: 184),
                    height: 184,
                    child: Markdown(
                      data: result.Character!.description!,
                    ),
                  ),
                ),
            ],
            body: Pagination(
              hook: hook,
              pageInfo: result.Character!.media!.pageInfo!,
              opts: FetchMoreOptions$Query$Character(
                variables: Variables$Query$Character(
                    page: result.Character!.media!.pageInfo!.currentPage! + 1),
                updateQuery: (previousResultData, fetchMoreResultData) {
                  var list = [
                    ...previousResultData!['Character']!['media']['edges'],
                    ...fetchMoreResultData!['Character']!['media']['edges'],
                  ];
                  fetchMoreResultData['Character']!['media']['edges'] = list;
                  return fetchMoreResultData;
                },
              ),
              child: _Appearances(
                character: result.Character!,
                onList: onList,
                onListTap: () => setState(() => onList = !onList),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class Appbar extends StatefulWidget {
//   const Appbar({
//     super.key,
//     required this.character,
//   });

//   final Query$Character$Character character;

//   @override
//   State<Appbar> createState() => _AppbarState();
// }

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.character});

  final Query$Character$Character character;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 216,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: _Character(character: character),
      ),
    );
  }
}

class _Character extends StatelessWidget {
  const _Character({
    required this.character,
  });

  final Query$Character$Character character;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppBackButton(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: imageRadius,
                child: CImage(
                  imageUrl: character.image!.large!,
                  height: 150,
                  width: 100,
                  viewer: true,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      character.name!.userPreferred!,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  if (character.dateOfBirth != null &&
                      character.dateOfBirth!.toDateString() != null)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Birthday: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: character.dateOfBirth!.toDateString()!,
                          )
                        ],
                      ),
                    ),
                  if (character.age != null)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Age: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: character.age,
                          )
                        ],
                      ),
                    ),
                  if (character.gender != null)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Gender: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: character.gender,
                          )
                        ],
                      ),
                    ),
                  if (character.bloodType != null)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Blood Type: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: character.bloodType,
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _Appearances extends StatelessWidget {
  const _Appearances({
    required this.character,
    required this.onList,
    required this.onListTap,
  });

  final Query$Character$Character character;
  final bool onList;
  final VoidCallback onListTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Appearances',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              GestureDetector(
                onTap: onListTap,
                child: Row(
                  children: [
                    Checkbox(
                      value: onList,
                      onChanged: (value) => onListTap(),
                    ),
                    const Text('On My List'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: MediaCards(
              list: character.media!.edges!.map((e) => e!.node!).toList(),
              chips: (index) {
                var item = character.media!.edges![index];

                return [
                  GridChip(
                    bottom: 5,
                    right: 5,
                    child: Text(
                      item!.node!.type!.name.capitalize(),
                    ),
                  ),
                ];
              },
              onTap: (index) {
                var item = character.media!.edges![index];

                context.router.push(
                  MediaRoute(id: item!.node!.id),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
