import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/app/settings/settings_screen.dart';
import 'package:myaniapp/common/dialogs/confirmation.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/media_editor.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/media.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:mygraphql/graphql.dart';
import 'package:numberpicker/numberpicker.dart';

class MediaEditorDialog extends HookConsumerWidget {
  const MediaEditorDialog({
    super.key,
    required this.media,
    required this.userId,
    required this.onSave,
    required this.onDelete,
  });

  final Fragment$MediaFragment media;
  final int userId;
  final VoidCallback onSave;
  final VoidCallback? onDelete;

  static void show(
    BuildContext context,
    Fragment$MediaFragment media,
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
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      mediaEntryQuery,
      variables: Variables$Query$MediaEntry(mediaId: media.id, userId: userId)
          .toJson(),
      parseData: Query$MediaEntry.fromJson,
      fetchPolicy: FetchPolicy.networkOnly,
    ));

    return GQLWidget(
      // operationRequest: GMediaEntryReq(
      //   (b) => b
      //     ..requestId = "mediaListEntry$media$userId"
      //     ..vars.mediaId = media.id
      //     ..vars.userId = userId,
      // ),
      refetch: refetch,
      response: snapshot,
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      errorWidget: false,
      builder: () {
        // var mediaList = ;
        var mediaList = (snapshot.parsedData?.MediaList);

        if (mediaList == null) {
          var user = ref.read(userProvider);
          mediaList = Query$MediaEntry$MediaList(
            id: -1,
            mediaId: media.id,
            media: Query$MediaEntry$MediaList$media.fromJson(media.toJson()),
          );

          if (user.value?.parsedData != null &&
              user.value!.parsedData!.Viewer!.id == userId) {
            mediaList = mediaList.copyWith(
              user: Query$MediaEntry$MediaList$user.fromJson(
                  user.value!.parsedData!.Viewer!.toJson()),
            );
          }
        }

        // mediaList ??= GMediaListEntryData((b) => ,);

        return _MediaEditorView(
          entry: mediaList,
          onDelete: onDelete,
          onSave: onSave,
          key: Key(snapshot.data?.toString() ?? "nada"),
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

  final Query$MediaEntry$MediaList entry;
  final VoidCallback onSave;
  final VoidCallback? onDelete;

  @override
  ConsumerState<_MediaEditorView> createState() => __MediaEditorViewState();
}

class __MediaEditorViewState extends ConsumerState<_MediaEditorView> {
  late Variables$Mutation$SaveMediaListEntry options;
  late Variables$Mutation$SaveMediaListEntry og;

  @override
  void initState() {
    super.initState();
    options = Variables$Mutation$SaveMediaListEntry(
      completedAt: widget.entry.completedAt != null
          ? Input$FuzzyDateInput(
              day: widget.entry.completedAt?.day,
              month: widget.entry.completedAt?.month,
              year: widget.entry.completedAt?.year,
            )
          : null,
      startedAt: widget.entry.startedAt != null
          ? Input$FuzzyDateInput(
              day: widget.entry.startedAt?.day,
              month: widget.entry.startedAt?.month,
              year: widget.entry.startedAt?.year,
            )
          : null,
      customLists: widget.entry.customLists
          ?.where((e) => e['enabled'] == true)
          .map((e) => e['name'])
          .cast<String>()
          .toList(),
      hiddenFromStatusLists: widget.entry.hiddenFromStatusLists,
      // id: widget.entry.id,
      // mediaId: widget.entry.mediaId,
      notes: widget.entry.notes,
      priority: widget.entry.priority,
      private: widget.entry.private,
      progress: widget.entry.progress,
      progressVolumes: widget.entry.progressVolumes,
      repeat: widget.entry.repeat,
      score: widget.entry.score,
      status: widget.entry.status,
    );

    og = options.copyWith();
  }

  @override
  Widget build(BuildContext context) {
    var userId = ref.watch(
        userProvider.select((value) => value.value?.parsedData?.Viewer?.id));
    var enabled = userId == widget.entry.user?.id;
    // print(widget.entry.customLists);
    // var builtCustomList = options.customLists.build();

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
                  if (widget.entry.id != -1) {
                    await c
                        .query(GQLRequest(deleteMediaListEntryQuery,
                            variables: {'id': widget.entry.id}))
                        .last;
                    widget.onDelete!();
                  }

                  if (context.mounted) context.maybePop();
                },
                delete: true,
              ),
              icon: const Icon(Icons.delete),
              color: Colors.red,
            ),
          if (userId == widget.entry.user?.id)
            IconButton(
              onPressed: () async {
                if (!jsonMapEquals(options.toJson(), og.toJson())) {
                  if (widget.entry.id == -1) {
                    options = options.copyWith(mediaId: widget.entry.mediaId);
                  } else {
                    options = options.copyWith(id: widget.entry.id);
                  }
                  print(options.toJson());
                  var i = await c
                      .query(GQLRequest(saveMediaListEntryQuery,
                          variables: options.toJson()))
                      .last;
                  widget.onSave();
                }

                if (context.mounted) context.maybePop();
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
                  for (var s in Enum$MediaListStatus.values)
                    PopupSettingItem(
                      value: s,
                      label: s.name.capitalize(),
                    )
                ],
                onSelected: (value) =>
                    setState(() => options = options.copyWith(status: value)),
              ),
              // SettingsTile(
              //   title: Text(widget.entry.media?.type == Enum$MediaType.ANIME
              //       ? "Episodes Watched"
              //       : "Chapters Read"),
              //   child: NumberPicker(
              //     minValue: 0,
              //     maxValue: widget.entry.media?.episodes ??
              //         widget.entry.media?.chapters ??
              //         (options.progress ?? 0) + 100,
              //     onChanged: (value) => setState(
              //         () => options = options.copyWith(progress: value)),
              //     value: options.progress ?? 0,
              //     axis: Axis.horizontal,
              //     itemWidth: 50,
              //   ),
              // ),
              SettingIntNumber(
                title: widget.entry.media?.type == Enum$MediaType.ANIME
                    ? "Episodes Watched"
                    : "Chapters Read",
                enabled: enabled,
                value: options.progress ?? 0,
                onChanged: (value) =>
                    setState(() => options = options.copyWith(progress: value)),
                max: widget.entry.media?.episodes ??
                    widget.entry.media?.chapters,
              ),
              SettingIntNumber(
                title: "Rewatches",
                enabled: enabled,
                value: options.repeat ?? 0,
                onChanged: (value) =>
                    setState(() => options = options.copyWith(repeat: value)),
              ),
              if (widget.entry.user!.mediaListOptions!.scoreFormat ==
                  Enum$ScoreFormat.POINT_3)
                SettingsTile(
                  title: const Text("Score"),
                  child: Row(
                    children: [
                      FilterChip(
                        label: const Text("☹️"),
                        showCheckmark: false,
                        selected: options.score == 1,
                        onSelected: enabled
                            ? (value) {
                                if (value == true) {
                                  setState(() =>
                                      options = options.copyWith(score: 1));
                                }
                                if (value == false) {
                                  setState(() =>
                                      options = options.copyWith(score: 0));
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
                                  setState(() =>
                                      options = options.copyWith(score: 2));
                                }
                                if (value == false) {
                                  setState(() =>
                                      options = options.copyWith(score: 0));
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
                                  setState(() =>
                                      options = options.copyWith(score: 3));
                                }
                                if (value == false) {
                                  setState(() =>
                                      options = options.copyWith(score: 0));
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
                    (Enum$ScoreFormat.POINT_3) => options.score ?? 0,
                    (Enum$ScoreFormat.POINT_5) => (options.score ?? 0).toInt(),
                    (Enum$ScoreFormat.POINT_10) => (options.score ?? 0).toInt(),
                    (Enum$ScoreFormat.POINT_10_DECIMAL) => (options.score ?? 0),
                    (Enum$ScoreFormat.POINT_100) =>
                      (options.score ?? 0).toInt(),
                    _ => options.score ?? 0,
                  },
                  max: switch (
                      widget.entry.user!.mediaListOptions!.scoreFormat!) {
                    (Enum$ScoreFormat.POINT_3) => 3,
                    (Enum$ScoreFormat.POINT_5) => 5,
                    (Enum$ScoreFormat.POINT_10) => 10,
                    (Enum$ScoreFormat.POINT_10_DECIMAL) => 10.0,
                    (Enum$ScoreFormat.POINT_100) => 100,
                    Enum$ScoreFormat() => throw UnimplementedError(),
                  },
                  onChanged: (value) {
                    setState(() =>
                        options = options.copyWith(score: value.toDouble()));
                  },
                ),
              SettingsTile(
                title: const Text("Start date"),
                onTap: () async {
                  var selectedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1940),
                    initialDate: options.startedAt?.toDate(),
                    lastDate: DateTime(3000),
                  );

                  if (selectedDate != null) {
                    setState(() => options = options.copyWith(
                        startedAt: Input$FuzzyDateInput(
                            day: selectedDate.day,
                            month: selectedDate.month,
                            year: selectedDate.year)));
                  }
                },
                enabled: enabled,
                subtitle: options.startedAt?.toDate() != null
                    ? Text(DateFormat.yMMMMd()
                        .format(options.startedAt!.toDate()!))
                    : null,
                child: options.startedAt?.toDate() != null && enabled
                    ? IconButton(
                        onPressed: () => setState(
                            () => options = options.copyWith(startedAt: null)),
                        icon: const Icon(Icons.clear),
                      )
                    : null,
              ),
              SettingsTile(
                title: const Text("Finished date"),
                onTap: () async {
                  var selectedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1940),
                    initialDate: options.completedAt?.toDate(),
                    lastDate: DateTime(3000),
                  );

                  if (selectedDate != null) {
                    setState(() => options = options.copyWith(
                        completedAt: Input$FuzzyDateInput(
                            day: selectedDate.day,
                            month: selectedDate.month,
                            year: selectedDate.year)));
                  }
                },
                enabled: enabled,
                subtitle: options.completedAt?.toDate() != null
                    ? Text(DateFormat.yMMMMd()
                        .format(options.completedAt!.toDate()!))
                    : null,
                child: options.completedAt?.toDate() != null && enabled
                    ? IconButton(
                        onPressed: () => setState(
                            () => options = options.copyWith(startedAt: null)),
                        icon: const Icon(Icons.clear),
                      )
                    : null,
              ),
              if (enabled) ...[
                SwitchSettingsTile(
                  title: "Private",
                  enabled: enabled,
                  value: options.private ?? false,
                  onChanged: (value) => setState(
                      () => options = options.copyWith(private: value)),
                ),
                SwitchSettingsTile(
                  title: "Hide From Statis List",
                  value: options.hiddenFromStatusLists ?? false,
                  enabled: enabled,
                  onChanged: (value) => setState(() =>
                      options = options.copyWith(hiddenFromStatusLists: value)),
                ),
                MultiPopupSettingsTile<String>(
                  title: "Custom List",
                  initialValues: options.customLists?.cast(),
                  items: [
                    for (var list in (widget.entry.customLists ?? []))
                      PopupSettingCheckbox(
                        value: list['name'],
                        label: list['name'],
                      )
                  ],
                  onSaved: (value) {
                    setState(
                        () => options = options.copyWith(customLists: value));
                  },
                )
              ],
            ],
          ),
          const SizedBox(height: 10),
          if (enabled || options.notes?.isNotEmpty == true)
            _NoteBox(
              note: options.notes,
              onChanged: (note) => options = options.copyWith(notes: note),
              enabled: userId == widget.entry.user?.id,
            )
        ],
      ),
    );
  }
}

class SettingIntNumber extends StatelessWidget {
  const SettingIntNumber(
      {super.key,
      required this.onChanged,
      required this.value,
      this.max,
      required this.title,
      this.enabled});

  final void Function(int value) onChanged;
  final int value;
  final int? max;
  final String title;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      title: Text(title),
      subtitle: Center(
        child: NumberPicker(
          minValue: 0,
          maxValue: max ?? (value ?? 0) + 100,
          onChanged: onChanged,
          value: value,
          axis: Axis.horizontal,
          itemWidth: 50,
          decoration: BoxDecoration(
            border: Border.all(color: context.theme.colorScheme.primary),
            borderRadius: imageRadius,
          ),
        ),
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
