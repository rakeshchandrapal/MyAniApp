import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/notifications/notifications.graphql.dart';

class AnilistNotification {
  AnilistNotification(this._notif);

  final Query$Notifications$Page$notifications _notif;

  bool get isMedia {
    switch (_notif.$__typename) {
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
    switch (_notif.$__typename) {
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
    switch (_notif.$__typename) {
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
    switch (_notif.$__typename) {
      case "AiringNotification":
        {
          var n = _notif
              as Query$Notifications$Page$notifications$$AiringNotification;
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
          var n = _notif
              as Query$Notifications$Page$notifications$$FollowingNotification;
          return [n.user!.name, n.context!];
        }
      case "ActivityMessageNotification":
      case "ActivityMentionNotification":
      case "ActivityReplyNotification":
      case "ActivityReplySubscribedNotification":
      case "ActivityLikeNotification":
      case "ActivityReplyLikeNotification":
        {
          var n = _notif as dynamic;
          return [n.user!.name, n.context!];
        }
      case "ThreadCommentMentionNotification":
      case "ThreadCommentReplyNotification":
      case "ThreadCommentSubscribedNotification":
      case "ThreadCommentLikeNotification":
      case "ThreadLikeNotification":
        {
          {
            var n = _notif as dynamic;
            return [n.user!.name, n.context!];
          }
        }
      case "RelatedMediaAdditionNotification":
        {
          var n = _notif
              as Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification;
          return [n.media!.title!.userPreferred!, n.context!];
        }
      case "MediaDataChangeNotification":
        {
          var n = _notif
              as Query$Notifications$Page$notifications$$MediaDataChangeNotification;
          return [n.media!.title!.userPreferred!, n.context!];
        }
      case "MediaMergeNotification":
        {
          var n = _notif
              as Query$Notifications$Page$notifications$$MediaMergeNotification;
          return [
            n.deletedMediaTitles!.join(', '),
            n.context!,
            n.media!.title!.userPreferred!
          ];
        }
      case "MediaDeletionNotification":
        {
          var n = _notif
              as Query$Notifications$Page$notifications$$MediaDeletionNotification;
          return [n.deletedMediaTitle!, n.context!];
        }
    }

    return [];
  }

  Text toWidget() {
    var texts = extractText();

    return Text.rich(
      TextSpan(
        children: [
          for (var text in texts) TextSpan(text: text),
        ],
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
