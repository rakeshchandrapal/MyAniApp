import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/staff/staff.graphql.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/ui/common/widget_gradient.dart';
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
        );
      },
    );
  }
}

class StaffView extends StatefulWidget {
  const StaffView({
    super.key,
    required this.staff,
    required this.fetchMore,
  });

  final Query$Staff$Staff staff;
  final FetchMore fetchMore;

  @override
  State<StaffView> createState() => _StaffViewState();
}

class _StaffViewState extends State<StaffView> {
  bool production = false;

  @override
  void initState() {
    super.initState();
    if (widget.staff.characterMedia!.edges?.isEmpty == true) production = true;
  }

  @override
  Widget build(BuildContext context) {
    return ScrollToTop(
      builder: (scrollController) => Scaffold(
        body: GrapgqlPagination(
          pageInfo: production
              ? widget.staff.staffMedia!.pageInfo!
              : widget.staff.characterMedia!.pageInfo!,
          fetchMore: (nextPage) {
            widget.fetchMore(
              production
                  ? FetchMoreOptions$Query$Staff(
                      variables: Variables$Query$Staff(staffPage: nextPage),
                      updateQuery: (previousResultData, fetchMoreResultData) {
                        var list = [
                          ...previousResultData!['Staff']!['staffMedia']
                              ['edges'],
                          ...fetchMoreResultData!['Staff']!['staffMedia']
                              ['edges'],
                        ];
                        fetchMoreResultData['Staff']!['staffMedia']['edges'] =
                            list;
                        return fetchMoreResultData;
                      },
                    )
                  : FetchMoreOptions$Query$Staff(
                      variables: Variables$Query$Staff(characterPage: nextPage),
                      updateQuery: (previousResultData, fetchMoreResultData) {
                        var list = [
                          ...previousResultData!['Staff']!['characterMedia']
                              ['edges'],
                          ...fetchMoreResultData!['Staff']!['characterMedia']
                              ['edges'],
                        ];
                        fetchMoreResultData['Staff']!['characterMedia']
                            ['edges'] = list;
                        return fetchMoreResultData;
                      },
                    ),
            );
          },
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                expandedHeight: 210,
                pinned: true,
                actions: [
                  if (hasTabs(widget.staff))
                    ElevatedButton(
                      onPressed: () {
                        scrollController.jumpTo(0);
                        setState(() => production = !production);
                      },
                      child: production
                          ? const Text("Voices")
                          : const Text("Production"),
                    ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      WidgetGradient(
                        child: Container(
                          height: 150,
                          color: Theme.of(context).disabledColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 50),
                        child: SizedBox(
                          width: 100,
                          height: 150,
                          child: AspectRatio(
                            aspectRatio: 2 / 3,
                            child: ClipRRect(
                              borderRadius: imageRadius,
                              child: CImage(
                                imageUrl: widget.staff.image!.large!,
                                viewer: true,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 85, left: 120),
                        child: SizedBox(
                          height: 115,
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text(
                                widget.staff.name!.userPreferred!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              if (widget.staff.dateOfBirth?.toDateString() !=
                                  null)
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Birthday: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: widget.staff.dateOfBirth!
                                            .toDateString()!,
                                      )
                                    ],
                                  ),
                                ),
                              if (widget.staff.dateOfDeath?.toDateString() !=
                                  null)
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Birthday: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: widget.staff.dateOfDeath!
                                            .toDateString()!,
                                      )
                                    ],
                                  ),
                                ),
                              if (widget.staff.age != null)
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
                                        text: widget.staff.age!.toString(),
                                      )
                                    ],
                                  ),
                                ),
                              if (widget.staff.gender != null)
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
                                        text: widget.staff.gender,
                                      )
                                    ],
                                  ),
                                ),
                              if (widget.staff.yearsActive?.isNotEmpty == true)
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Years Active: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: widget.staff.yearsActive![0]!
                                            .toString(),
                                      ),
                                      const TextSpan(text: ' - '),
                                      TextSpan(
                                        text: widget.staff.yearsActive!
                                                .elementAtOrNull(1)
                                                ?.toString() ??
                                            "Present",
                                      )
                                    ],
                                  ),
                                ),
                              if (widget.staff.bloodType != null)
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
                                        text: widget.staff.bloodType,
                                      )
                                    ],
                                  ),
                                ),
                              if (widget.staff.homeTown != null)
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Home Town: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: widget.staff.homeTown,
                                      )
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8),
                sliver: SliverToBoxAdapter(
                  child: Description(widget.staff.description),
                ),
              ),
              SliverToBoxAdapter(
                child: production
                    ? StaffProductionPage(medias: widget.staff.staffMedia!)
                    : StaffVoicePage(medias: widget.staff.characterMedia!),
              )
            ],
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
