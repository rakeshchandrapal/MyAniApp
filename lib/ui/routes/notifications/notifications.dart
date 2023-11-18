import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/notifications/notifications.graphql.dart';
import 'package:myaniapp/notifications/notification.dart';
import 'package:myaniapp/ui/common/cards/detailed_list_cards.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class NotificationsPage extends HookWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Query$Notifications$Widget(
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading && result.parsedData == null) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (result.hasException) {
            return GraphqlError(exception: result.exception!);
          }

          return RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: DetailedListCards(
              padding: const EdgeInsets.all(8),
              card: (index) {
                var item = result.parsedData!.Page!.notifications![index]!;

                var notif = AnilistNotification(item);
                return DetailedListCard(
                  onTap: (notif.isMedia &&
                          item.$__typename != 'MediaDeletionNotification')
                      ? () => context
                          .pushRoute(MediaRoute(id: (item as dynamic).media.id))
                      : notif.isActivity
                          ? () => context.pushRoute(
                              ActivityRoute(id: (item as dynamic).activityId))
                          : null,
                  imageUrl: (notif.isMedia &&
                          item.$__typename != 'MediaDeletionNotification')
                      ? (item as dynamic).media.coverImage.extraLarge
                      : (notif.isActivity ||
                              item.$__typename == 'FollowingNotification')
                          ? (item as dynamic).user.avatar.large
                          : 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg',
                  underTitle: Padding(
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
              itemCount: result.parsedData!.Page!.notifications!.length,
            ),
          );
        },
      ),
    );
  }
}
