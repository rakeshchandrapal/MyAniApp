import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/app/settings/settings_page.dart';
import 'package:myaniapp/common/dialogs/confirmation.dart';
import 'package:myaniapp/common/media_editor/__generated__/media_editor.data.gql.dart';
import 'package:myaniapp/common/media_editor/__generated__/media_editor.req.gql.dart';
import 'package:myaniapp/common/media_editor/__generated__/media_editor.var.gql.dart';
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
    var enabled = userId == widget.entry.user?.id;
    var builtCustomList = options.customLists.build();

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
        padding: const EdgeInsets.all(8),
        children: [
          SettingsSection(
            title: null,
            tiles: [
              PopupSettingsTile(
                title: "Status",
                enabled: enabled,
                value: options.status,
                items: [
                  for (var s in GMediaListStatus.values)
                    PopupSettingItem(
                      value: s,
                      label: s.name.capitalize(),
                    )
                ],
                onSelected: (value) => setState(() => options.status = value),
              ),
              SettingTileNumber(
                title: widget.entry.media?.type == GMediaType.ANIME
                    ? "Episodes Watched"
                    : "Chapters Read",
                enabled: enabled,
                value: options.progress ?? 0,
                onChanged: (value) => setState(() => options.progress = value),
                max: widget.entry.media?.episodes ??
                    widget.entry.media?.chapters,
              ),
              SettingTileNumber(
                title: "Rewatches",
                enabled: enabled,
                value: options.repeat ?? 0,
                onChanged: (value) => setState(() => options.repeat = value),
              ),
              if (widget.entry.user!.mediaListOptions!.scoreFormat ==
                  GScoreFormat.POINT_3)
                SettingsTile(
                  title: Text("Score"),
                  child: Row(
                    children: [
                      FilterChip(
                        label: const Text("☹️"),
                        showCheckmark: false,
                        selected: options.score == 1,
                        onSelected: enabled
                            ? (value) {
                                if (value == true) {
                                  setState(() => options.score = 1);
                                }
                                if (value == false) {
                                  setState(() => options.score = 0);
                                }
                              }
                            : null,
                      ),
                      const SizedBox(width: 5),
                      FilterChip(
                        label: const Text("😐"),
                        selected: options.score == 2,
                        showCheckmark: false,
                        onSelected: enabled
                            ? (value) {
                                if (value == true) {
                                  setState(() => options.score = 2);
                                }
                                if (value == false) {
                                  setState(() => options.score = 0);
                                }
                              }
                            : null,
                      ),
                      const SizedBox(width: 5),
                      FilterChip(
                        label: const Text("😃"),
                        selected: options.score == 3,
                        showCheckmark: false,
                        onSelected: enabled
                            ? (value) {
                                if (value == true) {
                                  setState(() => options.score = 3);
                                }
                                if (value == false) {
                                  setState(() => options.score = 0);
                                }
                              }
                            : null,
                      ),
                    ],
                  ),
                )
              else
                SettingTileNumber(
                  title: "Score",
                  enabled: enabled,
                  value: switch (
                      widget.entry.user!.mediaListOptions!.scoreFormat!) {
                    (GScoreFormat.POINT_3) => options.score ?? 0,
                    (GScoreFormat.POINT_5) => (options.score ?? 0).toInt(),
                    (GScoreFormat.POINT_10) => (options.score ?? 0).toInt(),
                    (GScoreFormat.POINT_10_DECIMAL) => (options.score ?? 0),
                    (GScoreFormat.POINT_100) => (options.score ?? 0).toInt(),
                    _ => options.score ?? 0,
                  },
                  max: switch (
                      widget.entry.user!.mediaListOptions!.scoreFormat!) {
                    (GScoreFormat.POINT_3) => 3,
                    (GScoreFormat.POINT_5) => 5,
                    (GScoreFormat.POINT_10) => 10,
                    (GScoreFormat.POINT_10_DECIMAL) => 10.0,
                    (GScoreFormat.POINT_100) => 100,
                    GScoreFormat() => throw UnimplementedError(),
                  },
                  onChanged: (value) {
                    setState(() => options.score = value.toDouble());
                  },
                ),
              SettingsTile(
                title: Text("Start date"),
                onTap: () async {
                  var selectedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1940),
                    initialDate: options.startedAt.toDate(),
                    lastDate: DateTime(3000),
                  );

                  if (selectedDate != null) {
                    setState(
                      () => options.startedAt.update(
                        (p0) {
                          p0.day = selectedDate.day;
                          p0.month = selectedDate.month;
                          p0.year = selectedDate.year;
                        },
                      ),
                    );
                  }
                },
                enabled: enabled,
                subtitle: options.startedAt.toDate() != null
                    ? Text(
                        DateFormat.yMMMMd().format(options.startedAt.toDate()!))
                    : null,
                child: options.startedAt.toDate() != null
                    ? IconButton(
                        onPressed: () =>
                            setState(() => options.startedAt.update(
                                  (p0) => p0
                                    ..day = null
                                    ..month = null
                                    ..year = null,
                                )),
                        icon: const Icon(Icons.clear),
                      )
                    : null,
              ),
              SettingsTile(
                title: Text("Finished date"),
                onTap: () async {
                  var selectedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1940),
                    initialDate: options.completedAt.toDate(),
                    lastDate: DateTime(3000),
                  );

                  if (selectedDate != null) {
                    setState(
                      () => options.completedAt.update(
                        (p0) {
                          p0.day = selectedDate.day;
                          p0.month = selectedDate.month;
                          p0.year = selectedDate.year;
                        },
                      ),
                    );
                  }
                },
                enabled: enabled,
                subtitle: options.completedAt.toDate() != null
                    ? Text(DateFormat.yMMMMd()
                        .format(options.completedAt.toDate()!))
                    : null,
                child: options.completedAt.toDate() != null
                    ? IconButton(
                        onPressed: () =>
                            setState(() => options.completedAt.update(
                                  (p0) => p0
                                    ..day = null
                                    ..month = null
                                    ..year = null,
                                )),
                        icon: const Icon(Icons.clear),
                      )
                    : null,
              ),
              if (enabled) ...[
                SwitchSettingsTile(
                  title: "Private",
                  enabled: enabled,
                  value: options.private ?? false,
                  onChanged: (value) => setState(() => options.private = value),
                ),
                SwitchSettingsTile(
                  title: "Hide From Statis List",
                  value: options.hiddenFromStatusLists ?? false,
                  enabled: enabled,
                  onChanged: (value) =>
                      setState(() => options.hiddenFromStatusLists = value),
                ),
                MultiPopupSettingsTile<String>(
                  title: "Custom List",
                  initialValues: builtCustomList.cast<String>().toList(),
                  items: [
                    for (var list in (widget.entry.customLists?.asList ?? []))
                      PopupSettingCheckbox(
                        value: list['name'],
                        label: list['name'],
                      )
                  ],
                  onSaved: (value) {
                    setState(() => options.customLists
                      ..clear()
                      ..addAll(value));
                  },
                )
              ],
            ],
          ),
          const SizedBox(height: 10),
          if (enabled || options.notes?.isNotEmpty == true)
            _NoteBox(
              note: options.notes,
              onChanged: (note) => options.notes = note,
              enabled: userId == widget.entry.user?.id,
            )
        ],
      ),
    );
  }
}

