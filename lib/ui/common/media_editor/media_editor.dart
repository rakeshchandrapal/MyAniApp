import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/common/media_editor/media_editor.graphql.dart';
import 'package:myaniapp/providers/media_editor.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';
import 'package:myaniapp/ui/common/dialogs/delete.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/numer_picker.dart';

class MediaEditorDialog extends ConsumerWidget {
  const MediaEditorDialog({
    super.key,
    required this.media,
    this.onDelete,
    this.onSave,
  });

  final Fragment$MediaFragment media;
  final void Function()? onDelete;
  final void Function()? onSave;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var mediaEditor = ref.watch(mediaEditorProvider(media));

    // print(mediaEditor.isLoading);

    return mediaEditor.when(
      data: (data) => MediaEditor(
        media: media,
        entry: data,
        onDelete: onDelete,
        onSave: onSave,
      ),
      error: (error, stackTrace) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(exception: error as OperationException),
      ),
      loading: () => Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}

class MediaEditor extends ConsumerStatefulWidget {
  const MediaEditor({
    super.key,
    required this.entry,
    required this.media,
    this.onDelete,
    this.onSave,
  });

  final Fragment$MediaListEntry entry;
  final void Function()? onDelete;
  final void Function()? onSave;
  final Fragment$MediaFragment media;

  @override
  ConsumerState<MediaEditor> createState() => _MediaEditorState();
}

class _MediaEditorState extends ConsumerState<MediaEditor> {
  late Variables$Mutation$SaveMediaListEntry options;
  late Variables$Mutation$SaveMediaListEntry og;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    options = Variables$Mutation$SaveMediaListEntry(
      completedAt: widget.entry.completedAt != null
          ? Input$FuzzyDateInput(
              day: widget.entry.completedAt!.day,
              month: widget.entry.completedAt!.month,
              year: widget.entry.completedAt!.year)
          : null,
      startedAt: widget.entry.startedAt != null
          ? Input$FuzzyDateInput(
              day: widget.entry.startedAt!.day,
              month: widget.entry.startedAt!.month,
              year: widget.entry.startedAt!.year)
          : null,
      hiddenFromStatusLists: widget.entry.hiddenFromStatusLists,
      notes: widget.entry.notes,
      priority: widget.entry.priority,
      private: widget.entry.private,
      progress: widget.entry.progress,
      progressVolumes: widget.entry.progressVolumes,
      repeat: widget.entry.repeat,
      score: widget.entry.score,
      status: widget.entry.status,
      customLists: widget.entry.customLists
          ?.where((e) => e['enabled'] == true)
          ?.map((e) => e['name'])
          .toList()
          .cast<String?>(),
    );

    og = Variables$Mutation$SaveMediaListEntry.fromJson(options.toJson());
    textController = TextEditingController.fromValue(
        TextEditingValue(text: options.notes ?? ''));

