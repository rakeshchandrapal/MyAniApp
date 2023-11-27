import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/calendar/calendar.graphql.dart';
import 'package:myaniapp/ui/common/cards/detailed_list_cards.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/calendar/listReleases.dart';
import 'package:myaniapp/utils/utils.dart';

var dateFormat = DateFormat('EEEE MMMM dd, yyyy');
var hourFormat = DateFormat.jm();

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  bool inCal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => setState(() => inCal = !inCal),
            icon: inCal
                ? const Icon(Icons.list)
                : const Icon(Icons.calendar_today),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: inCal ? const Calendar() : const ListReleases(),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({super.key});

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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () {
                  setState(() {
                    day = day.subtract(const Duration(days: 1));
                  });
                },
              ),
              TextButton(
                child: Text(dateFormat.format(day)),
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: day,
                    firstDate: DateTime(1940),
                    lastDate: DateTime(2100),
                  ).then((value) {
                    if (value != null && value != day) {
                      setState(() => day = value);
                    }
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.chevron_right),
                onPressed: () {
                  setState(() {
                    day = day.add(const Duration(days: 1));
                  });
                },
              ),
            ],
          ),
        ),
        Flexible(child: CalendarDay(day: day)),
      ],
    );
  }
}

class CalendarDay extends StatelessWidget {
  const CalendarDay({
    super.key,
    required this.day,
  });

  final DateTime day;

  @override
  Widget build(BuildContext context) {
    return Query$CalendarSchedule$Widget(
      options: Options$Query$CalendarSchedule(
        variables: Variables$Query$CalendarSchedule(
            start: day.millisecondsSinceEpoch ~/ 1000,
            end: (day.millisecondsSinceEpoch ~/ 1000) + 86400),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (result.hasException) {
          return GraphqlError(exception: result.exception!);
        }

        // result.parsedData?.Page?.airingSchedules?.forEach((element) {
        //   print(DateTime.fromMillisecondsSinceEpoch(element!.airingAt * 1000));
        // });

        // logger.d(result.data);

        var now = DateTime.now();

        return ListView.builder(
          itemBuilder: (context, index) {
            var media = result.parsedData!.Page!.airingSchedules![index]!;
            var airingAt = dateFromTimestamp(media.airingAt);

            bool isNext = airingAt.isAfter(now)
                ? index != 0
                    ? dateFromTimestamp(result.parsedData!.Page!
                            .airingSchedules![index - 1]!.airingAt)
                        .isBefore(now)
                    : false
                : false;

            return Stack(
              children: [
                DetailedListCard(
                  margin: const EdgeInsets.all(4),
                  imageUrl: media.media!.coverImage!.extraLarge!,
                  onTap: () =>
                      context.push('/media/${media.media!.id}/overview'),
                  underTitle: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              media.media!.title!.userPreferred!,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: 'Episode ${media.episode} '),
                                  TextSpan(
                                      text: airingAt.isAfter(DateTime.now())
                                          ? 'airing at '
                                          : 'aired At '),
                                  TextSpan(text: hourFormat.format(airingAt)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // Card(
                //   child: InkWell(
                //     borderRadius: BorderRadius.circular(10),
                //     onTap: () =>
                //         context.pushRoute(MediaRoute(id: media.media!.id)),
                //     child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         SizedBox(
                //           width: 110,
                //           child: AspectRatio(
                //             aspectRatio: 2 / 3,
                //             child: ClipRRect(
                //               borderRadius: const BorderRadius.only(
                //                 topLeft: Radius.circular(10),
                //                 bottomLeft: Radius.circular(10),
                //               ),
                //               child: CImage(
                //                 alignment: Alignment.topLeft,
                //                 imageUrl: media.media!.coverImage!.extraLarge!,
                //                 fit: BoxFit.fitHeight,
                //                 // width: 100,
                //               ),
                //             ),
                //           ),
                //         ),
                //         const SizedBox(
                //           width: 10,
                //         ),
                //         Expanded(
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 media.media!.title!.userPreferred!,
                //                 overflow: TextOverflow.ellipsis,
                //                 maxLines: 5,
                //               ),
                //               Text.rich(
                //                 TextSpan(
                //                   children: [
                //                     TextSpan(text: 'Episode ${media.episode} '),
                //                     TextSpan(
                //                         text: airingAt.isAfter(DateTime.now())
                //                             ? 'airing at '
                //                             : 'aired At '),
                //                     TextSpan(text: hourFormat.format(airingAt)),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                if (isNext)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    margin: const EdgeInsets.only(left: 1),
                    child: const Text(
                      'Next',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
            );
          },
          itemCount: result.parsedData!.Page!.airingSchedules!.length,
        );
      },
    );
  }
}

({int days, int startDay, int endDay}) getMonthInfo(int year, int month) {
  var endDate = DateTime(year, month + 1, 0);
  return (
    days: endDate.day,
    startDay: DateTime(year, month, 1).weekday,
    endDay: endDate.weekday
  );
}
