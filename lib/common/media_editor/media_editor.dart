import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/common/custom_dropdown.dart';
import 'package:myaniapp/common/dialogs/confirmation.dart';
import 'package:myaniapp/common/media_editor/__generated__/media_editor.data.gql.dart';
import 'package:myaniapp/common/media_editor/__generated__/media_editor.req.gql.dart';
import 'package:myaniapp/common/media_editor/__generated__/media_editor.var.gql.dart';
import 'package:myaniapp/common/number_picker.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/user.dart';

class MediaEditorDialog extends ConsumerWidget {
  const MediaEditorDialog({
    super.key,
    required this.media,
    required this.userId,
    required this.onSave,
    required this.onDelete,
  });

  final GMediaFragment media;
  final int userId;
  final VoidCallback onSave;
  final VoidCallback? onDelete;

  static void show(
    BuildContext context,
    GMediaFragment media,
    int userId, {
    required VoidCallback onSave,
    VoidCallback? onDelete,
  }) {
    showDialog(
      context: context,
      useSafeArea: false,
      builder: (context) => Dialog.fullscreen(
        child: MediaEditorDialog(
          media: media,
          userId: userId,
          onDelete: onDelete,
          onSave: onSave,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GQLRequest(
      operationRequest: GMediaEntryReq(
        (b) => b
          ..requestId = "mediaListEntry$media$userId"
          ..vars.mediaId = media.id
          ..vars.userId = userId,
      ),
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      errorWidget: false,
      builder: (context, response, error, refetch) {
        // var mediaList = ;
        var mediaList = (response!.data?.MediaList);

        if (mediaList == null) {
          var user = ref.read(userProvider);

          mediaList = GMediaEntryData_MediaList((b) => b
                ..id = -1
                ..mediaId = media.id
                ..media =
                    GMediaEntryData_MediaList_media.fromJson(media.toJson())
                        ?.toBuilder()
              // ..user = user.value?.data != null &&
              //         user.value!.data!.Viewer!.id == userId
              //     ? GMediaEntryData_MediaList_user.fromJson(
              //             user.value!.data!.toJson())
              //         ?.toBuilder()
              //     : null,
              );

          if (user.value?.data != null &&
              user.value!.data!.Viewer!.id == userId) {
            mediaList = mediaList.rebuild((p0) => p0.user.replace(
                GMediaEntryData_MediaList_user.fromJson(
                    user.value!.data!.Viewer!.toJson())!));
          }
        }

        // mediaList ??= GMediaListEntryData((b) => ,);

        return _MediaEditorView(
          entry: mediaList,
          onDelete: onDelete,
          onSave: onSave,
          key: Key(response.data?.toString() ?? "nada"),
        );
      },
    );
  }
}

class _MediaEditorView extends ConsumerStatefulWidget {
  const _MediaEditorView({
    super.key,
    required this.entry,
    required this.onSave,
    this.onDelete,
  });

  final GMediaEntryData_MediaList entry;
  final VoidCallback onSave;
  final VoidCallback? onDelete;

  @override
  ConsumerState<_MediaEditorView> createState() => __MediaEditorViewState();
}

class __MediaEditorViewState extends ConsumerState<_MediaEditorView> {
  late GSaveMediaListEntryVarsBuilder options;
  late GSaveMediaListEntryVars og;

  @override
  void initState() {
    super.initState();
    options = GSaveMediaListEntryVarsBuilder()
      ..update((p0) => p0
        ..id = widget.entry.id
        ..mediaId = widget.entry.mediaId
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
  }

  @override
  Widget build(BuildContext context) {
    var userId = ref
        .watch(userProvider.select((value) => value.value?.data?.Viewer?.id));

    return Scaffold(
      appBar: AppBar(
        actions: [
          if (userId == widget.entry.user?.id &&
              widget.onDelete != null &&
              options.id != -1)
            IconButton(
              onPressed: () => ConfirmationDialog.show(
                context,
                "media from your list",
                () async {
                  if (options.id != -1) {
                    await client
                        .request(GDeleteMediaListEntryReq(
                          (b) => b..vars.id = options.id,
                        ))
                        .first;
                    widget.onDelete!();
                  }

                  if (context.mounted) context.pop();
                },
                delete: true,
              ),
              icon: const Icon(Icons.delete),
              color: Colors.red,
            ),
          if (userId == widget.entry.user?.id)
            IconButton(
              onPressed: () async {
                if (options.toString() != og.toString()) {
                  if (options.id == -1) options.id = null;
                  await client
                      .request(GSaveMediaListEntryReq(
                        (b) => b..vars.replace(options.build()),
                      ))
                      .first;
                  widget.onSave();
                }

                if (context.mounted) context.pop();
              },
              icon: const Icon(Icons.save),
            ),
          const SizedBox(width: 5),
        ],
      ),
      body: ListView(
        children: [
          GridView(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              mainAxisExtent: 60,
              crossAxisSpacing: 5,
              mainAxisSpacing: 8,
            ),
            children: [
              SheetDropdownMenu(
                value: options.status,
                hint: "Status",
                enabled: userId == widget.entry.user?.id,
                onChanged: (values) => options.status = values.first,
                items: GMediaListStatus.values.map(
                  (p0) => DropdownMenuEntry(
                    value: p0,
                    label: p0.name.capitalize(),
                  ),
                ),
              ),
              NumberPicker(
                label: "Score",
                value: options.score ?? 0,
                // readOnly: true,
                enabled: userId == widget.entry.user?.id,
                min: 0,
                max: switch (
                    widget.entry.user!.mediaListOptions!.scoreFormat!) {
                  (GScoreFormat.POINT_3) => 3,
                  (GScoreFormat.POINT_5) => 5,
                  (GScoreFormat.POINT_10) => 10,
                  (GScoreFormat.POINT_10_DECIMAL) => 10,
                  (GScoreFormat.POINT_100) => 100,
                  GScoreFormat() => throw UnimplementedError(),
                },
                buildText: (value) =>
                    switch (widget.entry.user!.mediaListOptions!.scoreFormat!) {
                  (GScoreFormat.POINT_3) => switch (value) {
                      0 => "",
                      1 => ":(",
                      2 => ":|",
                      3 => ":)",
                      _ => value.toString()
                    },
                  _ => value.toString(),
                },
                onDecrement: (value) =>
                    setState(() => options.score = value.toDouble()),
                onIncrement: (value) =>
                    setState(() => options.score = value.toDouble()),
              ),
              NumberPicker(
                label: "Episodes Progress",
                value: (options.progress ?? 0).toInt(),
                // readOnly: true,
                enabled: userId == widget.entry.user?.id,
                min: 0,
                max: widget.entry.media!.episodes,
                onDecrement: (value) =>
                    setState(() => options.progress = value.toInt()),
                onIncrement: (value) =>
                    setState(() => options.progress = value.toInt()),
              ),
              NumberPicker(
                label: "Rewatches",
                value: (options.repeat ?? 0).toInt(),
                // readOnly: true,
                enabled: userId == widget.entry.user?.id,
                min: 0,
                onDecrement: (value) =>
                    setState(() => options.repeat = value.toInt()),
                onIncrement: (value) =>
                    setState(() => options.repeat = value.toInt()),
              ),
              DateTimeButton(
                text: "Start Date",
                date: options.startedAt.toDate(),
                enabled: userId == widget.entry.user?.id,
                onClear: () => setState(
                  () => options.startedAt.update(
                    (p0) {
                      p0.day = null;
                      p0.month = null;
                      p0.year = null;
                    },
                  ),
                ),
                onChanged: (date) => setState(
                  () => options.startedAt.update(
                    (p0) {
                      p0.day = date.day;
                      p0.month = date.month;
                      p0.year = date.year;
                    },
                  ),
                ),
              ),
              DateTimeButton(
                text: "Finish Date",
                date: options.completedAt.toDate(),
                enabled: userId == widget.entry.user?.id,
                onClear: () => setState(
                  () => options.completedAt.update(
                    (p0) {
                      p0.day = null;
                      p0.month = null;
                      p0.year = null;
                    },
                  ),
                ),
                onChanged: (date) => setState(
                  () => options.completedAt.update(
                    (p0) {
                      p0.day = date.day;
                      p0.month = date.month;
                      p0.year = date.year;
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          SwitchListTile.adaptive(
            value: options.private ?? false,
            title: const Text("Private"),
            onChanged: userId == widget.entry.user?.id
                ? (value) => setState(
                      () => options.private = value,
                    )
                : null,
          ),
          SwitchListTile.adaptive(
            value: options.hiddenFromStatusLists ?? false,
            title: const Text("Hide from status list"),
            onChanged: userId == widget.entry.user?.id
                ? (value) =>
                    setState(() => options.hiddenFromStatusLists = value)
                : null,
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: _NoteBox(
              note: options.notes,
              onChanged: (note) => options.notes = note,
              enabled: userId == widget.entry.user?.id,
            ),
          )
        ],
      ),
    );
  }
}

class _NoteBox extends StatefulWidget {
  const _NoteBox({
    this.note,
    required this.onChanged,
    this.enabled = true,
  });

  final String? note;
  final Function(String note) onChanged;
  final bool enabled;

  @override
  State<_NoteBox> createState() => __NoteBoxState();
}

class __NoteBoxState extends State<_NoteBox> {
  late final TextEditingController _controller =
      TextEditingController(text: widget.note);

  @override
  void initState() {
    super.initState();
    _controller.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void listener() {
    widget.onChanged(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: widget.enabled,
      controller: _controller,
      maxLines: null,
      decoration: const InputDecoration(
        border: OutlineInputBorder(borderRadius: imageRadius),
        labelText: "Note",
      ),
    );
  }
}

class DateTimeButton extends StatelessWidget {
  const DateTimeButton({
    super.key,
    required this.text,
    this.date,
    required this.onChanged,
    required this.onClear,
    this.enabled = true,
  });

  final String text;
  final DateTime? date;
  final Function(DateTime date) onChanged;
  final VoidCallback onClear;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled
          ? () async {
              var selectedDate = await showDatePicker(
                context: context,
                firstDate: DateTime(1940),
                initialDate: date,
                lastDate: DateTime(3000),
              );

              if (selectedDate != null) onChanged(selectedDate);
            }
          : null,
      child: InputDecorator(
        decoration: InputDecoration(
          enabled: enabled,
          labelText: text,
          border: const OutlineInputBorder(borderRadius: imageRadius),
          suffixIcon: Show(
            when: date != null && enabled,
            child: () => Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: onClear,
              ),
            ),
          ),
        ),
        isEmpty: date == null,
        expands: true,
        child: date != null
            ? Text(
                DateFormat.yMMMMd().format(date!.toLocal()),
                style: enabled
                    ? null
                    : TextStyle(color: context.theme.disabledColor),
              )
            : null,
      ),
    );
  }
}
