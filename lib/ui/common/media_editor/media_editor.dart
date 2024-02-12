import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.data.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/providers/media_editor.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';
import 'package:myaniapp/ui/common/dialogs/delete.dart';
import 'package:myaniapp/ui/common/media_editor/__generated__/media_editor.req.gql.dart';
import 'package:myaniapp/ui/common/media_editor/__generated__/media_editor.var.gql.dart';
import 'package:myaniapp/ui/common/number_picker.dart';

class MediaEditorDialog extends ConsumerWidget {
  const MediaEditorDialog({
    super.key,
    required this.media,
    this.onDelete,
    this.onSave,
  });

  final GMediaFragment media;
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
        body: const SizedBox(),
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

  final GMediaListEntry entry;
  final void Function()? onDelete;
  final void Function()? onSave;
  final GMediaFragment media;

  @override
  ConsumerState<MediaEditor> createState() => _MediaEditorState();
}

class _MediaEditorState extends ConsumerState<MediaEditor> {
  late GSaveMediaListEntryVarsBuilder options;
  late GSaveMediaListEntryVars og;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    // options = GSaveMediaListEntryVars()
    options = GSaveMediaListEntryVarsBuilder()
      ..update((p0) => p0
        ..completedAt = widget.entry.completedAt != null
            ? GFuzzyDateInput(
                (b) => b
                  ..day = widget.entry.completedAt?.day
                  ..month = widget.entry.completedAt?.month
                  ..year = widget.entry.completedAt?.year,
              ).toBuilder()
            : null
        ..startedAt = widget.entry.startedAt != null
            ? GFuzzyDateInput(
                (b) => b
                  ..day = widget.entry.startedAt?.day
                  ..month = widget.entry.startedAt?.month
                  ..year = widget.entry.startedAt?.year,
              ).toBuilder()
            : null
        ..hiddenFromStatusLists = widget.entry.hiddenFromStatusLists
        ..notes = widget.entry.notes
        ..priority = widget.entry.priority
        ..private = widget.entry.private
        ..progress = widget.entry.progress
        ..progressVolumes = widget.entry.progressVolumes
        ..repeat = widget.entry.repeat
        ..score = widget.entry.score
        ..status = widget.entry.status
        ..customLists.addAll(widget.entry.customLists?.asList
                .where((e) => e['enabled'] == true)
                .map((e) => e['name']) ??
            []));

