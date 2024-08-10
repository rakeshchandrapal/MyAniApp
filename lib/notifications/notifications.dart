import 'package:myaniapp/notifications/__generated__/notifications.data.gql.dart';

class AnilistNotification {
  final GNotificationsData_Page_notifications notification;

  AnilistNotification({required this.notification});

  bool get isMedia {
    switch (notification.G__typename) {
      case "RelatedMediaAdditionNotification":
      case "MediaDataChangeNotification":
      case "MediaMergeNotification":
      case "MediaDeletionNotification":
      case "AiringNotification":
        return true;
      default:
        return false;
    }
  }

  bool get isActivity {
    switch (notification.G__typename) {
      case "ActivityMessageNotification":
      case "ActivityMentionNotification":
      case "ActivityReplyNotification":
      case "ActivityReplySubscribedNotification":
      case "ActivityLikeNotification":
      case "ActivityReplyLikeNotification":
        return true;
      default:
        return false;
    }
  }

  bool get isThread {
    switch (notification.G__typename) {
      case "ThreadCommentMentionNotification":
      case "ThreadCommentReplyNotification":
      case "ThreadCommentSubscribedNotification":
      case "ThreadCommentLikeNotification":
      case "ThreadLikeNotification":
        return true;
      default:
        return false;
    }
  }

  List<String> extractText() {
    switch (notification.G__typename) {
      case "AiringNotification":
        {
          var n = notification
              as GNotificationsData_Page_notifications__asAiringNotification;
          return [
            n.contexts![0]!,
            n.episode.toString(),
            n.contexts![1]!,
            n.media!.title!.userPreferred!,
            n.contexts![2]!
          ];
        }
      case "FollowingNotification":
        {
          var n = notification
              as GNotificationsData_Page_notifications__asFollowingNotification;
          return [n.user!.name, n.context!];
        }
      case "ActivityMessageNotification":
      case "ActivityMentionNotification":
      case "ActivityReplyNotification":
      case "ActivityReplySubscribedNotification":
      case "ActivityLikeNotification":
      case "ActivityReplyLikeNotification":
        {
          var n = notification as dynamic;
          return [n.user!.name, n.context!];
        }
      case "ThreadCommentMentionNotification":
      case "ThreadCommentReplyNotification":
      case "ThreadCommentSubscribedNotification":
      case "ThreadCommentLikeNotification":
      case "ThreadLikeNotification":
        {
          {
            var n = notification as dynamic;
            return [n.user!.name, n.context!];
          }
        }
      case "RelatedMediaAdditionNotification":
        {
          var n = notification
              as GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification;
          return [n.media!.title!.userPreferred!, n.context!];
        }
      case "MediaDataChangeNotification":
        {
          var n = notification
              as GNotificationsData_Page_notifications__asMediaDataChangeNotification;
          return [n.media!.title!.userPreferred!, n.context!];
        }
      case "MediaMergeNotification":
        {
          var n = notification
              as GNotificationsData_Page_notifications__asMediaMergeNotification;
          return [
            n.deletedMediaTitles!.join(', '),
            n.context!,
            n.media!.title!.userPreferred!
          ];
        }
      case "MediaDeletionNotification":
        {
          var n = notification
              as GNotificationsData_Page_notifications__asMediaDeletionNotification;
          return [n.deletedMediaTitle!, n.context!];
        }
    }

    return [];
  }

  @override
  String toString() {
    return extractText().join("");
  }
}
