import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/search/search.graphql.dart';

class TagsSheet extends ConsumerStatefulWidget {
  const TagsSheet({
    super.key,
    required this.tags,
    required this.withTags,
    required this.withoutTags,
    required this.onChanged,
  });

  final List<Tag> tags;
  final List<Query$GenreCollection$tags>? withTags;
  final List<Query$GenreCollection$tags>? withoutTags;
  // true if its included tags (with tags)
  final void Function(
      List<Query$GenreCollection$tags>? tags, bool withOrWithout) onChanged;

  @override
  ConsumerState<TagsSheet> createState() => _TagsSheetState();
}

class _TagsSheetState extends ConsumerState<TagsSheet> {
  late List<Tag> tags;
  late List<Query$GenreCollection$tags>? withTags;
  late List<Query$GenreCollection$tags>? withoutTags;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    tags = widget.tags;
    withTags = widget.withTags;
    withoutTags = widget.withoutTags;
    _controller.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void listener() {
    setState(() {
      tags = widget.tags
          .where((element) {
            return element.tags.any((element) => element.name
                .toLowerCase()
                .contains(_controller.text.toLowerCase()));
          })
          .toList()
          .map((e) {
            return Tag(category: e.category)
              ..tags = e.tags
                  .where((element) => element.name
                      .toLowerCase()
                      .contains(_controller.text.toLowerCase()))
                  .toList();
          })
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    print(withTags);
    return DraggableScrollableSheet(
      minChildSize: 0.3,
      initialChildSize: 1,
      expand: false,
      builder: (context, scrollController) => DefaultTabController(
        length: tags.length,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 65,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                      value: withTags?.contains(tag) == true
                          ? true
                          : withoutTags?.contains(tag) == true
                              ? null
                              : false,
                      tristate: true,
                      onChanged: (value) {
                        if (value == null) {
                          setState(() {
                            withTags = withTags!.length == 1 ? null : withTags
                              ?..remove(tag);
                            withoutTags = (withoutTags ?? [])..add(tag);
                          });
                        } else if (value == true) {
                          setState(() => withTags = (withTags ?? [])..add(tag));
                        } else {
                          setState(() => withoutTags =
                              withoutTags!.length == 1 ? null : withoutTags
                                ?..remove(tag));
                        }

                        widget.onChanged(withTags, true);
                        widget.onChanged(withoutTags, false);
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

void showTags(
  BuildContext context, {
  required List<Tag> tags,
  List<Query$GenreCollection$tags>? withTags,
  List<Query$GenreCollection$tags>? withoutTags,
  required Function(List<Query$GenreCollection$tags>? tags, bool withOrWithout)
      onChanged,
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) => TagsSheet(
      tags: tags,
      withTags: withTags,
      withoutTags: withoutTags,
      onChanged: onChanged,
    ),
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
