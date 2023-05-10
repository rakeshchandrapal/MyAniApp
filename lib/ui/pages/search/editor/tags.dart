import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/search/editor/genre.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/search/search.graphql.dart';
import 'package:myaniapp/ui/pages/search/provider.dart';

class Tags extends ConsumerWidget {
  const Tags({super.key, required this.tags});

  final List<Query$GenreCollection$tags> tags;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Tags',
              style: theme.textTheme.titleMedium,
            ),
            IconButton(
              onPressed: () => showTags(
                context,
                tags,
              ),
              icon: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        Wrap(
          children: [
            for (String tag in ref
                    .read(searchProvider(Variables$Query$Search()).notifier)
                    .vars
                    .tags
                    ?.whereType<String>() ??
                [])
              Chip(
                label: Text(tag),
                onDeleted: () => ref
                    .read(searchProvider(Variables$Query$Search()).notifier)
                    .update(
                      tags: ref
                          .read(
                              searchProvider(Variables$Query$Search()).notifier)
                          .vars
                          .tags!
                        ..remove(tag),
                      refetch: false,
                    ),
              ),
          ],
        ),
      ],
    );
  }
}

class TagsModal extends ConsumerStatefulWidget {
  const TagsModal({
    super.key,
    required this.tags,
  });

  final List<Query$GenreCollection$tags> tags;

  @override
  ConsumerState<TagsModal> createState() => _TagsModalState();
}

class _TagsModalState extends ConsumerState<TagsModal> {
  List<Query$GenreCollection$tags> selected = [];

  @override
  Widget build(BuildContext context) {
    var sorted = Tag.sort(widget.tags);

    return DefaultTabController(
      length: sorted.length,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          title: const Text('Tags'),
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
                      if (value == true) {
                        selected.add(tag);
                        ref
                            .read(searchProvider(Variables$Query$Search())
                                .notifier)
                            .update(
                              tags: selected.map((e) => e.name).toList(),
                              refetch: false,
                            );
                      } else {
                        selected.remove(tag);
                        ref
                            .read(searchProvider(Variables$Query$Search())
                                .notifier)
                            .update(
                              tags: selected.map((e) => e.name).toList(),
                              refetch: false,
                            );
                      }

                      setState(() => selected = selected);
                    },
                  );
                },
              )
          ],
        ),
      ),
    );
  }
}

void showTags(BuildContext context, List<Query$GenreCollection$tags> tags) {
  showModalBottomSheet(
    context: context,
    builder: (context) => TagsModal(tags: tags),
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