class SettingTileNumber<T extends num> extends HookWidget {
  const SettingTileNumber({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.max,
    this.enabled,
  });

  final void Function(T value) onChanged;
  final T value;
  final T? max;
  final String title;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    var textEditingController =
        useTextEditingController(text: value.toString());
    final textEditingUpdate = useValueListenable(textEditingController);

    useEffect(
      () {
        Future(
          () {
            if (textEditingController.text.isEmpty) {
              onChanged(0 as T);
            } else {
              var num = value is int
                  ? int.tryParse(textEditingController.text)
                  : double.tryParse(textEditingController.text);

              // print(textEditingController.text);
              if (num != null) {
                if (max != null && num > max!) {
                  onChanged(max!);
                  textEditingController.text = max!.toString();
                } else {
                  onChanged(num as T);
                }
              }
            }
          },
        );
        return null;
      },
      [textEditingUpdate],
    );

    return SettingsTile(
      title: Text(title),
      child: Row(
        children: [
          if (enabled == false)
            Text(value.toString())
          else
            SizedBox(
              width: 50,
              height: 30,
              child: TextField(
                controller: textEditingController,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  if (value is double)
                    FilteringTextInputFormatter.allow(
                        RegExp(r"[0-9]*\.?[0-9]?"))
                  else
                    FilteringTextInputFormatter.digitsOnly,
                ],
                // expands: true,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.only(bottom: 16),
                ),
              ),
            ),
          if (max != null) Text(" / $max"),
          const SizedBox(width: 5),
          if (enabled != false) ...[
            IconButton(
              visualDensity: VisualDensity.compact,
              iconSize: 20,
              onPressed: () {
                var num = value is int
                    ? int.tryParse(textEditingController.text)
                    : double.tryParse(textEditingController.text);

                // print(textEditingController.text);
                if (num != null) {
                  if (max != null && (num + 1) > max!) {
                    onChanged(max!);
                    textEditingController.text = max!.toString();
                  } else {
                    onChanged(num + 1 as T);
                    textEditingController.text = (num + 1).toString();
                  }
                }
              },
              icon: const Icon(Icons.arrow_upward),
            ),
            IconButton(
              visualDensity: VisualDensity.compact,
              iconSize: 20,
              onPressed: () {
                var num = value is int
                    ? int.tryParse(textEditingController.text)
                    : double.tryParse(textEditingController.text);

                // print(textEditingController.text);
                if (num != null) {
                  if ((num - 1) < 0) {
                    onChanged(num is int ? 0 as T : 0.0 as T);
                    textEditingController.text =
                        (num is int ? 0 : 0.0).toString();
                  } else {
                    onChanged(num - 1 as T);
                    textEditingController.text = (num - 1).toString();
                  }
                }
              },
              icon: const Icon(Icons.arrow_downward),
            ),
          ]
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
        labelText: "Notes",
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
