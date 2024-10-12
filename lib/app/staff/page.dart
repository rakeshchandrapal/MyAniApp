import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/app/staff/production_screen.dart';
import 'package:myaniapp/app/staff/voice_screen.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/hiding_floating_button.dart';
import 'package:myaniapp/common/image_viewer.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/invisible_expanded_title.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/common/sliver_tabbar_view.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/staff/staff.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/staff.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:mygraphql/graphql.dart';

final _extractInfo = RegExp(r"^((?:(?:\*\*)|(?:__))[^]*?\n\n)");

@RoutePage()
class StaffScreen extends HookConsumerWidget {
  const StaffScreen({super.key, @pathParam required this.id, this.placeholder});

  final int id;
  final Fragment$StaffFragment? placeholder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      staffQuery,
      variables: Variables$Query$Staff(id: id).toJson(),
      parseData: Query$Staff.fromJson,
    ));

    return GQLWidget(
      response: snapshot,
      refetch: refetch,
      loading: null,
      error: Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (snapshot.errors, snapshot.linkError),
          refetch: refetch,
        ),
      ),
      builder: () {
        if (snapshot.loading == true && placeholder == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        var data = snapshot.parsedData?.Staff;

        return StaffView(
          fetchMore: fetchMore,
          request: snapshot.request!,
          refetch: refetch,
          placeholder: placeholder,
          staff: data,
        );
      },
    );
  }

  bool hasTabs(Query$Staff$Staff staff) {
    return staff.characterMedia!.edges!.isNotEmpty == true &&
        staff.staffMedia!.edges!.isNotEmpty == true;
  }
}

class StaffView extends ConsumerStatefulWidget {
  const StaffView({
    super.key,
    this.staff,
    this.placeholder,
    required this.refetch,
    required this.fetchMore,
    required this.request,
  });

  final GQLRequest request;
  final VoidCallback refetch;
  final QueryHookFetchMore fetchMore;
  final Query$Staff$Staff? staff;
  final Fragment$StaffFragment? placeholder;

  @override
  ConsumerState<StaffView> createState() => _StaffViewState();
}

