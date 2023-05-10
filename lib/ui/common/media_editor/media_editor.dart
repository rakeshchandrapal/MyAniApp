import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/media_editor/provider.dart';
import 'package:myaniapp/ui/common/number_picker.dart';

class MediaEditor extends StatefulHookConsumerWidget {
  const MediaEditor({
    super.key,
    required this.media,
    this.onSave,
  });

  final Fragment$Media media;
  final VoidCallback? onSave;

  @override
  ConsumerState<MediaEditor> createState() => _MediaEditorState();
}

class _MediaEditorState extends ConsumerState<MediaEditor> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // if (widget.media.notes?.isNotEmpty == true) {
    //   controller.text = widget.media.notes!;
    // }
    controller.addListener(updateNotes);
  }

  void updateNotes() {
    var r = ref.read(MediaEditorProvider(widget.media).notifier);
    if (ref.read(MediaEditorProvider(widget.media))?.notes ==
        controller.value.text) return;
    r.modify(notes: controller.value.text);
    print(controller.text);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);
    var entry = ref.watch(MediaEditorProvider(widget.media));
    var theme = Theme.of(context).textTheme;

    useEffect(() {
      if (entry?.notes != null) controller.text = entry!.notes!;
      return null;
    }, [entry?.notes]);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              ref
                  .read(MediaEditorProvider(widget.media).notifier)
                  .update(widget.onSave);
              context.router.pop();
              // entry.
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: entry == null
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Text(
                    'Status',
                    style: theme.titleMedium,
                  ),
                  DropdownSearch<Enum$MediaListStatus>(
                    items: Enum$MediaListStatus.values
                        .take(Enum$MediaListStatus.values.length - 1)
                        .toList(),
                    itemAsString: (item) {
                      if (item == Enum$MediaListStatus.CURRENT) {
                        return 'Watching';
                      } else if (item == Enum$MediaListStatus.PLANNING) {
                        return 'Planning';
                      } else if (item == Enum$MediaListStatus.COMPLETED) {
                        return 'Completed';
                      } else if (item == Enum$MediaListStatus.PAUSED) {
                        return 'Paused';
                      } else if (item == Enum$MediaListStatus.DROPPED) {
                        return 'Dropped';
                      } else if (item == Enum$MediaListStatus.REPEATING) {
                        return 'Repeating';
                      }

                      return item.name;
                    },
                    selectedItem: entry.status,
                    onChanged: (value) => ref
                        .read(mediaEditorProvider(widget.media).notifier)
                        .modify(status: value),
                  ),
                  Text(
                    'Score',
                    style: theme.titleMedium,
                  ),
                  NumberPicker(
                    current: (entry.score ?? 0).toInt(),
                    // decimals: true,
                    onChange: (value) => ref
                        .read(mediaEditorProvider(widget.media).notifier)
                        .modify(score: value.toDouble()),
                    // max: user.value!.options!.,
                    increment: 1,
                    min: 0,
                    max: 100,
                  ),
                  Text(
                    '${entry.media!.type == Enum$MediaType.ANIME ? 'Episode' : 'Chapter'} Progress',
                    style: theme.titleMedium,
                  ),
                  NumberPicker(
                    current: (entry.progress ?? 0).toInt(),
                    max: (entry.media!.episodes ?? entry.media!.chapters)
                        ?.toInt(),
                    min: 0,
                    onChange: (value) => ref
                        .read(mediaEditorProvider(widget.media).notifier)
                        .modify(progress: value.toInt()),
                  ),
                  Text(
                    'Total ${entry.media!.type == Enum$MediaType.ANIME ? 'Rewatches' : 'Rereads'}',
                    style: theme.titleMedium,
                  ),
                  NumberPicker(
                    current: (entry.repeat ?? 0).toInt(),
                    min: 0,
                    onChange: (value) => ref
                        .read(mediaEditorProvider(widget.media).notifier)
                        .modify(repeat: value.toInt()),
                  ),
                  CheckboxListTile(
                    title: const Text('Private'),
                    value: entry.private ?? false,
                    onChanged: (value) => ref
                        .read(mediaEditorProvider(widget.media).notifier)
                        .modify(private: value),
                  ),
                  Text(
                    'Start Date',
                    style: theme.titleMedium,
                  ),
                  ElevatedButton(
                    onPressed: () => _showDatePicker(
                        entry.startedAt?.toDate() ?? DateTime.now(), (date) {
                      var fuzzy = Fragment$FuzzyDate(
                          day: date.day, month: date.month, year: date.year);
                      ref
                          .read(mediaEditorProvider(widget.media).notifier)
                          .modify(startedAt: fuzzy);
                    }),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(entry.startedAt?.toDateString() ?? 'Select Date'),
                        const Icon(
                          Icons.edit,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Completed Date',
                    style: theme.titleMedium,
                  ),
                  ElevatedButton(
                    onPressed: () => _showDatePicker(
                        entry.completedAt?.toDate() ?? DateTime.now(), (date) {
                      var fuzzy = Fragment$FuzzyDate(
                          day: date.day, month: date.month, year: date.year);
                      ref
                          .read(mediaEditorProvider(widget.media).notifier)
                          .modify(completedAt: fuzzy);
                    }),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            entry.completedAt?.toDateString() ?? 'Select Date'),
                        const Icon(
                          Icons.edit,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Notes',
                    style: theme.titleMedium,
                  ),
                  TextField(
                    controller: controller,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    maxLines: null,
                  ),
                ],
              ),
            ),
    );
  }

  void _showDatePicker(DateTime date, Function(DateTime date) onChange) async {
    var d = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1940),
      lastDate: DateTime(2100),
    );

    if (d != null) onChange(d);
  }
}

Future<bool?> showMediaEditor(
  BuildContext context,
  Fragment$Media entry, {
  VoidCallback? onSave,
}) {
  return showDialog(
    context: context,
    builder: (context) => Dialog.fullscreen(
      child: MediaEditor(
        media: entry,
        onSave: onSave,
      ),
    ),
  );
}
