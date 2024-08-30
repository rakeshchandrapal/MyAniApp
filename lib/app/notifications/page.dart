import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/notifications/notifications.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/notifications/notifications.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';
import 'package:relative_time/relative_time.dart';

class PositionRetainedScrollPhysics extends ScrollPhysics {
  final bool shouldRetain;
  const PositionRetainedScrollPhysics({super.parent, this.shouldRetain = true});

  @override
  PositionRetainedScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return PositionRetainedScrollPhysics(
      parent: buildParent(ancestor),
      shouldRetain: shouldRetain,
    );
  }

  @override
  double adjustPositionForNewDimensions({
    required ScrollMetrics oldPosition,
    required ScrollMetrics newPosition,
    required bool isScrolling,
    required double velocity,
  }) {
    final position = super.adjustPositionForNewDimensions(
      oldPosition: oldPosition,
      newPosition: newPosition,
      isScrolling: isScrolling,
      velocity: velocity,
    );

    final diff = newPosition.maxScrollExtent - oldPosition.maxScrollExtent;

    if (oldPosition.pixels > oldPosition.minScrollExtent &&
        diff > 0 &&
        shouldRetain) {
      return position + diff;
    } else {
      return position;
    }
  }
}

@RoutePage()
class NotificationScreen extends HookWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      notificationsQuery,
      parseData: Query$Notifications.fromJson,
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
        builder: () => GraphqlPagination(
          pageInfo: snapshot.parsedData!.Page!.pageInfo!,
          req: (nextPage) => fetchMore(
              variables:
                  Variables$Query$Notifications(page: nextPage).toJson()),
          child: ListView.builder(
            itemBuilder: (context, index) {
              var notif = AnilistNotification(
                  notification:
                      snapshot!.parsedData!.Page!.notifications![index]!);

              var n = notif.notification as dynamic;

              // var onTap = null;
              var onTap = (notif.isMedia &&
                      n.type != Enum$NotificationType.MEDIA_DELETION)
                  ? () {
                      context.pushRoute(
                          MediaRoute(id: n.media.id, placeholder: n.media));
                    }
                  : notif.isActivity
                      ? () {
                          context.pushRoute(ActivityRoute(id: n.activityId));
                        }
                      : notif.isThread
                          ? () {
                              context.pushRoute(ThreadRoute(id: n.thread.id));
                            }
                          : n.type == Enum$NotificationType.FOLLOWING
                              ? () {
                                  context
                                      .pushRoute(UserRoute(name: n.user.name));
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
                              n.media.coverImage.extraLarge,
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
                                dateFromTimestamp(n.createdAt)
                                    .relativeTime(context),
                                style: context.theme.textTheme.labelLarge
                                    ?.copyWith(color: context.theme.hintColor),
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
            itemCount: snapshot!.parsedData!.Page!.notifications!.length,
          ),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Notifications"),
    //   ),
    //   body: GQLRequest(
    //     operationRequest:
    //         GNotificationsReq((b) => b..requestId = "userNotifications"),
    //     builder: (context, response, error, refetch) => GraphqlPagination(
    //       pageInfo: response!.data!.Page!.pageInfo!,
    //       req: (nextPage) =>
    //           (response.operationRequest as GNotificationsReq).rebuild(
    //         (p0) => p0
    //           ..vars.page = nextPage
    //           ..updateResult = (previous, result) => result?.rebuild((p0) => p0
    //             ..Page.notifications.insertAll(
    //                 0,
    //                 previous?.Page?.notifications?.whereNot((p0) =>
    //                         result.Page?.notifications?.contains(p0) ??
    //                         false) ??
    //                     [])),
    //       ),
    //       child: ListView.builder(
    //         itemBuilder: (context, index) {
    //           var notif = AnilistNotification(
    //               notification: response.data!.Page!.notifications![index]!);

    //           var n = notif.notification as dynamic;

    //           var onTap = (notif.isMedia &&
    //                   n.type != GNotificationType.MEDIA_DELETION)
    //               ? () {
    //                   context.pushRoute(
    //                       MediaRoute(id: n.media.id, placeholder: n.media));
    //                 }
    //               : notif.isActivity
    //                   ? () {
    //                       context.pushRoute(ActivityRoute(id: n.activityId));
    //                     }
    //                   : notif.isThread
    //                       ? () {
    //                           context.pushRoute(ThreadRoute(id: n.thread.id));
    //                         }
    //                       : n.type == GNotificationType.FOLLOWING
    //                           ? () {
    //                               context
    //                                   .pushRoute(UserRoute(name: n.user.name));
    //                             }
    //                           : null;

    //           return Card.outlined(
    //             child: InkWellImage(
    //               onTap: onTap,
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   if (notif.isMedia &&
    //                       n.type != GNotificationType.MEDIA_DELETION)
    //                     SizedBox(
    //                       height: 120,
    //                       width: 85,
    //                       child: ClipRRect(
    //                         borderRadius: imageRadius,
    //                         child: CachedImage(
    //                           n.media.coverImage.extraLarge,
    //                           fit: BoxFit.fill,
    //                         ),
    //                       ),
    //                     )
    //                   else if (notif.isMedia)
    //                     const SizedBox(
    //                       height: 120,
    //                       width: 85,
    //                       child: ClipRRect(
    //                         borderRadius: imageRadius,
    //                         child: CachedImage(
    //                           anilistDefaultImage,
    //                           fit: BoxFit.fill,
    //                         ),
    //                       ),
    //                     )
    //                   else if (notif.isActivity)
    //                     SizedBox(
    //                       height: 120,
    //                       width: 85,
    //                       child: ClipRRect(
    //                         borderRadius: imageRadius,
    //                         child: CachedImage(
    //                           n.user.avatar.large,
    //                           // fit: BoxFit.fill,
    //                         ),
    //                       ),
    //                     )
    //                   else if (notif.isThread)
    //                     SizedBox(
    //                       height: 120,
    //                       width: 85,
    //                       child: ClipRRect(
    //                         borderRadius: imageRadius,
    //                         child: CachedImage(
    //                           n.media.coverImage.extraLarge,
    //                           fit: BoxFit.fill,
    //                         ),
    //                       ),
    //                     )
    //                   else if (n.type == GNotificationType.FOLLOWING)
    //                     SizedBox(
    //                       height: 120,
    //                       width: 85,
    //                       child: ClipRRect(
    //                         borderRadius: imageRadius,
    //                         child: CachedImage(
    //                           n.user.avatar.large,
    //                           fit: BoxFit.fill,
    //                         ),
    //                       ),
    //                     ),
    //                   Expanded(
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Text(
    //                             notif.toString(),
    //                             maxLines: 3,
    //                           ),
    //                           Text(
    //                             dateFromTimestamp(n.createdAt)
    //                                 .relativeTime(context),
    //                             style: context.theme.textTheme.labelLarge
    //                                 ?.copyWith(color: context.theme.hintColor),
    //                             maxLines: 2,
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           );
    //         },
    //         itemCount: response.data!.Page!.notifications!.length,
    //       ),
    //     ),
    //   ),
    // );
  }
}
