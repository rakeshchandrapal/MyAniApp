import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/image.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    this.bottom,
    this.actions,
    this.leading,
  });

  final TabBar? bottom;
  final List<Widget>? actions;
  final Widget? leading;

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return AppBar(
      // backgroundColor: Theme.of(context).colorScheme.onSecondary,
      leading: leading != null
          ? leading!
          : user.value != null
              ? Padding(
                  padding: const EdgeInsets.all(6),
                  child: CImage(
                    imageUrl: user.value!.avatar!.large!,
                    imageBuilder: (context, imageProvider) => GestureDetector(
                      onTap: () =>
                          Scaffold.maybeOf(Scaffold.of(context).context)
                              ?.openDrawer(),
                      child: CircleAvatar(
                        backgroundImage: imageProvider,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                )
              : IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: () =>
                      Scaffold.maybeOf(Scaffold.of(context).context)
                          ?.openDrawer(),
                ),
      bottom: bottom,
      actions: actions,
    );
  }
}
