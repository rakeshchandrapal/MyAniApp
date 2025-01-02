import 'package:myaniapp/graphql/__gen/notifications.graphql.dart';

class AnilistNotification {
  final Query$Notifications$Page$notifications notification;

  AnilistNotification({required this.notification});

  bool get isMedia {
    return notification.maybeWhen(
      airingNotification: (p0) => true,
      relatedMediaAdditionNotification: (p0) => true,
      mediaDataChangeNotification: (p0) => true,
      mediaMergeNotification: (p0) => true,
      mediaDeletionNotification: (p0) => true,
      orElse: () => false,
    );
  }

  bool get isActivity {
    return notification.maybeWhen(
      activityMessageNotification: (p0) => true,
      activityMentionNotification: (p0) => true,
      activityReplyNotification: (p0) => true,
      activityReplySubscribedNotification: (p0) => true,
      activityLikeNotification: (p0) => true,
      orElse: () => false,
    );
  }

  bool get isThread {
    return notification.maybeWhen(
      threadCommentMentionNotification: (p0) => true,
      threadCommentReplyNotification: (p0) => true,
      threadCommentLikeNotification: (p0) => true,
      threadCommentSubscribedNotification: (p0) => true,
      threadLikeNotification: (p0) => true,
      orElse: () => false,
    );
  }

  List<String> extractText() {
    return notification.when(
      airingNotification: (n) => [
        n.contexts![0]!,
        n.episode.toString(),
        n.contexts![1]!,
        n.media!.title!.userPreferred!,
        n.contexts![2]!
      ],
      followingNotification: (n) => [n.user!.name, n.context!],
      activityMessageNotification: (n) => [n.user!.name, n.context!],
      activityMentionNotification: (n) => [n.user!.name, n.context!],
      activityReplyNotification: (n) => [n.user!.name, n.context!],
      activityReplySubscribedNotification: (n) => [n.user!.name, n.context!],
      activityLikeNotification: (n) => [n.user!.name, n.context!],
      activityReplyLikeNotification: (n) => [n.user!.name, n.context!],
      threadCommentMentionNotification: (n) => [n.user!.name, n.context!],
      threadCommentReplyNotification: (n) => [n.user!.name, n.context!],
      threadCommentSubscribedNotification: (n) => [n.user!.name, n.context!],
      threadCommentLikeNotification: (n) => [n.user!.name, n.context!],
      threadLikeNotification: (n) => [n.user!.name, n.context!],
      relatedMediaAdditionNotification: (n) =>
          [n.media!.title!.userPreferred!, n.context!],
      mediaDataChangeNotification: (n) =>
          [n.media!.title!.userPreferred!, n.context!],
      mediaMergeNotification: (n) => [
        n.deletedMediaTitles!.join(', '),
        n.context!,
        n.media!.title!.userPreferred!
      ],
      mediaDeletionNotification: (n) => [n.deletedMediaTitle!, n.context!],
      orElse: () => [],
    );
  }

  @override
  String toString() {
    return extractText().join("");
  }
}