    og = GSaveMediaListEntryVars(
      (b) => b..replace(options.build()),
    );
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
      setState(() => options.update((p0) => p0..notes = textController.text));
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
                  ref
                      .read(ferryClientProvider)
                      .request(GDeleteMediaListEntryReq(
                        (b) => b..vars.id = widget.entry.id,
                      ))
                      .first
                      .then((value) => widget.onDelete?.call());
                  if (mounted) context.pop();
                }
              },
              icon: const Icon(Icons.delete),
              color: Colors.red,
            ),
          IconButton(
            padding: const EdgeInsets.all(16),
            onPressed: () {
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
                  onChanged: (value) => setState(
                      () => options.update((p0) => p0..status = value)),
                  dropdownItems: GMediaListStatus.values
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
                      '${widget.entry.media!.type == GMediaType.ANIME ? 'Episode' : 'Chapter'} Progress',
                  onIncrement: () {
                    var number = (options.progress ?? 0) + 1;

                    if (widget.entry.media!.episodes != null &&
                        number >= widget.entry.media!.episodes!) {
                      if (options.status != GMediaListStatus.COMPLETED) {
                        setState(
                          () => options.update(
                            (p0) => p0
                              ..progress = number
                              ..status = GMediaListStatus.COMPLETED,
                          ),
                        );
                      }
                      return;
                    }

                    setState(
                      () => options.update(
                          (p0) => p0..progress = (options.progress ?? 0) + 1),
                    );
                  },
                  onDecrement: () {
                    var number = (options.progress ?? 0) - 1;

                    if (number < 0) return;
                    if (widget.entry.media!.episodes != null &&
                        options.progress! >= widget.entry.media!.episodes! &&
                        options.status == GMediaListStatus.COMPLETED) {
                      return setState(
                        () => options.update((p0) => p0
                          ..progress = number
                          ..status = og.status),
                      );
                    }

                    setState(
                      () => options.update((p0) => p0..progress = number),
                    );
                  },
                ),
                NumberPicker(
                  number: (options.repeat ?? 0) == 0 ? null : options.repeat,
                  hint: widget.entry.media!.type == GMediaType.ANIME
                      ? 'Rewatches'
                      : 'Rereads',
                  onIncrement: () => setState(
                    () => options
                        .update((p0) => p0..repeat = (options.repeat ?? 0) + 1),
                  ),
                  onDecrement: () {
                    var number = (options.repeat ?? 0) - 1;

                    if (number < 0) return;

                    setState(
                      () => options.update((p0) => p0..repeat = number),
                    );
                  },
                ),
                _MediaScore(
                  score: options.score ?? 0,
                  onIncrement: (score) {
                    setState(
                      () =>
                          options.update((p0) => p0..score = score.toDouble()),
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
                setState(() => options.update((p0) => p0..private = value)),
          ),
          _MediaListDate(
            start: true,
            date: options.startedAt.toDateString(),
            onTap: _showStartDate,
            onClear: () =>
                setState(() => options.update((p0) => p0..startedAt = null)),
          ),
          const SizedBox(
            height: 1,
          ),
          _MediaListDate(
            start: false,
            date: options.completedAt.toDateString(),
            onTap: _showCompletedDate,
            onClear: () =>
                setState(() => options.update((p0) => p0..completedAt = null)),
          ),
          if (widget.entry.customLists?.asList.isNotEmpty == true) ...[
            Text(
              'Custom Lists',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ...widget.entry.customLists!.asList.map(
              (e) => RadioListTile.adaptive(
                value: true,
                groupValue: options.customLists.build().contains(e['name']),
                title: Text(e['name']),
                controlAffinity: ListTileControlAffinity.trailing,
                toggleable: true,
                onChanged: (value) {
                  if (value == true) {
                    setState(
                      () => options.update(
                        (p0) => p0..customLists.add(e['name']),
                      ),
                    );
                  } else {
                    setState(
                      () => options.update(
                        (p0) => p0..customLists.remove(e['name']),
                      ),
                    );
                  }
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
      initialDate: options.startedAt.toDate() ?? DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime(2100),
    );

    if (date != null && context.mounted) {
      setState(
        () => options.update((p0) => p0
          ..startedAt = GFuzzyDateInput((b) => b
            ..year = date.year
            ..month = date.month
            ..day = date.day).toBuilder()),
      );
    }
  }

  void _showCompletedDate() async {
    var date = await showDatePicker(
      context: context,
      initialDate: options.completedAt.toDate() ?? DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime(2100),
    );

    if (date != null && context.mounted) {
      setState(
        () => options.update((p0) => p0
          ..completedAt = GFuzzyDateInput((b) => b
            ..year = date.year
            ..month = date.month
            ..day = date.day).toBuilder()),
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
          case GScoreFormat.POINT_3:
            if (score >= 3) return;
            onIncrement(score + 1);
            break;
          case GScoreFormat.POINT_5:
            if (score >= 5) return;
            onIncrement(score + 1);
            break;
          case GScoreFormat.POINT_10:
            if (score >= 10) return;
            onIncrement(score + 1);
            break;
          case GScoreFormat.POINT_10_DECIMAL:
            if (score >= 10) return;
            onIncrement(score + 0.5);
            break;
          case GScoreFormat.POINT_100:
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
          case GScoreFormat.POINT_3:
            onIncrement(score - 1);
            break;
          case GScoreFormat.POINT_5:
            onIncrement(score - 1);
            break;
          case GScoreFormat.POINT_10:
            onIncrement(score - 1);
            break;
          case GScoreFormat.POINT_10_DECIMAL:
            onIncrement(score - 0.5);
            break;
          case GScoreFormat.POINT_100:
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
  GMediaFragment media, {
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
