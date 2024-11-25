import 'package:flutter/material.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/utils.dart';
import 'package:relative_time/relative_time.dart';

class Comment extends StatefulWidget {
  const Comment({
    super.key,
    required this.avatar,
    required this.username,
    required this.createdAt,
    required this.body,
    this.footer,
    this.replies,
    this.isReply = false,
    this.onTap,
    required this.collapsible,
    this.onAvatarTap,
    this.badge,
  });

  final String avatar;
  final String username;
  final int createdAt;
  final Widget body;
  final Widget? footer;
  final GestureTapCallback? onTap;
  final List<Widget>? replies;
  final bool isReply;
  final bool collapsible;
  final GestureTapCallback? onAvatarTap;
  final Widget? badge;

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  bool collapsed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: widget.isReply ? const EdgeInsets.only(left: 5) : null,
        decoration: BoxDecoration(
          border: widget.isReply
              ? Border(
                  left: BorderSide(
                      width: 2,
                      color: context.theme.colorScheme.surfaceContainerHighest))
              : Border.symmetric(
                  horizontal: BorderSide(
                    width: 1,
                    color: context.theme.colorScheme.surfaceContainerHighest,
                  ),
                ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: widget.collapsible
                  ? () => setState(() => collapsed = !collapsed)
                  : null,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: widget.onAvatarTap,
                      child: ListTileCircleAvatar(
                        url: widget.avatar,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            widget.username,
                            maxLines: 2,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            widget.createdAt
                                .dateFromTimestamp()
                                .relativeTime(context),
                            style: context.theme.textTheme.labelSmall
                                ?.copyWith(color: context.theme.hintColor),
                          ),
                          if (widget.badge != null) widget.badge!,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (!collapsed) widget.body,
            if (widget.footer != null && !collapsed) widget.footer!,
            if (widget.replies?.isNotEmpty == true && !collapsed)
              ListView(
                primary: false,
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                children: widget.replies!,
              ),
          ],
        ),
      ),
    );
  }
}
