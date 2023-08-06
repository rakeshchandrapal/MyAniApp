import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/search/search.graphql.dart';

class TagsModal extends ConsumerStatefulWidget {
  const TagsModal({
    super.key,
    required this.tags,
    required this.onAdd,
    required this.onRemove,
    this.selected,
  });

  final List<Query$GenreCollection$tags> tags;
  final void Function(List<String> tag) onAdd;
  final void Function(List<String> tag) onRemove;
  final List<String>? selected;

  @override
  ConsumerState<TagsModal> createState() => _TagsModalState();
}

class _TagsModalState extends ConsumerState<TagsModal> {
  List<Query$GenreCollection$tags> selected = [];

  @override
  void initState() {
    super.initState();
    if (widget.selected?.isNotEmpty == true) {
      selected = widget.tags
          .where((element) => widget.selected!.contains(element.name))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    var sorted = Tag.sort(widget.tags);

    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) => DefaultTabController(
        length: sorted.length,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 0,
            centerTitle: true,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                for (var tab in sorted)
                  Tab(
                    text: tab.category,
                  )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              for (var tab in sorted)
                ListView.separated(
                  controller: scrollController,
                  itemCount: tab.tags.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemBuilder: (context, index) {
                    var tag = tab.tags[index];

                    return CheckboxListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tag.name),
                          if (tag.description != null)
                            Text(
                              tag.description!,
                              style: Theme.of(context).textTheme.labelSmall,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            )
                        ],
                      ),
                      value: selected.contains(tag),
                      onChanged: (value) {
                        // print(value);
                        // state.setVariables(
                        //   state.variables!.copyWith(
                        //     tags: state.variables!.tags!..remove(tag),
                        //   ),
                        // );
                        if (value == true) {
                          selected.add(tag);
                          widget.onAdd(selected.map((e) => e.name).toList());
                          // ref.read(searchProvider.notifier).update(
                          //       tags: selected.map((e) => e.name).toList(),
                          //       refetch: false,
                          //     );
                        } else {
                          selected.remove(tag);
                          widget.onRemove(selected.map((e) => e.name).toList());
                          // ref.read(searchProvider.notifier).update(
                          //       tags: selected.map((e) => e.name).toList(),
                          //       refetch: false,
                          //     );
                        }

                        setState(() => selected = selected);
                      },
                    );
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}

void showTags(
  BuildContext context,
  List<Query$GenreCollection$tags> tags, {
  List<String>? selected,
  required void Function(List<String> tags) onAdd,
  required void Function(List<String> tags) onRemove,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => TagsModal(
      tags: tags,
      onAdd: onAdd,
      onRemove: onRemove,
      selected: selected,
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
      var o = lists.indexWhere((element) => element.category == tag.category);
      if (o == -1) {
        lists.add(Tag(category: tag.category!)..tags.add(tag));
      } else {
        lists[o].tags.add(tag);
      }
    }
    return lists;
  }
}
