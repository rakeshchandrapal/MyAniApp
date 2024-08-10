import 'package:built_collection/built_collection.dart';
import 'package:ferry_exec/ferry_exec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/search/media/__generated__/mediaSearch.data.gql.dart';
import 'package:myaniapp/app/search/media/__generated__/mediaSearch.req.gql.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/widget.dart';

class TagsEditorSheet extends StatefulWidget {
  const TagsEditorSheet(
      {super.key,
      required this.whitelistedTags,
      required this.blacklistedTags,
      required this.onChanged});

  final List<GGenreCollectionData_tags?> whitelistedTags;
  final List<GGenreCollectionData_tags?> blacklistedTags;
  final void Function(List<GGenreCollectionData_tags> whitelistedTags,
      List<GGenreCollectionData_tags> blacklistedTags) onChanged;

  static void show(
    BuildContext context, {
    required List<GGenreCollectionData_tags?> whitelistedTags,
    required List<GGenreCollectionData_tags?> blacklistedTags,
    required void Function(List<GGenreCollectionData_tags> whitelistedTags,
            List<GGenreCollectionData_tags> blacklistedTags)
        onChanged,
  }) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => TagsEditorSheet(
        whitelistedTags: whitelistedTags,
        blacklistedTags: blacklistedTags,
        onChanged: onChanged,
      ),
    );
  }

  @override
  State<TagsEditorSheet> createState() => _TagsEditorSheetState();
}

class _TagsEditorSheetState extends State<TagsEditorSheet> {
  late List<GGenreCollectionData_tags> whitelistedTags =
      widget.whitelistedTags.cast<GGenreCollectionData_tags>();
  late List<GGenreCollectionData_tags> blacklistedTags =
      widget.blacklistedTags.cast<GGenreCollectionData_tags>();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) => GQLRequest(
        operationRequest: GGenreCollectionReq((b) => b
          ..requestId = "genreCollectionSearch"
          ..fetchPolicy = FetchPolicy.CacheOnly),
        builder: (context, response, error, refetch) {
          return HookBuilder(
            builder: (context) {
              var tags = useMemoized(() => Tag.sort(response!.data!.tags!),
                  [response!.data!.tags!]);
              var textEditingController = useTextEditingController();
              var notifier = useValueListenable(textEditingController);

              var sortedTags = useMemoized(
                () => tags.where((element) {
                  return element.tags.any((element) => element.name
                      .toLowerCase()
                      .contains(textEditingController.text.toLowerCase()));
                }).map((e) {
                  return Tag(category: e.category)
                    ..tags = e.tags
                        .where((element) => element.name
                            .toLowerCase()
                            .contains(textEditingController.text.toLowerCase()))
                        .toList();
                }),
                [notifier, tags],
              );

              return DefaultTabController(
                length: sortedTags.length,
                child: Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    title: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: imageRadius),
                        hintText: "Search",
                      ),
                      controller: textEditingController,
                    ),
                    bottom: TabBar(
                      isScrollable: true,
                      tabs: [
                        for (var tag in sortedTags) Tab(text: tag.category),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      for (var tab in sortedTags)
                        ListView.builder(
                          controller: scrollController,
                          itemBuilder: (context, index) {
                            var tag = tab.tags[index];

                            return CheckboxListTile.adaptive(
                              title: Text(tag.name),
                              subtitle: tag.description?.isNotEmpty == true
                                  ? Text(tag.description!)
                                  : null,
                              value: whitelistedTags?.contains(tag) == true
                                  ? true
                                  : blacklistedTags?.contains(tag) == true
                                      ? null
                                      : false,
                              tristate: true,
                              onChanged: (value) {
                                if (value == null) {
                                  setState(() {
                                    whitelistedTags.remove(tag);
                                    blacklistedTags.add(tag);
                                  });
                                } else if (value == true) {
                                  setState(() => whitelistedTags.add(tag));
                                } else {
                                  setState(() => blacklistedTags.remove(tag));
                                }
                                widget.onChanged(
                                    whitelistedTags, blacklistedTags);
                              },
                            );
                          },
                          itemCount: tab.tags.length,
                        ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Tag {
  Tag({required this.category});

  String category;
  List<GGenreCollectionData_tags> tags = [];

  static List<Tag> sort(BuiltList<GGenreCollectionData_tags?> tags) {
    List<Tag> lists = [];

    for (var tag in tags) {
      var category = tag!.category!.replaceAll('-', ' / ');
      var o = lists.indexWhere((element) => element.category == category);
      if (o == -1) {
        lists.add(Tag(category: category)..tags.add(tag));
      } else {
        lists[o].tags.add(tag);
      }
    }

    return lists
      ..sort(
        (a, b) => a.category.compareTo(b.category),
      );
  }
}