    textController.addListener(textListener);
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  void textListener() {
    if (options.notes != textController.text) {
      setState(() => options = options.copyWith(notes: textController.text));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (widget.entry.id != -1)
            IconButton(
              padding: const EdgeInsets.all(16),
              onPressed: () async {
                var shouldDelete = await showDeleteDialog(context);

                if (shouldDelete == true) {
                  context.pop();
                  client.value
                      .mutate$DeleteMediaListEntry(
                        Options$Mutation$DeleteMediaListEntry(
                          variables: Variables$Mutation$DeleteMediaListEntry(
                            id: widget.entry.id,
                          ),
                        ),
                      )
                      .then((value) => widget.onDelete?.call());
                }
              },
              icon: const Icon(Icons.delete),
              color: Colors.red,
            ),
          IconButton(
            padding: const EdgeInsets.all(16),
            onPressed: () {
              // widget.entry.
              if (options != og) {
                ref
                    .read(mediaEditorProvider(widget.media).notifier)
                    .save(options)
                    .then((_) => widget.onSave?.call());
              }
              context.pop();
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          MasonryGridView.custom(
            gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
            ),
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childrenDelegate: SliverChildListDelegate(
              [
                CustomDropdown(
                  hint: 'Status',
                  value: options.status,
                  onChanged: (value) =>
                      setState(() => options = options.copyWith(status: value)),
                  dropdownItems: Enum$MediaListStatus.values
                      .takeWhile(
                          (value) => value != Enum$MediaListStatus.$unknown)
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.name.capitalize()),
                        ),
                      )
                      .toList(),
                ),
                NumberPicker(
                  number:
                      (options.progress ?? 0) == 0 ? null : options.progress,
                  hint:
                      '${widget.entry.media!.type == Enum$MediaType.ANIME ? 'Episode' : 'Chapter'} Progress',
                  onIncrement: () {
                    var number = (options.progress ?? 0) + 1;

                    if (widget.entry.media!.episodes != null &&
                        number >= widget.entry.media!.episodes!) {
                      if (options.status != Enum$MediaListStatus.COMPLETED) {
                        setState(
                          () => options = options.copyWith(
                            progress: number,
                            status: Enum$MediaListStatus.COMPLETED,
                          ),
                        );
                      }
                      return;
                    }

                    setState(
                      () => options = options.copyWith(
                          progress: (options.progress ?? 0) + 1),
                    );
                  },
                  onDecrement: () {
                    var number = (options.progress ?? 0) - 1;

                    if (number < 0) return;
                    if (widget.entry.media!.episodes != null &&
                        options.progress! >= widget.entry.media!.episodes! &&
                        options.status == Enum$MediaListStatus.COMPLETED) {
                      return setState(
                        () => options = options.copyWith(
                            progress: number, status: og.status),
                      );
                    }

                    setState(
                      () => options = options.copyWith(progress: number),
                    );
                  },
                ),
                NumberPicker(
                  number: (options.repeat ?? 0) == 0 ? null : options.repeat,
                  hint: widget.entry.media!.type == Enum$MediaType.ANIME
                      ? 'Rewatches'
                      : 'Rereads',
                  onIncrement: () => setState(
                    () => options =
                        options.copyWith(repeat: (options.repeat ?? 0) + 1),
                  ),
                  onDecrement: () {
                    var number = (options.repeat ?? 0) - 1;

                    if (number < 0) return;

                    setState(
                      () => options = options.copyWith(repeat: number),
                    );
                  },
                ),
                _MediaScore(
                  score: options.score ?? 0,
                  onIncrement: (score) {
                    setState(
                      () => options = options.copyWith(score: score.toDouble()),
                    );
                  },
                ),
              ],
            ),
          ),
          RadioListTile.adaptive(
            value: true,
            groupValue: options.private,
            toggleable: true,
            controlAffinity: ListTileControlAffinity.trailing,
            title: const Text('Private'),
            onChanged: (value) =>
                setState(() => options = options.copyWith(private: value)),
          ),
          _MediaListDate(
            start: true,
            date: options.startedAt?.toDateString(),
            onTap: _showStartDate,
            onClear: () =>
                setState(() => options = options.copyWith(startedAt: null)),
          ),
          const SizedBox(
            height: 1,
          ),
          _MediaListDate(
            start: false,
            date: options.completedAt?.toDateString(),
            onTap: _showCompletedDate,
            onClear: () =>
                setState(() => options = options.copyWith(completedAt: null)),
          ),
          if (widget.entry.customLists?.isNotEmpty == true) ...[
            Text(
              'Custom Lists',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ...widget.entry.customLists!.map(
              (e) => RadioListTile.adaptive(
                value: true,
                groupValue: options.customLists?.contains(e['name']),
                title: Text(e['name']),
                controlAffinity: ListTileControlAffinity.trailing,
                toggleable: true,
                onChanged: (value) {
                  if (value == true) {
                    setState(
                      () => options = options.copyWith(
                        customLists: (options.customLists ?? [])
                          ..add(e['name']),
                      ),
                    );
                  } else {
                    setState(
                      () => options = options.copyWith(
                        customLists: (options.customLists ?? [])
                          ..remove(e['name']),
                      ),
                    );
                  }
                  // setState(() => options = options.copyWith(private: value))
                },
              ),
            ),
          ],
          const SizedBox(
            height: 10,
          ),
          TextField(
            maxLines: null,
            controller: textController,
            // onChanged: (value) => setState(() => ),
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              labelText: 'Notes',
            ),
          )
        ],
      ),
    );
  }

  void _showStartDate() async {
    var date = await showDatePicker(
      context: context,
      initialDate: options.startedAt?.toDate() ?? DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime(2100),
    );

    if (date != null && context.mounted) {
      setState(
        () => options = options.copyWith(
            startedAt: Input$FuzzyDateInput(
          year: date.year,
          month: date.month,
          day: date.day,
        )),
      );
    }
  }

  void _showCompletedDate() async {
    var date = await showDatePicker(
      context: context,
      initialDate: options.completedAt?.toDate() ?? DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime(2100),
    );

    if (date != null && context.mounted) {
      setState(
        () => options = options.copyWith(
            completedAt: Input$FuzzyDateInput(
          year: date.year,
          month: date.month,
          day: date.day,
        )),
      );
    }
  }
}

