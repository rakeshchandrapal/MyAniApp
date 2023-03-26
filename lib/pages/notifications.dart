import 'package:MyAniApp/graphql/Notifications.graphql.dart';
import 'package:MyAniApp/notification.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class NotificationsPage extends HookWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    var hook = useQuery$Notifications(
      Options$Query$Notifications(
        variables: Variables$Query$Notifications(page: 1),
      ),
    );

    if ((user.user?.unreadNotificationCount ?? 0) > 0) {
      user.resetNotifCount();
    }

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            title: Text('Notifications'),
            floating: true,
            snap: true,
          ),
        ],
        body: Builder(
          builder: (BuildContext context) {
            if (hook.result.isLoading && hook.result.data == null) {
              return Center(
                child: Column(
                  children: const [
                    CircularProgressIndicator.adaptive(),
                    Text('Loading...')
                  ],
                ),
              );
            }

            // print(hook.result.parsedData?.Page?.notifications?.toString());

            var nextPage = hook.result.parsedData!.Page!.pageInfo!.hasNextPage;

            FetchMoreOptions$Query$Notifications opts =
                FetchMoreOptions$Query$Notifications(
              variables: nextPage == true
                  ? Variables$Query$Notifications(
                      page:
                          hook.result.parsedData!.Page!.pageInfo!.currentPage! +
                              1)
                  : null,
              updateQuery: (previousResultData, fetchMoreResultData) {
                var list = [
                  ...previousResultData!['Page']!['notifications'],
                  ...fetchMoreResultData!['Page']!['notifications'],
                ];
                fetchMoreResultData['Page']!['notifications'] = list;
                return fetchMoreResultData;
              },
            );

            List<Widget> ws = [];

            for (var notif in hook.result.parsedData!.Page!.notifications!) {
              if (notif
                  is Query$Notifications$Page$notifications$$AiringNotification) {
                ws.add(
                  NotifCard(
                    imageUrl: notif.media?.coverImage?.large,
                    time: notif.createdAt,
                    notif: notif,
                  ),
                );
              } else if (notif
                  is Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification) {
                ws.add(
                  NotifCard(
                    imageUrl: notif.media?.coverImage?.large,
                    time: notif.createdAt,
                    notif: notif,
                  ),
                );
              } else if (notif
                  is Query$Notifications$Page$notifications$$FollowingNotification) {
                ws.add(
                  NotifCard(
                    imageUrl: notif.user?.avatar?.large,
                    time: notif.createdAt,
                    notif: notif,
                  ),
                );
              } else if (notif
                  is Query$Notifications$Page$notifications$$ActivityLikeNotification) {
                // print('yes');
                ws.add(
                  NotifCard(
                    imageUrl: notif.user?.avatar?.large,
                    time: notif.createdAt,
                    notif: notif,
                  ),
                );
              }
            }

            // print();

            return NotificationListener<ScrollEndNotification>(
              onNotification: (notification) {
                if (notification.metrics.pixels >
                        notification.metrics.maxScrollExtent - 100 &&
                    nextPage == true) {
                  hook.fetchMore(opts);
                }
                return true;
              },
              child: ListView(children: ws),
            );
          },
        ),
      ),
    );
  }

  static bool isSupported(Query$Notifications$Page$notifications notif) {
    return notif
            is Query$Notifications$Page$notifications$$AiringNotification ||
        notif
            is Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification;
  }
}

class NotifCard extends StatelessWidget {
  final String? imageUrl;
  final int? time;
  final Query$Notifications$Page$notifications notif;

  const NotifCard({
    super.key,
    required this.imageUrl,
    required this.time,
    required this.notif,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Row(
            children: [
              if (imageUrl != null)
                SizedBox(
                  height: 120,
                  width: 80,
                  child: AspectRatio(
                    aspectRatio: 9 / 16,
                    child: CachedNetworkImage(
                      imageUrl: imageUrl!,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    ),
                  ),
                ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: RichText(
                    text: TextSpan(
                      children: AnilistNotif.extractTextWidgets(
                        notif,
                        onMediaTap: (media) => context.router.push(
                          MediaRoute(id: media.id!),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (time != null)
            Positioned(
              right: 10,
              top: 10,
              child: Text(
                timeago.format(
                  DateTime.fromMillisecondsSinceEpoch(time! * 1000),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// class MediaNotifCard extends StatelessWidget {
//   const MediaNotifCard({
//     super.key,
//     required this.notif,
//   });

//   final Query$Notifications$Page$notifications notif;

//   @override
//   Widget build(BuildContext context) {
//     if (!NotificationsPage.isSupported(notif)) {
//       return SizedBox();
//     }

//     return Card(
//       child: Stack(
//         children: [
//           Row(
//             children: [
//               if (notif
//                   is Query$Notifications$Page$notifications$$AiringNotification)
//                 SizedBox(
//                   height: 120,
//                   width: 80,
//                   child: AspectRatio(
//                     aspectRatio: 9 / 16,
//                     child: CachedNetworkImage(
//                       imageUrl: notif.media!.coverImage!.large!,
//                       fit: BoxFit.cover,
//                       placeholder: (context, url) => const Center(
//                           child: CircularProgressIndicator.adaptive()),
//                     ),
//                   ),
//                 ),
//               Flexible(
//                 flex: 1,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 8),
//                   child: Text.rich(
//                     TextSpan(
//                       children: [
//                         // TextSpan(text: notif.context),
//                         // TextSpan(
//                         //     text: noti.episode.toString()),
//                         // TextSpan(text: noti.contexts?[1]),
//                         // TextSpan(
//                         //   text: noti
//                         //       .media?.title?.userPreferred,
//                         //   style: const TextStyle(
//                         //     color: Color(0xff0969da),
//                         //   ),
//                         // ),
//                         // TextSpan(text: noti.contexts?[2])
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Positioned(
//             right: 10,
//             top: 10,
//             child: Text(
//               timeago.format(
//                 DateTime.fromMillisecondsSinceEpoch(notif.createdAt! * 1000),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
