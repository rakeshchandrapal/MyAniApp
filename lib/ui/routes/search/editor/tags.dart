import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/search/search.graphql.dart';
import 'package:myaniapp/providers/search.dart';

class TagsSheet extends ConsumerWidget {
  const TagsSheet({super.key, required this.tags});

  final List<Tag> tags;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var options = ref.watch(searchEditorProvider('side'));

    return DraggableScrollableSheet(
      minChildSize: 0.3,
      initialChildSize: 1,
      expand: false,
      builder: (context, scrollController) => DefaultTabController(
        length: tags.length,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                for (var tag in tags) Tab(text: tag.category),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              for (var tab in tags)
                ListView.builder(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    var tag = tab.tags[index];

                    return CheckboxListTile.adaptive(
                      title: Text(tag.name),
                      subtitle: tag.description?.isNotEmpty == true
                          ? Text(tag.description!)
                          : null,
                      value: options.with_tags?.contains(tag.name) == true
                          ? true
                          : options.without_tags?.contains(tag.name) == true
                              ? null
                              : false,
                      tristate: true,
                      onChanged: (value) {
                        if (value == null) {
                          ref.read(searchEditorProvider('side').notifier).set(
                                options.copyWith(
                                    with_tags: options.with_tags!.length == 1
                                        ? null
                                        : options.with_tags
                                      ?..remove(tag.name),
                                    without_tags: (options.without_tags ?? [])
                                      ..add(tag.name)),
                              );
                        } else if (value == true) {
                          ref.read(searchEditorProvider('side').notifier).set(
                                options.copyWith(
                                  with_tags: (options.with_tags ?? [])
                                    ..add(tag.name),
                                ),
                              );
                        } else {
                          ref.read(searchEditorProvider('side').notifier).set(
                                options.copyWith(
                                  without_tags:
                                      options.without_tags!.length == 1
                                          ? null
                                          : options.without_tags
                                        ?..remove(tag.name),
                                ),
                              );
                        }
                      },
                    );
                  },
                  itemCount: tab.tags.length,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

void showTags(BuildContext context, List<Tag> tags) {
  showModalBottomSheet(
    context: context,
    builder: (context) => TagsSheet(tags: tags),
  );
}

class Tag {
  Tag({required this.category});

  String category;
  List<Query$GenreCollection$tags> tags = [];

  static List<Tag> sort(List<Query$GenreCollection$tags> tags) {
    List<Tag> lists = [];

    for (var tag in tags) {
      var category = tag.category!.replaceFirst('-', ' / ');
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
