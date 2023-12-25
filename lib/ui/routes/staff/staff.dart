import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/media.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/staff/staff.graphql.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/hidden_floating_action_button.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/ui/routes/media/overview.dart';
import 'package:myaniapp/ui/routes/staff/production.dart';
import 'package:myaniapp/ui/routes/staff/voice.dart';

class StaffPage extends StatelessWidget {
  const StaffPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Query$Staff$Widget(
      options: Options$Query$Staff(
        variables: Variables$Query$Staff(id: id),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.parsedData == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else if (result.hasException) {
          return Scaffold(
            appBar: AppBar(),
            body: GraphqlError(exception: result.exception!),
          );
        }

        return StaffView(
          staff: result.parsedData!.Staff!,
          fetchMore: fetchMore!,
          refetch: refetch!,
        );
      },
    );
  }

  bool hasTabs(Query$Staff$Staff staff) {
    return staff.characterMedia!.edges!.isNotEmpty == true &&
        staff.staffMedia!.edges!.isNotEmpty == true;
  }
}

class StaffView extends StatefulWidget {
  const StaffView(
      {super.key,
      required this.staff,
      required this.fetchMore,
      required this.refetch});

  final Query$Staff$Staff staff;
  final FetchMore fetchMore;
  final VoidCallback refetch;

  @override
  State<StaffView> createState() => _StaffViewState();
}

class _StaffViewState extends State<StaffView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    var index = hasTabs(widget.staff)
        ? 0
        : widget.staff.staffMedia!.edges!.isNotEmpty == true
            ? 1
            : 0;
    tabController = TabController(length: 2, vsync: this, initialIndex: index);
    currentIndex = index;
    tabController.addListener(listener);
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
  Widget build(BuildContext context) {
    return ScrollToTop(
      builder: (scrollController) => Scaffold(
        floatingActionButton: HiddenFloatingActionButton(
          scrollController: scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: FloatingActionButton(
                    onPressed: widget.staff.isFavouriteBlocked == true
                        ? null
                        : () => client.value
                            .mutate$ToggleFavorite(
                              Options$Mutation$ToggleFavorite(
                                variables: Variables$Mutation$ToggleFavorite(
                                  staffId: widget.staff.id,
                                ),
                              ),
                            )
                            .then((value) => widget.refetch()),
                    backgroundColor: widget.staff.isFavouriteBlocked == true
                        ? Colors.grey[800]
                        : Colors.red,
                    child: Icon(
                      Icons.favorite,
                      color: widget.staff.isFavourite == true
                          ? Colors.red[200]
                          : null,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 65,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            StaffAppBar(
              staff: widget.staff,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Description(widget.staff.description),
              ),
            ),
            if (hasTabs(widget.staff))
              SliverToBoxAdapter(
                child: TabBar(
                  controller: tabController,
                  tabs: const [
                    Tab(text: 'Voices'),
                    Tab(text: 'Production'),
                  ],
                ),
              )
          ],
          body: Pagination(
            fetchMore: widget.fetchMore,
            depth: 1,
            pageInfo: tabController.index == 0
                ? widget.staff.characterMedia!.pageInfo!
                : widget.staff.staffMedia!.pageInfo!,
            opts: tabController.index == 0
                ? FetchMoreOptions$Query$Staff(
                    variables: Variables$Query$Staff(
                        characterPage: widget
                                .staff.characterMedia!.pageInfo!.currentPage! +
                            1),
                    updateQuery: (previousResultData, fetchMoreResultData) {
                      var list = [
                        ...previousResultData!['Staff']!['characterMedia']
                            ['edges'],
                        ...fetchMoreResultData!['Staff']!['characterMedia']
                            ['edges'],
                      ];
                      fetchMoreResultData['Staff']!['characterMedia']['edges'] =
                          list;
                      return fetchMoreResultData;
                    },
                  )
                : FetchMoreOptions$Query$Staff(
                    variables: Variables$Query$Staff(
                        staffPage:
                            (widget.staff.staffMedia!.pageInfo!.currentPage ??
                                    1) +
                                1),
                    updateQuery: (previousResultData, fetchMoreResultData) {
                      var list = [
                        ...previousResultData!['Staff']!['staffMedia']['edges'],
                        ...fetchMoreResultData!['Staff']!['staffMedia']
                            ['edges'],
                      ];
                      fetchMoreResultData['Staff']!['staffMedia']['edges'] =
                          list;
                      return fetchMoreResultData;
                    },
                  ),
            child: TabBarView(
              physics: hasTabs(widget.staff)
                  ? null
                  : const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                StaffVoicePage(
                  medias: widget.staff.characterMedia!,
                ),
                StaffProductionPage(
                  medias: widget.staff.staffMedia!,
                ),
              ],
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

class StaffAppBar extends StatelessWidget {
  const StaffAppBar({
    super.key,
    required this.staff,
  });

  final Query$Staff$Staff staff;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SliverAppBar(
      expandedHeight: 145,
      pinned: true,
      flexibleSpace: SafeArea(
        child: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 5),
                  child: SizedBox(
                    width: 90,
                    child: AspectRatio(
                      aspectRatio: 2 / 3,
                      child: ClipRRect(
                        borderRadius: imageRadius,
                        child: CImage(
                          imageUrl: staff.image!.large!,
                          viewer: true,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Text(
                        staff.name!.userPreferred!,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (staff.dateOfBirth?.toDateString() != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Birth: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: staff.dateOfBirth!.toDateString()!,
                              )
                            ],
                          ),
                        ),
                      if (staff.dateOfDeath?.toDateString() != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Death: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: staff.dateOfDeath!.toDateString()!,
                              )
                            ],
                          ),
                        ),
                      if (staff.age != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Age: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: staff.age!.toString(),
                              )
                            ],
                          ),
                        ),
                      if (staff.gender != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Gender: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: staff.gender,
                              )
                            ],
                          ),
                        ),
                      if (staff.bloodType != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Blood Type: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: staff.bloodType,
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
