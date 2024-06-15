import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/app/calendar/__generated__/calendar.req.gql.dart';
import 'package:myaniapp/app/calendar/list.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/utils.dart';

var dateFormat = DateFormat('EEEE MMMM dd, yyyy');
var hourTime = DateFormat.jm();

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  bool all = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => setState(() => all = !all),
            icon: all
                ? const Icon(Icons.list_alt)
                : const Icon(Icons.calendar_today),
          ),
        ],
      ),
      body: all ? const Calendar() : const MyListReleases(),
    );
  }
}

class Calendar extends StatefulHookWidget {
  const Calendar({
    super.key,
  });

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late DateTime day;

  @override
  void initState() {
    super.initState();
    var now = DateTime.now();
    day = DateTime(now.year, now.month, now.day);
  }

  @override
  Widget build(BuildContext context) {
    var scrollController = useScrollController();
    var now = DateTime.now();

    return GQLRequest(
      operationRequest: GCalendarScheduleReq(
        (b) => b
          ..requestId = "calendarPage$day"
          ..vars.start = day.millisecondsSinceEpoch ~/ 1000
          ..vars.end = (day.millisecondsSinceEpoch ~/ 1000) + 86400,
      ),
      loading: null,
      errorWidget: false,
      builder: (context, response, error, refetch) {
        return CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              primary: false,
              pinned: true,
              automaticallyImplyLeading: false,
              toolbarHeight: 50,
              flexibleSpace: FlexibleSpaceBar(
                background: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        scrollController.jumpTo(0);
                        setState(
                            () => day = day.subtract(const Duration(days: 1)));
                      },
                      icon: const Icon(Icons.arrow_left),
                    ),
                    TextButton(
                      onPressed: () async {
                        var selectedDate = await showDatePicker(
                          context: context,
                          firstDate: DateTime(1940),
                          initialDate: day,
                          lastDate: DateTime(3000),
                        );

                        if (selectedDate != null &&
                            !day.isAtSameMomentAs(selectedDate)) {
                          scrollController.jumpTo(0);
                          setState(() => day = selectedDate);
                        }
                      },
                      child: Text(
                        dateFormat.format(day),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        scrollController.jumpTo(0);
                        setState(() => day = day.add(const Duration(days: 1)));
                      },
                      icon: const Icon(Icons.arrow_right),
                    )
                  ],
                ),
              ),
            ),
            if (response?.loading == true)
              const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              )
            else if (response?.hasErrors == true)
              SliverFillRemaining(
                child: GraphqlError(
                  exception: (response!.graphqlErrors, response.linkException),
                ),
              )
            else
              SliverList.builder(
                itemBuilder: (context, index) {
                  var schedule = response.data!.Page!.airingSchedules![index]!;
                  var timestamp = dateFromTimestamp(schedule.airingAt);

                  bool isNext = timestamp.isAfter(now)
                      ? index != 0
                          ? dateFromTimestamp(response.data!.Page!
                                  .airingSchedules![index - 1]!.airingAt)
                              .isBefore(now)
                          : false
                      : false;

                  return Stack(
                    children: [
                      Card.outlined(
                        child: InkWellImage(
                          onTap: () => context.push(
                              "/media/${schedule.media!.id}/info",
                              extra: {"media": schedule.media}),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 120,
                                width: 90,
                                child: GridCard(
                                  image:
                                      schedule.media!.coverImage!.extraLarge!,
                                  blur: schedule.media!.isAdult ?? false,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        schedule.media!.title!.userPreferred!,
                                        style:
                                            context.theme.textTheme.labelLarge,
                                      ),
                                      Text(
                                        "Episode ${schedule.episode} ${timestamp.isAfter(now) ? "airing at" : "aired at"} ${hourTime.format(timestamp)}",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (isNext)
                        Positioned(
                          top: 0,
                          right: 5,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: imageRadius,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            child: const Text("Next"),
                          ),
                        )
                    ],
                  );
                },
                itemCount: response!.data!.Page!.airingSchedules!.length,
              ),
            // SliverFillRemaining(
            //   child: GQLRequest(
            //     // key: Key(day.to),
            //     operationRequest: GCalendarScheduleReq(
            //       (b) => b
            //         ..requestId = "calendarPage$day"
            //         ..vars.start = day.millisecondsSinceEpoch ~/ 1000
            //         ..vars.end = (day.millisecondsSinceEpoch ~/ 1000) + 86400,
            //     ),
            //     builder: (context, response, error, refetch) =>
            //         ListView.builder(
            //       itemBuilder: (context, index) {
            //         var schedule =
            //             response.data!.Page!.airingSchedules![index]!;
            //         var timestamp = dateFromTimestamp(schedule.airingAt);

            //         bool isNext = timestamp.isAfter(now)
            //             ? index != 0
            //                 ? dateFromTimestamp(response.data!.Page!
            //                         .airingSchedules![index - 1]!.airingAt)
            //                     .isBefore(now)
            //                 : false
            //             : false;

            //         return Stack(
            //           children: [
            //             Card.outlined(
            //               child: InkWellImage(
            //                 onTap: () => context.push(
            //                     "/media/${schedule.media!.id}/info",
            //                     extra: {"media": schedule.media}),
            //                 child: Row(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     SizedBox(
            //                       height: 120,
            //                       width: 90,
            //                       child: GridCard(
            //                         image:
            //                             schedule.media!.coverImage!.extraLarge!,
            //                         blur: schedule.media!.isAdult ?? false,
            //                       ),
            //                     ),
            //                     Expanded(
            //                       child: Padding(
            //                         padding: const EdgeInsets.all(8.0),
            //                         child: Column(
            //                           crossAxisAlignment:
            //                               CrossAxisAlignment.start,
            //                           children: [
            //                             Text(
            //                               schedule.media!.title!.userPreferred!,
            //                               style: context
            //                                   .theme.textTheme.labelLarge,
            //                             ),
            //                             Text(
            //                               "Episode ${schedule.episode} ${timestamp.isAfter(now) ? "airing at" : "aired at"} ${hourTime.format(timestamp)}",
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             if (isNext)
            //               Positioned(
            //                 top: 0,
            //                 right: 5,
            //                 child: Container(
            //                   decoration: const BoxDecoration(
            //                     color: Colors.blue,
            //                     borderRadius: imageRadius,
            //                   ),
            //                   padding: const EdgeInsets.symmetric(
            //                       horizontal: 20, vertical: 8),
            //                   child: const Text("Next"),
            //                 ),
            //               )
            //           ],
            //         );
            //       },
            //       itemCount: response!.data!.Page!.airingSchedules!.length,
            //     ),
            //   ),
            // ),
          ],
        );
      },
    );
  }
}
