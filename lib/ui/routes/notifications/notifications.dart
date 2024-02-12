import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/notifications/__generated__/notifications.req.gql.dart';
import 'package:myaniapp/notifications/notification.dart';
import 'package:myaniapp/ui/common/cards/detailed_list_cards.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: GQLRequest(
        operationRequest:
            GNotificationsReq((b) => b..requestId = "userNotifications"),
        builder: (context, response, error, refetch) =>
            RefreshIndicator.adaptive(
          onRefresh: refetch,
          child: GraphqlPagination(
            pageInfo: response!.data!.Page!.pageInfo!,
            req: (nextPage) =>
                (response.operationRequest as GNotificationsReq).rebuild(
              (p0) => p0
                ..vars.page = nextPage
                ..updateResult = (previous, result) => result?.rebuild((p0) =>
                    p0
                      ..Page.notifications.insertAll(
                          0,
                          previous?.Page?.notifications?.whereNot((p0) =>
                                  result.Page?.notifications?.contains(p0) ??
                                  false) ??
                              [])),
            ),
            child: DetailedListCards(
              padding: const EdgeInsets.all(8),
              card: (index) {
                var item = response.data!.Page!.notifications![index]!;

                var notif = AnilistNotification(item);
                return DetailedListCard(
                  onTap: (notif.isMedia &&
                          item.G__typename != 'MediaDeletionNotification')
                      ? () => context
                          .push('/media/${(item as dynamic).media.id}/overview')
                      : notif.isActivity
                          ? () => context
                              .push('/activity/${(item as dynamic).activityId}')
                          : null,
                  imageUrl: (notif.isMedia &&
                          item.G__typename != 'MediaDeletionNotification')
                      ? (item as dynamic).media.coverImage.extraLarge
                      : (notif.isActivity ||
                              item.G__typename == 'FollowingNotification')
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
              itemCount: response.data!.Page!.notifications!.length,
            ),
          ),
        ),
      ),
    );
  }
}
