import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql/__generated/notifications/notifications.graphql.dart';
import 'package:myaniapp/notifications/notification.dart';
import 'package:myaniapp/ui/common/cards/detailed_list_cards.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/utils/graphql.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Query$Notifications$Widget(
        builder: queryBuilder(
          (result, [fetchMore, refetch]) => RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: GraphqlPagination(
              pageInfo: result.parsedData!.Page!.pageInfo!,
              fetchMore: (nextPage) => fetchMore!(
                FetchMoreOptions$Query$Notifications(
                  updateQuery: (previousResultData, fetchMoreResultData) {
                    var list = [
                      ...previousResultData!['Page']['notifications'],
                      ...fetchMoreResultData!['Page']['notifications'],
                    ];

                    fetchMoreResultData['Page']['notifications'] = list;

                    return fetchMoreResultData;
                  },
                  variables: Variables$Query$Notifications(page: nextPage),
                ),
              ),
              child: DetailedListCards(
                padding: const EdgeInsets.all(8),
                card: (index) {
                  var item = result.parsedData!.Page!.notifications![index]!;

                  var notif = AnilistNotification(item);
                  return DetailedListCard(
                    onTap: (notif.isMedia &&
                            item.$__typename != 'MediaDeletionNotification')
                        ? () => context.push(
                            '/media/${(item as dynamic).media.id}/overview')
                        : notif.isActivity
                            ? () => context.push(
                                '/activity/${(item as dynamic).activityId}')
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
            ),
          ),
        ),
      ),
    );
  }
}
