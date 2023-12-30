import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

class Comment extends StatelessWidget {
  const Comment({
    super.key,
    required this.body,
    this.avatarUrl,
    this.username,
    this.isReply = false,
    this.footer,
    this.replies,
    this.onTap,
    this.createdAt,
    this.leading,
    this.badge,
  });

  final String? avatarUrl;
  final Widget body;
  final int? createdAt;
  final Widget? footer;
  final bool isReply;
  final Widget? leading;
  final VoidCallback? onTap;
  final List<Widget>? replies;
  final String? username;
  final CommentBadge? badge;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: isReply ? const EdgeInsets.only(left: 5) : null,
          decoration: BoxDecoration(
            border: Border(
              bottom: isReply
                  ? BorderSide.none
                  : BorderSide(color: theme.colorScheme.surfaceVariant),
              left: isReply
                  ? BorderSide(
                      color: theme.colorScheme.secondaryContainer,
                      width: 2,
                    )
                  : BorderSide.none,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    if (avatarUrl != null)
                      GestureDetector(
                        onTap: () => context.push("/user/$username"),
                        child: CImage(
                          imageUrl: avatarUrl!,
                          imageBuilder: (context, imageProvider) =>
                              CircleAvatar(
                            foregroundImage: imageProvider,
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            if (username != null) TextSpan(text: username),
                            const TextSpan(text: " - "),
                            if (createdAt != null)
                              TextSpan(
                                text: timeago.format(
                                  dateFromTimestamp(createdAt!),
                                  locale: "en_short",
                                ),
                              )
                          ],
                        ),
                        style: theme.textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    if (badge != null) badge!,
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 10),
                child: body,
              ),
              if (footer != null)
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 10),
                  child: footer!,
                ),
              if (replies != null)
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) => replies![index],
                  itemCount: replies!.length,
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CommentBadge extends StatelessWidget {
  const CommentBadge({
    super.key,
    required this.label,
    this.icon,
  });

  final String label;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: imageRadius,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Row(
              children: [
                if (icon != null) icon!,
                Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
