import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/notifications/__generated__/notifications.req.gql.dart';
import 'package:myaniapp/notifications/notifications.dart';
import 'package:myaniapp/utils.dart';
import 'package:relative_time/relative_time.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: GQLRequest(
        operationRequest:
            GNotificationsReq((b) => b..requestId = "userNotifications"),
        builder: (context, response, error, refetch) => GraphqlPagination(
          pageInfo: response!.data!.Page!.pageInfo!,
          req: (nextPage) =>
              (response.operationRequest as GNotificationsReq).rebuild(
            (p0) => p0
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Page.notifications.insertAll(
                    0,
                    previous?.Page?.notifications?.whereNot((p0) =>
                            result.Page?.notifications?.contains(p0) ??
                            false) ??
                        [])),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              var notif = AnilistNotification(
                  notification: response.data!.Page!.notifications![index]!);

              var n = notif.notification as dynamic;

              var onTap =
                  (notif.isMedia && n.type != GNotificationType.MEDIA_DELETION)
                      ? () {
                          context.push("/media/${n.media.id}/info",
                              extra: {"media": n.media});
                        }
                      : notif.isActivity
                          ? () {
                              context.push("/activity/${n.activityId}");
                            }
                          : notif.isThread
                              ? () {
                                  context.push("/forum/thread/${n.thread.id}");
                                }
                              : n.type == GNotificationType.FOLLOWING
                                  ? () {
                                      context.push("/user/${n.user.name}/info");
                                    }
                                  : null;

              return Card.outlined(
                child: InkWellImage(
                  onTap: onTap,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (notif.isMedia &&
                          n.type != GNotificationType.MEDIA_DELETION)
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
                      else if (n.type == GNotificationType.FOLLOWING)
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
            itemCount: response.data!.Page!.notifications!.length,
          ),
        ),
      ),
    );
  }
}
