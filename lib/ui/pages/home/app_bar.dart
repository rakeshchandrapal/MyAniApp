import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/image.dart';

class Appbar extends ConsumerWidget implements PreferredSizeWidget {
  const Appbar({
    super.key,
    this.actions,
    this.title,
    this.bottom,
  });

  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? title;

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return SliverAppBar(
      leading: user.when(
        data: (data) {
          return Padding(
            padding: const EdgeInsets.all(6),
            child: GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: CImage(
                imageUrl: data!.avatar!.large!,
                imageBuilder: (context, imageProvider) => CircleAvatar(
                  backgroundImage: imageProvider,
                ),
              ),
            ),
          );
        },
        error: (error, stackTrace) => const SizedBox(),
        loading: () => CircularProgressIndicator.adaptive(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      actions: actions,
      title: title,
      bottom: bottom,
      centerTitle: true,
    );
  }
}
