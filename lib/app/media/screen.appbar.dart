import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/image_viewer.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/invisible_expanded_title.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/widget_gradient.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/fragments/media.graphql.dart';
import 'package:myaniapp/graphql/__gen/media.graphql.dart';
import 'package:myaniapp/providers/list_settings.dart';

class MediaScreenAppBar extends ConsumerWidget {
  const MediaScreenAppBar({
    super.key,
    required this.data,
    required this.tab,
    this.placeholder,
  });

  final Query$Media$Media? data;
  final String tab;
  final Fragment$MediaFragment? placeholder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listSettings = ref.watch(listSettingsProvider);

    if (data == null && placeholder == null) return SliverAppBar();

    var dOrP = data ?? placeholder;

    return SliverAppBar(
      expandedHeight: 210,
      pinned: true,
      title: InvisibleExpandedTitle(
        child: Text(
          dOrP!.title!.userPreferred!,
          maxLines: 2,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BackButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color?>(
              context.theme.colorScheme.surface.withOpacity(.3),
            ),
            iconColor: WidgetStatePropertyAll(
              context.theme.colorScheme.onSurface,
            ),
          ),
        ),
      ),
      actions: [
        if (tab == "Relations")
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.4),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: ListSettingButton(
              type: listSettings.mediaRelations,
              onUpdate: (type) =>
                  ref.read(listSettingsProvider.notifier).update(
                        listSettings.copyWith(mediaRelations: type),
                      ),
            ),
          ),
        if (tab == "Similar")
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.4),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: ListSettingButton(
              type: listSettings.mediaSimilar,
              onUpdate: (type) =>
                  ref.read(listSettingsProvider.notifier).update(
                        listSettings.copyWith(mediaSimilar: type),
                      ),
            ),
          ),
        const SizedBox(width: 5)
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            SizedBox(
              height: 210,
              child: BlurImage(
                enabled: data?.isAdult ?? false,
                child: WidgetGradient(
                  child: data?.bannerImage == null
                      ? Container(
                          height: 210,
                          color: Colors.grey,
                        )
                      : InkWellImage(
                          onTap: () => ImageViewer.showImage(
                            context,
                            data!.bannerImage!,
                            tag: data!.bannerImage,
                          ),
                          child: Hero(
                            tag: data!.bannerImage!,
                            child: CachedImage(
                              data!.bannerImage!,
                              fit: BoxFit.cover,
                              height: 210,
                              width: double.maxFinite,
                            ),
                          ),
                        ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // if (data != null || placeholderData != null)
                  InkWellImage(
                    onTap: () => ImageViewer.showImage(
                      context,
                      dOrP.coverImage!.extraLarge!,
                      tag: dOrP.id,
                    ),
                    borderRadius: imageRadius,
                    child: Hero(
                      tag: dOrP.id,
                      child: ClipRRect(
                        borderRadius: imageRadius,
                        child: BlurImage(
                          enabled: dOrP.isAdult ?? false,
                          child: CachedImage(
                            dOrP.coverImage!.extraLarge!,
                            height: 150,
                            width: 106,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (dOrP.isAdult == true)
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.red[700],
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const Text(
                              "18+",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Titles",
                                      style:
                                          context.theme.textTheme.titleMedium,
                                    ),
                                    if (data?.title!.native != null)
                                      _MediaTitle(
                                        lang: "Native",
                                        title: data!.title!.native!,
                                      ),
                                    if (data?.title!.romaji != null)
                                      _MediaTitle(
                                        lang: "Romaji",
                                        title: data!.title!.romaji!,
                                      ),
                                    if (data?.title!.english != null)
                                      _MediaTitle(
                                        lang: "English",
                                        title: data!.title!.english!,
                                      )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            dOrP.title!.userPreferred!,
                            style: context.theme.textTheme.titleMedium
                                ?.copyWith(color: Colors.blue[400]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        Text(
                          dOrP.format?.name.capitalize() ??
                              dOrP.type!.name.capitalize(),
                          maxLines: 2,
                          style: context.theme.textTheme.titleSmall,
                        ),
                        if (data?.favourites != null)
                          Row(
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(data!.favourites!.abbreviate()),
                            ],
                          ),
                        if (data?.averageScore != null)
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("${data!.averageScore!.abbreviate()}/100"),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MediaTitle extends StatelessWidget {
  const _MediaTitle({
    required this.lang,
    required this.title,
  });

  final String lang;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$lang: ",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(child: SelectableText(title)),
      ],
    );
  }
}
