import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/character/character.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/media.graphql.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/hidden_floating_action_button.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/ui/common/widget_gradient.dart';
import 'package:myaniapp/ui/routes/media/overview.dart';
import 'package:myaniapp/utils/require_login.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key, required this.id});

  final int id;

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  bool? onList;

  @override
  Widget build(BuildContext context) {
    return Query$Character$Widget(
      options: Options$Query$Character(
        variables: Variables$Query$Character(id: widget.id, onList: onList),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.parsedData == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else if (result.hasException) {
          return Scaffold(
            appBar: AppBar(),
            body: GraphqlError(exception: result.exception!),
          );
        }

        return ScrollToTop(
          alignment: Alignment.topRight,
          builder: (scrollController) => Scaffold(
            floatingActionButton: HiddenFloatingActionButton(
              scrollController: scrollController,
              child: FloatingButton(
                character: result.parsedData!.Character!,
                refetch: refetch!,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: Pagination(
              fetchMore: fetchMore!,
              pageInfo: result.parsedData!.Character!.media!.pageInfo!,
              isLoading: result.isLoading,
              opts: FetchMoreOptions$Query$Character(
                variables: Variables$Query$Character(
                    page: result.parsedData!.Character!.media!.pageInfo!
                            .currentPage! +
                        1),
                updateQuery: (previousResultData, fetchMoreResultData) {
                  var list = [
                    ...previousResultData!['Character']!['media']['edges'],
                    ...fetchMoreResultData!['Character']!['media']['edges'],
                  ];
                  fetchMoreResultData['Character']!['media']['edges'] = list;
                  return fetchMoreResultData;
                },
              ),
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverAppBar(
                    expandedHeight: 210,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        children: [
                          WidgetGradient(
                            child: Container(
                              height: 150,
                              color: Theme.of(context).disabledColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 50),
                            child: SizedBox(
                              width: 100,
                              height: 150,
                              child: AspectRatio(
                                aspectRatio: 2 / 3,
                                child: ClipRRect(
                                  borderRadius: imageRadius,
                                  child: CImage(
                                    imageUrl: result
                                        .parsedData!.Character!.image!.large!,
                                    viewer: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 96, left: 120),
                            child: SizedBox(
                              height: 104,
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  Text(
                                    result.parsedData!.Character!.name!
                                        .userPreferred!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  if (result.parsedData!.Character!
                                              .dateOfBirth !=
                                          null &&
                                      result.parsedData!.Character!.dateOfBirth!
                                              .toDateString() !=
                                          null)
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
                                            text: result.parsedData!.Character!
                                                .dateOfBirth!
                                                .toDateString()!,
                                          )
                                        ],
                                      ),
                                    ),
                                  if (result.parsedData!.Character!.age != null)
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
                                            text: result
                                                .parsedData!.Character!.age,
                                          )
                                        ],
                                      ),
                                    ),
                                  if (result.parsedData!.Character!.gender !=
                                      null)
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
                                            text: result
                                                .parsedData!.Character!.gender,
                                          )
                                        ],
                                      ),
                                    ),
                                  if (result.parsedData!.Character!.bloodType !=
                                      null)
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
                                            text: result.parsedData!.Character!
                                                .bloodType,
                                          )
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: SliverToBoxAdapter(
                      child: Description(
                          result.parsedData!.Character!.description),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    sliver: SliverToBoxAdapter(
                      child: Row(
                        children: [
                          Text(
                            "Appearances",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 120,
                            child: CheckboxListTile.adaptive(
                              contentPadding: const EdgeInsets.all(2),
                              title: Text(
                                "On My List",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              visualDensity: VisualDensity.comfortable,
                              value: onList ?? false,
                              onChanged: (v) => setState(
                                  () => onList = v == false ? null : true),
                              shape: RoundedRectangleBorder(
                                borderRadius: imageRadius,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: MediaCards(
                      list: result.parsedData!.Character!.media!.edges!
                          .map((e) => e!.node!)
                          .toList()
                          .cast<Fragment$MediaFragment>(),
                      aspectRatio: 1.9 / 3,
                      primary: false,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      onTap: (media, index) =>
                          context.push('/media/${media.id}/overview'),
                    ),
                  ),
                  if (result.isLoading)
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class FloatingButton extends ConsumerWidget {
  const FloatingButton({
    super.key,
    required this.character,
    required this.refetch,
  });

  final Query$Character$Character character;
  final VoidCallback refetch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: FloatingActionButton(
              onPressed: requireLogin(
                ref,
                'like',
                () => character.isFavouriteBlocked == true
                    ? null
                    : client.value.mutate$ToggleFavorite(
                        Options$Mutation$ToggleFavorite(
                          variables: Variables$Mutation$ToggleFavorite(
                            characterId: character.id,
                          ),
                          onCompleted: (_, __) => refetch(),
                        ),
                      ),
              ),
              backgroundColor: character.isFavouriteBlocked == true
                  ? Colors.grey[800]
                  : Colors.red,
              child: Icon(
                Icons.favorite,
                color: character.isFavourite == true
                    ? Colors.red[200]
                    : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
