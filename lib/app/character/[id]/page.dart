import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/character/__generated__/character.data.gql.dart';
import 'package:myaniapp/app/character/__generated__/character.req.gql.dart';
import 'package:myaniapp/app/media/__generated__/media.req.gql.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/hiding_floating_button.dart';
import 'package:myaniapp/common/image_viewer.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/invisible_expanded_title.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/fragments/__generated__/character.data.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:url_launcher/url_launcher.dart';

final _extractInfo = RegExp(r"^((?:(?:\*\*)|(?:__))[^]*?\n\n)");

class CharacterPage extends ConsumerWidget {
  const CharacterPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listSettings = ref.watch(listSettingsProvider);

    return GQLRequest(
      // key: const Key("SHD"),
      operationRequest: GCharacterReq(
        (b) => b
          ..requestId = "characterPage$id"
          ..vars.id = int.parse(id),
      ),
      loading: null,
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (response!.graphqlErrors, response.linkException),
          req: response.operationRequest,
        ),
      ),
      builder: (context, response, error, refetch) {
        if (response?.loading == true &&
            (GoRouterState.of(context).extra as Map?)?["character"]
                is! GCharacterFragment) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        GCharacterFragment? placeholder =
            (GoRouterState.of(context).extra as Map?)?["character"];
        var data = response?.data?.Character;

        return HidingFloatingButton(
          button: Show(
            when: data != null,
            child: () => FloatingActionButton.extended(
              heroTag: null,
              onPressed: data!.isFavouriteBlocked
                  ? null
                  : () => client
                      .request(GToggleFavoriteReq(
                        (b) => b..vars.characterId = data.id,
                      ))
                      .first
                      .then((_) => refetch()),
              label: Icon(
                Icons.favorite,
                color: data.isFavourite ? Colors.red[200] : null,
              ),
              backgroundColor: Colors.red[900],
            ),
          ),
          builder: (button) => Scaffold(
            floatingActionButton: button,
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  pinned: true,
                  title: InvisibleExpandedTitle(
                    child: Text(
                      (data ?? placeholder)!.name!.userPreferred!,
                      maxLines: 2,
                    ),
                  ),
                  actions: [
                    ListSettingButton(
                      type: listSettings.character,
                      onUpdate: (type) =>
                          ref.read(listSettingsProvider.notifier).update(
                                listSettings.copyWith(character: type),
                              ),
                    ),
                    const SizedBox(width: 5),
                    if (data?.siteUrl != null)
                      PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: const Text("View on Anilist"),
                            onTap: () => launchUrl(Uri.parse(data!.siteUrl!)),
                          ),
                        ],
                      ),
                  ],
                  expandedHeight: 182,
                  flexibleSpace: FlexibleSpaceBar(
                    background: SafeArea(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 16,
                              right: 8,
                              left: 8,
                            ),
                            child: InkWellImage(
                              onTap: () => ImageViewer.showImage(
                                context,
                                (data ?? placeholder)!.image!.large!,
                                tag: (GoRouterState.of(context).extra
                                        as Map?)?["tag"] ??
                                    (data ?? placeholder)!.id,
                              ),
                              borderRadius: imageRadius,
                              child: Hero(
                                tag: (GoRouterState.of(context).extra
                                        as Map?)?["tag"] ??
                                    (data ?? placeholder)!.id,
                                child: ClipRRect(
                                  borderRadius: imageRadius,
                                  child: CachedImage(
                                    (data ?? placeholder)!.image!.large!,
                                    height: 150,
                                    width: 106,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                (data ?? placeholder)!.name!.userPreferred!,
                                style: context.theme.textTheme.titleMedium,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              body: Show(
                when: data != null,
                fallback: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                child: () {
                  var metadata = _extractInfo
                      .firstMatch(data!.description ?? "")
                      ?.group(1);
                  var description = metadata != null
                      ? data.description?.replaceAll(metadata, "")
                      : data.description;

                  return GraphqlPagination(
                    pageInfo: data.media!.pageInfo!,
                    req: (nextPage) =>
                        (response!.operationRequest as GCharacterReq).rebuild(
                      (p0) => p0
                        ..vars.page = nextPage
                        ..updateResult = (previous, result) => result?.rebuild(
                            (p0) => p0
                              ..Character.media.edges.insertAll(
                                  0,
                                  previous?.Character?.media?.edges?.whereNot(
                                          (p0) =>
                                              result.Character?.media?.edges
                                                  ?.contains(p0) ??
                                              false) ??
                                      [])),
                    ),
                    child: CustomScrollView(
                      slivers: [
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          sliver: SliverToBoxAdapter(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // if (data.age != null) Text("Age: ${data.age}"),
                                if (data.age != null)
                                  _InfoText(title: "Age:", text: data.age!),
                                if (data.bloodType != null)
                                  _InfoText(
                                    title: "Blood Type:",
                                    text: data.bloodType!,
                                  ),
                                if (data.dateOfBirth != null &&
                                    data.dateOfBirth!.toDateString() != null)
                                  _InfoText(
                                    title: "Birth:",
                                    text: data.dateOfBirth!.toDateString()!,
                                  ),
                                if (data.gender != null)
                                  _InfoText(
                                    title: "Gender:",
                                    text: data.gender!,
                                  ),
                                if (metadata != null)
                                  MarkdownWidget.body(
                                    data: metadata,
                                    padding: const EdgeInsets.all(0),
                                  )
                              ],
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: MarkdownWidget.body(
                            data: description ?? "*No Description*",
                            selectable: true,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                          ),
                        ),
                        _MediaList(data: data),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class _MediaList extends ConsumerWidget {
  const _MediaList({
    required this.data,
  });

  final GCharacterData_Character data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listSetting = ref.watch(listSettingsProvider.select(
      (value) => value.character,
    ));

    itemBuilder(BuildContext context, int index) {
      var media = data.media!.edges![index]!;

      return MediaCard(
        listType: listSetting,
        blur: media.node!.isAdult ?? false,
        image: media.node!.coverImage!.extraLarge!,
        title: media.node!.title!.userPreferred,
        onTap: () => context.push("/media/${media.node!.id}/overview",
            extra: {"media": media.node}),
        onLongPress: () => MediaSheet.show(
          context,
          media.node!,
          leading: Column(
            children: [
              if (media.voiceActorRoles!.isNotEmpty == true) ...[
                Text(
                  "Voices Actors for",
                  style: context.theme.textTheme.titleMedium,
                ),
                ListTile(
                  title: Text(data.name!.userPreferred!),
                  leading: ListTileCircleAvatar(
                    url: data.image!.large!,
                  ),
                ),
              ],
              for (var staff in media.voiceActorRoles!)
                ListTile(
                  title: Text(staff!.voiceActor!.name!.userPreferred!),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: staff.voiceActor!.languageV2!,
                        ),
                        if (staff.roleNotes != null)
                          TextSpan(text: " / ${staff.roleNotes!}"),
                        if (staff.dubGroup != null)
                          TextSpan(text: " / ${staff.dubGroup!}")
                      ],
                    ),
                  ),
                  leading: ListTileCircleAvatar(
                    url: staff.voiceActor!.image!.large!,
                  ),
                  onTap: () =>
                      context.push("/staff/${staff.voiceActor!.id}/roles"),
                  contentPadding: const EdgeInsets.all(0),
                )
            ],
          ),
        ),
      );
    }

    return switch (listSetting) {
      ListType.grid => SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: GridCard.listRatio,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: itemBuilder,
            itemCount: data.media!.edges!.length,
          ),
        ),
      ListType.list => SliverList.builder(
          itemBuilder: itemBuilder,
          itemCount: data.media!.edges!.length,
        ),
      ListType.simple => SliverList.builder(
          itemBuilder: itemBuilder,
          itemCount: data.media!.edges!.length,
        ),
    };
  }
}

class _InfoText extends StatelessWidget {
  const _InfoText({
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "$title ",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: text)
        ],
      ),
    );
  }
}
