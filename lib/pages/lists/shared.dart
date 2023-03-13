import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/graphql_client.dart';
import 'package:MyAniApp/providers/graphql.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/widgets/app_bar.dart';
import 'package:MyAniApp/widgets/lists/cards.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

class Tabs extends StatefulWidget {
  final List<Query$FetchMediaList$MediaListCollection$lists?> lists;
  final Future<QueryResult<Query$FetchMediaList>?> Function()? refresh;
  final String title;

  const Tabs(
      {super.key, required this.lists, this.refresh, required this.title});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.lists.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();

    return Appbar(
      title: Text(widget.title),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: IconButton(
            onPressed: () => context.push('/settings/app'),
            icon: const Icon(Icons.settings),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: [
              for (var list in widget.lists)
                Tab(
                  text: list!.name,
                )
            ],
          ),
        ),
      ),
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            controller: _tabController,
            children: [
              for (var list in widget.lists)
                ListTab(
                  list: list!,
                  updateList: widget.refresh,
                )
            ],
          ),
        ),
      ),
    );
  }
}

class ListTab extends StatefulWidget {
  final Query$FetchMediaList$MediaListCollection$lists list;
  final Future<QueryResult<Query$FetchMediaList>?> Function()? updateList;
  const ListTab({
    super.key,
    required this.list,
    required this.updateList,
  });

  @override
  State<ListTab> createState() => _ListTabState();
}

class _ListTabState extends State<ListTab>
    with AutomaticKeepAliveClientMixin<ListTab> {
  @override
  Widget build(BuildContext context) {
    return Cards(
      list: widget.list.entries!.reversed.toList(),
      openEditDialog: openEditDialog,
      updateList: widget.updateList,
    );
  }

  openEditDialog(Fragment$MediaListEntry media) {
    showDialog(
      context: context,
      builder: (context) => Dialog.fullscreen(
        child: GraphQlProvider(
          child: EditDialog(
            media: media.media!,
            entry: media,
            onSave: () => {if (widget.updateList != null) widget.updateList!()},
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class EditDialog extends StatelessWidget {
  final Fragment$MediaListEntry? entry;
  final Fragment$BasicMedia media;
  final VoidCallback onSave;
  const EditDialog({
    super.key,
    this.entry,
    required this.media,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Options(
      onDelete: (id) => client().then(
        (value) => value.value.mutate$DeleteMediaListEntry(
          Options$Mutation$DeleteMediaListEntry(
            onCompleted: (p0, p1) => onSave(),
            variables: Variables$Mutation$DeleteMediaListEntry(
              id: id,
            ),
          ),
        ),
      ),
      onSave: (options) {
        print(options.status);
        client().then(
          (value) => value.value.mutate$SaveMediaListEntry(
            Options$Mutation$SaveMediaListEntry(
              onCompleted: (p0, p1) => onSave(),
              variables: Variables$Mutation$SaveMediaListEntry(
                id: options.id,
                notes: options.notes,
                progress: options.progress,
                repeat: options.repeat,
                status: options.status,
              ),
              onError: (error) => print(error),
            ),
          ),
        );
      },
      media: media,
      entry: entry,
    );
  }
}

class Options extends StatefulWidget {
  final Fragment$MediaListEntry? entry;
  final Fragment$BasicMedia media;
  final Function(Fragment$MediaListEntry options) onSave;
  final Function(int id) onDelete;
  const Options({
    super.key,
    this.entry,
    required this.onSave,
    required this.media,
    required this.onDelete,
  });

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  late Fragment$MediaListEntry options;

  @override
  void initState() {
    super.initState();
    options = widget.entry ??
        Fragment$MediaListEntry.fromJson({
          'mediaId': widget.media.id!,
          'media': widget.media.toJson(),
          'id': widget.media.id!,
          '__typename': 'MediaListEntry'
        });
  }

  @override
  Widget build(BuildContext context) {
    var maxProgress =
        (widget.entry?.media?.episodes ?? widget.entry?.media?.chapters);
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll<double>(0.toDouble()),
              surfaceTintColor: MaterialStatePropertyAll<Color>(
                Theme.of(context).colorScheme.background,
              ),
              overlayColor: MaterialStatePropertyAll<Color>(
                Theme.of(context).colorScheme.surfaceVariant,
              ),
            ),
            onPressed: () {
              widget.onSave(options);
              context.pop();
            },
            child: const Icon(Icons.save),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Status',
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  DropdownSearch<Enum$MediaListStatus>(
                    items: Enum$MediaListStatus.values.take(6).toList(),
                    selectedItem: options.status,
                    itemAsString: (item) {
                      if (item == Enum$MediaListStatus.CURRENT) {
                        if (widget.entry?.media?.type == Enum$MediaType.MANGA) {
                          return 'Reading';
                        }
                        return 'WATCHING';
                      }

                      return item.name;
                    },
                    onChanged: (value) => setState(
                        () => options = options.copyWith(status: value)),
                    popupProps: const PopupProps.dialog(),
                  )
                ],
              ),
            ),
            Text(
              options.media?.type == Enum$MediaType.ANIME
                  ? 'Progress'
                  : 'Chapters Read',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            NumberPicker(
              maxValue: maxProgress != null
                  ? maxProgress < (options.progress ?? 0)
                      ? options.progress!
                      : maxProgress
                  : 10000000,
              // infiniteLoop: true,
              minValue: 0,
              // onChanged: (value) => print(value),
              value: options.progress ?? 0,
              axis: Axis.horizontal,
              onChanged: (value) {
                setState(() {
                  options = options.copyWith(progress: value);
                  // options = options;
                });
              },
            ),
            Text(
              options.media?.type == Enum$MediaType.ANIME
                  ? 'Rewatches'
                  : 'Rereads',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            NumberPicker(
              maxValue: 100,
              minValue: 0,
              value: options.repeat ?? 0,
              axis: Axis.horizontal,
              onChanged: (value) {
                setState(() => options = options.copyWith(repeat: value));
              },
            ),
            if (widget.entry != null)
              SizedBox(
                width: MediaQuery.of(context).size.width - 10,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    widget.onDelete(options.id);
                    context.pop();
                  },
                  // style: ButtonStyle(co),
                  child: const Text(
                    'Remove from List',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    var now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: options.startedAt != null && options.startedAt!.year != null
          ? DateTime(options.startedAt!.year!, options.startedAt!.month!,
              options.startedAt!.day!)
          : DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(10000),
    );
    if (picked != null) {
      // print(options?.startedAt?.toJson());
      setState(() {
        options = options.copyWith(
          startedAt: Fragment$MediaListEntry$startedAt(
            $__typename: 'FuzzyDate',
            year: picked.year,
            month: picked.month,
            day: picked.day,
          ),
        );
        // selectedDate = picked;
      });
    }
  }
}
