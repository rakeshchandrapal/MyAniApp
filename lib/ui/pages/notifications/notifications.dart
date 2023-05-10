import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/notifications/notifications.graphql.dart';
import 'package:myaniapp/notifications/notifications.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/detailed_list_card.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class NotificationsPage extends HookWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Notifications();

    return Scaffold(
      appBar: AppBar(),
      body: Graphql(
        hook: hook,
        builder: (result) => DetailedListCards(
          card: (index) {
            var item = result.Page!.notifications![index]!;

            var notif = AnilistNotification(item);
            return DetailedListCard(
              index: index,
              onTap: (notif.isMedia &&
                      item.$__typename != 'MediaDeletionNotification')
                  ? (_) => context.router
                      .push(MediaRoute(id: (item as dynamic).media.id))
                  : null,
              imageUrl: (notif.isMedia &&
                      item.$__typename != 'MediaDeletionNotification')
                  ? (item as dynamic).media.coverImage.large
                  : (notif.isActivity ||
                          item.$__typename == 'FollowingNotification')
                      ? (item as dynamic).user.avatar.large
                      : 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg',
              underTitle: (index, style) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    notif.toWidget(),
                    Text(
                      timeago.format(
                        DateTime.fromMillisecondsSinceEpoch(
                            (item as dynamic).createdAt * 1000),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: result.Page!.notifications!.length,
        ),
        //     ListView.separated(
        //   itemBuilder: (context, index) {
        //     var item = result.Page!.notifications![index]!;

        //     var notif = AnilistNotification(item);

        //     return DetailedListCard(
        //       index: index,
        //       imageUrl: (notif.isMedia &&
        //               item.$__typename != 'MediaDeletionNotification')
        //           ? (item as dynamic).media.coverImage.large
        //           : (notif.isActivity ||
        //                   item.$__typename == 'FollowingNotification')
        //               ? (item as dynamic).user.avatar.large
        //               : 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg',
        //     );

        //     return Card(
        //       child: InkWell(
        //         borderRadius: imageRadius,
        //         onTap: () {},
        //         child: Row(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             if (notif.isMedia &&
        //                 item.$__typename != 'MediaDeletionNotification')
        //               ClipRRect(
        //                 borderRadius: imageRadius,
        //                 child: CImage(
        //                   imageUrl: (item as dynamic).media.coverImage.large,
        //                   height: 158,
        //                   width: 111,
        //                   // fit: BoxFit.contain,
        //                 ),
        //               )
        //             else if (notif.isActivity ||
        //                 item.$__typename == 'FollowingNotification')
        //               ClipRRect(
        //                 borderRadius: imageRadius,
        //                 child: CImage(
        //                   imageUrl: (item as dynamic).user.avatar.large,
        //                   height: 158,
        //                   width: 111,
        //                   // fit: BoxFit.contain,
        //                 ),
        //               ),
        //             Expanded(
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: notif.toWidget(),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Text(
        //                       timeago.format(
        //                         DateTime.fromMillisecondsSinceEpoch(
        //                             (item as dynamic).createdAt * 1000),
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     );
        //   },
        //   separatorBuilder: (context, index) => const SizedBox(
        //     height: 0,
        //   ),
        //   itemCount: result.Page!.notifications!.length,
        // ),
      ),
    );
  }
}
