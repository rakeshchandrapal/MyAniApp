import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

class Comment extends StatelessWidget {
  const Comment({
    super.key,
    required this.header,
    required this.body,
    this.isReply = false,
    this.footer,
    this.replies,
    this.onTap,
  });

  final Widget body;
  final Widget? footer;
  final CommentHeader header;
  final bool isReply;
  final VoidCallback? onTap;
  final List<Widget>? replies;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(),
      overflow: TextOverflow.ellipsis,
      child: Card(
        shadowColor: Colors.transparent,
        margin: isReply ? const EdgeInsets.fromLTRB(5, 5, 0, 5) : null,
        child: InkWell(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 10),
                      child: header,
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
                    ...?replies,
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

class CommentHeader extends StatelessWidget {
  const CommentHeader({
    super.key,
    required this.username,
    required this.avatarUrl,
    this.createdAt,
    this.leading,
  });

  final String avatarUrl;
  final int? createdAt;
  final Widget? leading;
  final String username;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      children: [
        GestureDetector(
          onTap: () => context.router.push(ProfileRoute(name: username)),
          child: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(avatarUrl),
            backgroundColor: Colors.transparent,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(username),
              if (createdAt != null)
                Text(
                  timeago.format(
                    dateFromTimestamp(createdAt!),
                  ),
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.hintColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        if (leading != null) ...[const Spacer(), leading!],
      ],
    );
  }
}
