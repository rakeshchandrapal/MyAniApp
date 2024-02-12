import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/media.req.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/hidden_floating_action_button.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/ui/common/widget_gradient.dart';
import 'package:myaniapp/ui/routes/character/__generated__/character.data.gql.dart';
import 'package:myaniapp/ui/routes/character/__generated__/character.req.gql.dart';
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
    return GQLRequest(
      key: Key("$onList"),
      operationRequest: GCharacterReq((b) => b
        ..requestId = "character"
        ..vars.id = widget.id
        ..vars.onList = onList),
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
            exception: (response!.graphqlErrors, response.linkException)),
      ),
      builder: (context, response, error, refetch) => ScrollToTop(
        alignment: Alignment.topRight,
        builder: (scrollController) => Scaffold(
          floatingActionButton: HiddenFloatingActionButton(
            scrollController: scrollController,
            child: FloatingButton(
              character: response!.data!.Character!,
              refetch: refetch,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: GraphqlPagination(
            req: (nextPage) => (response.operationRequest as GCharacterReq)
                .rebuild((b) => b
                  ..vars.page = nextPage
                  ..updateResult = (prev, result) => result!.rebuild((p0) => p0
                      .Character.media.edges
                      .insertAll(0, prev?.Character?.media?.edges ?? []))),
            pageInfo: response.data!.Character!.media!.pageInfo!,
            isLoading: response.loading,
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
                                  imageUrl:
                                      response.data!.Character!.image!.large!,
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
                                  response
                                      .data!.Character!.name!.userPreferred!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                if (response.data!.Character!.dateOfBirth !=
                                        null &&
                                    response.data!.Character!.dateOfBirth!
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
                                          text: response
                                              .data!.Character!.dateOfBirth!
                                              .toDateString()!,
                                        )
                                      ],
                                    ),
                                  ),
                                if (response.data!.Character!.age != null)
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
                                          text: response.data!.Character!.age,
                                        )
                                      ],
                                    ),
                                  ),
                                if (response.data!.Character!.gender != null)
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
                                          text:
                                              response.data!.Character!.gender,
                                        )
                                      ],
                                    ),
                                  ),
                                if (response.data!.Character!.bloodType != null)
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
                                          text: response
                                              .data!.Character!.bloodType,
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
                    child: Description(response.data!.Character!.description),
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
                    list: response.data!.Character!.media!.edges!
                        .map((e) => e!.node!)
                        .toList()
                        .cast<GMediaFragment>(),
                    aspectRatio: 1.9 / 3,
                    primary: false,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onTap: (media, index) =>
                        context.push('/media/${media.id}/overview'),
                  ),
                ),
                if (response.loading)
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
        // );
        // },
      ),
    );
  }
}

class FloatingButton extends ConsumerWidget {
  const FloatingButton({
    super.key,
    required this.character,
    required this.refetch,
  });

  final GCharacterData_Character character;
  final VoidCallback refetch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: FloatingActionButton(
              onPressed: character.isFavouriteBlocked == true
                  ? null
                  : requireLogin(
                      ref,
                      'like',
                      () => ref
                          .read(ferryClientProvider)
                          .request(GToggleFavoriteReq(
                            (b) => b..vars.characterId = character.id,
                          ))
                          .first
                          .then((value) => refetch()),
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
