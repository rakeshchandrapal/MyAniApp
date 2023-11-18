import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';
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
    return DefaultTextStyle(
      style: const TextStyle(),
      overflow: TextOverflow.ellipsis,
      child: Card(
        shadowColor: Colors.transparent,
        margin: isReply ? const EdgeInsets.fromLTRB(5, 5, 0, 5) : null,
        child: InkWell(
          borderRadius: imageRadius,
          onTap: onTap,
          child: ClipPath(
            clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Container(
              decoration: isReply
                  ? BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          width: 3,
                        ),
                      ),
                    )
                  : null,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 0, 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 10),
                      child: CommentHeader(
                        avatarUrl: avatarUrl,
                        username: username,
                        createdAt: createdAt,
                        leading: leading,
                        badge: badge,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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

class CommentHeader extends StatelessWidget {
  const CommentHeader({
    super.key,
    required this.username,
    required this.avatarUrl,
    this.createdAt,
    this.leading,
    this.badge,
  });

  final String? avatarUrl;
  final int? createdAt;
  final Widget? leading;
  final String? username;
  final CommentBadge? badge;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      children: [
        if (avatarUrl != null)
          GestureDetector(
            onTap: username != null
                ? () => context.pushRoute(
                      UserRoute(
                        name: username!,
                      ),
                    )
                : null,
            child: CImage(
              imageUrl: avatarUrl!,
              imageBuilder: (context, imageProvider) => CircleAvatar(
                backgroundImage: imageProvider,
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (username != null)
                      Text(
                        username!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    if (createdAt != null)
                      Text(
                        timeago.format(dateFromTimestamp(createdAt!),
                            locale: 'en_short'),
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.hintColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                  ],
                ),
              ),
              if (badge != null) badge!,
            ],
          ),
        ),
        if (leading != null) leading!,
      ],
    );
  }
}