class _MediaScore extends ConsumerWidget {
  const _MediaScore({required this.score, required this.onIncrement});

  final double score;
  final Function(num score) onIncrement;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    var scoreFormat = user.value!.mediaListOptions!.scoreFormat;

    return NumberPicker(
      hint: 'Score',
      number: score,
      onIncrement: () {
        switch (scoreFormat) {
          case Enum$ScoreFormat.POINT_3:
            if (score >= 3) return;
            onIncrement(score + 1);
            break;
          case Enum$ScoreFormat.POINT_5:
            if (score >= 5) return;
            onIncrement(score + 1);
            break;
          case Enum$ScoreFormat.POINT_10:
            if (score >= 10) return;
            onIncrement(score + 1);
            break;
          case Enum$ScoreFormat.POINT_10_DECIMAL:
            if (score >= 10) return;
            onIncrement(score + 0.5);
            break;
          case Enum$ScoreFormat.POINT_100:
            if (score >= 100) return;
            onIncrement(score + 10);
            break;
          default:
            break;
        }
      },
      onDecrement: () {
        if (score <= 0) return;
        switch (scoreFormat) {
          case Enum$ScoreFormat.POINT_3:
            onIncrement(score - 1);
            break;
          case Enum$ScoreFormat.POINT_5:
            onIncrement(score - 1);
            break;
          case Enum$ScoreFormat.POINT_10:
            onIncrement(score - 1);
            break;
          case Enum$ScoreFormat.POINT_10_DECIMAL:
            onIncrement(score - 0.5);
            break;
          case Enum$ScoreFormat.POINT_100:
            onIncrement(score - 10);
            break;
          default:
            break;
        }
      },
    );
  }
}

class _MediaListDate extends StatelessWidget {
  const _MediaListDate({
    required this.start,
    required this.date,
    required this.onTap,
    required this.onClear,
  });

  final bool start;
  final String? date;
  final VoidCallback onTap;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${start ? 'Start' : 'Completed'} Date:',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: onTap,
              child: Text(date ?? ''),
            ),
            IconButton(
              onPressed: onClear,
              icon: const Icon(Icons.clear),
            )
          ],
        ),
      ],
    );
  }
}

void showMediaEditor(
  BuildContext context,
  Fragment$MediaFragment media, {
  final void Function()? onDelete,
  final void Function()? onSave,
}) {
  showDialog(
    context: context,
    builder: (context) => Dialog.fullscreen(
      child: MediaEditorDialog(
        media: media,
        onDelete: onDelete,
        onSave: onSave,
      ),
    ),
  );
}
