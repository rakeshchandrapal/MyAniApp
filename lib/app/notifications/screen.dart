import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/notifications.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/notifications/notifications.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';
import 'package:relative_time/relative_time.dart';

var notificationSelection = {
  "Airing": [Enum$NotificationType.AIRING],
  "Activity": [
    Enum$NotificationType.ACTIVITY_LIKE,
    Enum$NotificationType.ACTIVITY_MENTION,
    Enum$NotificationType.ACTIVITY_MESSAGE,
    Enum$NotificationType.ACTIVITY_REPLY,
    Enum$NotificationType.ACTIVITY_REPLY_LIKE,
    Enum$NotificationType.ACTIVITY_REPLY_SUBSCRIBED,
  ],
  "Forum": [
    Enum$NotificationType.THREAD_COMMENT_LIKE,
    Enum$NotificationType.THREAD_LIKE,
    Enum$NotificationType.THREAD_COMMENT_MENTION,
    Enum$NotificationType.THREAD_COMMENT_REPLY,
    Enum$NotificationType.THREAD_SUBSCRIBED,
  ],
  "Follows": [Enum$NotificationType.FOLLOWING],
  "Media": [
    Enum$NotificationType.RELATED_MEDIA_ADDITION,
    Enum$NotificationType.MEDIA_DATA_CHANGE,
    Enum$NotificationType.MEDIA_MERGE,
    Enum$NotificationType.MEDIA_DELETION,
  ],
};

class NotificationScreen extends HookWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var s = useState<String?>(null);
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      notificationsQuery,
      parseData: Query$Notifications.fromJson,
      variables:
          Variables$Query$Notifications(types: notificationSelection[s.value])
              .toJson(),
      mergeResults: (previousResult, result) {
        result['data']['Page']['notifications'] = [
          ...?previousResult?['data']?['Page']?['notifications'],
          ...?result['data']?['Page']?['notifications']
        ];
        return result;
      },
    ));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: GQLWidget(
        response: snapshot,
        refetch: refetch,
        builder: () => RefreshIndicator.adaptive(
          onRefresh: refetch,
          child: PaginationView.list(
              pageInfo: snapshot.parsedData!.Page!.pageInfo!,
              req: (nextPage) => fetchMore(
                  variables: Variables$Query$Notifications.fromJson(
                          snapshot.request!.variables)
                      .copyWith(page: nextPage)
                      .toJson()),
              trailing: SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SegmentedButton(
                      selected: {s.value},
                      onSelectionChanged: (p0) => s.value = p0.first,
                      segments: [
                        const ButtonSegment(
                          value: null,
                          label: Text("All"),
                        ),
                        for (var y in notificationSelection.entries)
                          ButtonSegment(
                            value: y.key,
                            label: Text(y.key),
                          )
                      ],
                    ),
                  ),
                ),
              ),
              builder: (context, index) {
                var notif = AnilistNotification(
                    notification:
                        snapshot.parsedData!.Page!.notifications![index]!);

                var n = notif.notification as dynamic;

                var onTap = (notif.isMedia &&
                        n.type != Enum$NotificationType.MEDIA_DELETION)
                    ? () {
                        context.push(Routes.media(n.media.id),
                            extra: {"placeholder": n.media});
                      }
                    : notif.isActivity
                        ? () {
                            context.push(Routes.activity(n.activityId));
                          }
                        : notif.isThread
                            ? () {
                                context.push(Routes.thread(n.thread.id));
                              }
                            : n.type == Enum$NotificationType.FOLLOWING
                                ? () {
                                    context.push(Routes.user(n.user.name),
                                        extra: {"placeholder": n.user});
                                  }
                                : null;

                return Card.outlined(
                  child: InkWellImage(
                    onTap: onTap,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (notif.isMedia &&
                            n.type != Enum$NotificationType.MEDIA_DELETION)
                          SizedBox(
                            height: 120,
                            width: 85,
                            child: ClipRRect(
                              borderRadius: imageRadius,
                              child: CachedImage(
                                n.media.coverImage.extraLarge,
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        else if (notif.isMedia)
                          const SizedBox(
                            height: 120,
                            width: 85,
                            child: ClipRRect(
                              borderRadius: imageRadius,
                              child: CachedImage(
                                anilistDefaultImage,
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        else if (notif.isActivity)
                          SizedBox(
                            height: 120,
                            width: 85,
                            child: ClipRRect(
                              borderRadius: imageRadius,
                              child: CachedImage(
                                n.user.avatar.large,
                                // fit: BoxFit.fill,
                              ),
                            ),
                          )
                        else if (notif.isThread)
                          SizedBox(
                            height: 120,
                            width: 85,
                            child: ClipRRect(
                              borderRadius: imageRadius,
                              child: CachedImage(
                                n.user.avatar.large,
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        else if (n.type == Enum$NotificationType.FOLLOWING)
                          SizedBox(
                            height: 120,
                            width: 85,
                            child: ClipRRect(
                              borderRadius: imageRadius,
                              child: CachedImage(
                                n.user.avatar.large,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  notif.toString(),
                                  maxLines: 3,
                                ),
                                Text(
                                  (n.createdAt as int)
                                      .dateFromTimestamp()
                                      .relativeTime(context),
                                  style: context.theme.textTheme.labelLarge
                                      ?.copyWith(
                                          color: context.theme.hintColor),
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: snapshot.parsedData!.Page!.notifications!.length),
        ),
      ),
    );
  }
}