class _StaffViewState extends ConsumerState<StaffView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  int currentIndex = 0;
  bool done = false;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(listener);
    _moveTo();
  }

  void _moveTo() {
    if (done || widget.staff == null) return;
    // if (widget.staff == null) return;
    // tabController?.dispose();
    var index = hasTabs(widget.staff!)
        ? 0
        : widget.staff!.staffMedia!.edges!.isNotEmpty == true
            ? 1
            : 0;
    currentIndex = index;
    tabController.animateTo(index);
    done = true;
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  void listener() {
    if (currentIndex != tabController.index) {
      setState(() => currentIndex = tabController.index);
    }
  }

  @override
  void didUpdateWidget(covariant StaffView oldWidget) {
    super.didUpdateWidget(oldWidget);
    _moveTo();
  }

  @override
  Widget build(BuildContext context) {
    var listSettings = ref.watch(listSettingsProvider);

    return HidingFloatingButton(
      button: Show(
        when: widget.staff != null,
        child: () => FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {},
          // onPressed: widget.staff!.isFavouriteBlocked
          //     ? null
          //     : () => client
          //         .request(GToggleFavoriteReq(
          //           (b) => b..vars.staffId = widget.staff!.id,
          //         ))
          //         .first
          //         .then((_) => widget.refetch()),
          label: Icon(
            Icons.favorite,
            color: widget.staff!.isFavourite ? Colors.red[200] : null,
          ),
          backgroundColor: Colors.red[900],
        ),
      ),
      builder: (button) => Scaffold(
        floatingActionButton: button,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              // key: Key("${_tabController.index}"),
              pinned: true,
              title: InvisibleExpandedTitle(
                child: Text(
                  (widget.staff ?? widget.placeholder)!.name!.userPreferred!,
                  maxLines: 2,
                ),
              ),
              expandedHeight: 182,
              // snap: true,
              actions: [
                if (widget.staff != null &&
                    widget.staff!.characterMedia!.edges!.isNotEmpty &&
                    (!hasTabs(widget.staff!) || tabController.index == 0))
                  ListSettingButton(
                    type: listSettings.staffVA,
                    onUpdate: (type) =>
                        ref.read(listSettingsProvider.notifier).update(
                              listSettings.copyWith(staffVA: type),
                            ),
                  ),
                if (widget.staff != null &&
                    widget.staff!.staffMedia!.edges!.isNotEmpty &&
                    (!hasTabs(widget.staff!) || tabController.index == 1))
                  ListSettingButton(
                    type: listSettings.staffProduction,
                    onUpdate: (type) =>
                        ref.read(listSettingsProvider.notifier).update(
                              listSettings.copyWith(staffProduction: type),
                            ),
                  ),
                const SizedBox(width: 5),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          right: 8,
                          left: 8,
                        ),
                        child: InkWellImage(
                          onTap: () => ImageViewer.showImage(
                            context,
                            (widget.staff ?? widget.placeholder)!.image!.large!,
                            tag: (widget.staff ?? widget.placeholder)!.id,
                          ),
                          borderRadius: imageRadius,
                          child: ClipRRect(
                            borderRadius: imageRadius,
                            child: Hero(
                              tag: (widget.staff ?? widget.placeholder)!.id,
                              child: CachedImage(
                                (widget.staff ?? widget.placeholder)!
                                    .image!
                                    .large!,
                                height: 150,
                                width: 106,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            (widget.staff ?? widget.placeholder)!
                                .name!
                                .userPreferred!,
                            style: context.theme.textTheme.titleMedium,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Show(
              when: widget.staff != null,
              fallback: const SliverToBoxAdapter(
                child: SizedBox(),
              ),
              child: () {
                var metadata = _extractInfo
                    .firstMatch(widget.staff!.description ?? "")
                    ?.group(1);
                var description = metadata != null
                    ? widget.staff!.description?.replaceAll(metadata, "")
                    : widget.staff!.description;

                return SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (widget.staff!.dateOfBirth?.toDateString() != null)
                          _InfoText(
                            title: "Birth:",
                            text: widget.staff!.dateOfBirth!.toDateString()!,
                          ),
                        if (widget.staff!.dateOfDeath?.toDateString() != null)
                          _InfoText(
                            title: "Death:",
                            text: widget.staff!.dateOfDeath!.toDateString()!,
                          ),
                        if (widget.staff!.age != null)
                          _InfoText(
                              title: "Age:",
                              text: widget.staff!.age!.toString()),
                        if (widget.staff!.homeTown != null)
                          _InfoText(
                            title: "Hometown:",
                            text: widget.staff!.homeTown!,
                          ),
                        if (widget.staff!.gender != null)
                          _InfoText(
                            title: "Gender:",
                            text: widget.staff!.gender!,
                          ),
                        if (widget.staff!.yearsActive?.isNotEmpty == true)
                          _InfoText(
                            title: "Year Active:",
                            text:
                                "${widget.staff!.yearsActive![0]} - ${widget.staff!.yearsActive?.elementAtOrNull(1) ?? "Present"}",
                          ),
                        if (widget.staff!.bloodType != null)
                          _InfoText(
                            title: "Blood Type:",
                            text: widget.staff!.bloodType!,
                          ),
                        if (metadata != null)
                          MarkdownWidget.body(
                            data: metadata,
                            padding: const EdgeInsets.all(0),
                          ),
                        MarkdownWidget.body(
                          data: description ?? "*No Description*",
                          selectable: true,
                          padding: const EdgeInsets.all(0),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Show(
              when: widget.staff != null && hasTabs(widget.staff!),
              fallback: const SliverToBoxAdapter(
                child: SizedBox(),
              ),
              child: () => SliverPersistentHeader(
                delegate: SliverTabBarViewDelegate(
                  child: TabBar(
                    controller: tabController,
                    isScrollable: true,
                    tabs: const [
                      Tab(
                        text: "VA Roles",
                      ),
                      Tab(text: "Staff")
                    ],
                  ),
                ),
              ),
            )
          ],
          body: Show(
            when: widget.staff != null,
            fallback: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            child: () => ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: GraphqlPagination(
                pageInfo: tabController.index == 0
                    ? widget.staff!.characterMedia!.pageInfo!
                    : widget.staff!.staffMedia!.pageInfo!,
                req: (nextPage) {
                  bool isCharacter = tabController.index == 0 ? true : false;

                  if (isCharacter) {
                    widget.fetchMore(
                      variables: Variables$Query$Staff.fromJson(
                              widget.request.variables)
                          .copyWith(characterPage: nextPage)
                          .toJson(),
                      mergeResults:
                          defaultMergeResults("Staff.characterMedia.edges"),
                    );
                  }

                  return widget.fetchMore(
                    variables:
                        Variables$Query$Staff.fromJson(widget.request.variables)
                            .copyWith(staffPage: nextPage)
                            .toJson(),
                    mergeResults: defaultMergeResults("Staff.staffMedia.edges"),
                  );
                },
                child: TabBarView(
                  physics: widget.staff != null && hasTabs(widget.staff!)
                      ? null
                      : const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: [
                    StaffVARolesScreen(
                      medias: widget.staff!.characterMedia!,
                    ),
                    StaffProductionRolesScreen(
                      staffRoles: widget.staff!.staffMedia!,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool hasTabs(Query$Staff$Staff staff) {
    return staff.characterMedia!.edges!.isNotEmpty == true &&
        staff.staffMedia!.edges!.isNotEmpty == true;
  }
}

class _InfoText extends StatelessWidget {
  const _InfoText({
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "$title ",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: text)
        ],
      ),
    );
  }
}
