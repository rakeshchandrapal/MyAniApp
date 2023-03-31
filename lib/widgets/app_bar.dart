import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/widgets/drawer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Appbar extends ConsumerWidget {
  final Widget title;
  final PreferredSizeWidget? bottom;
  final List<Widget>? actions;
  final Widget child;

  const Appbar({
    super.key,
    required this.title,
    this.bottom,
    this.actions,
    required this.child,
  });

  @override
  Widget build(BuildContext context, ref) {
    var user = ref.watch(fetchCurrentUserProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width / 6,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: title,
            centerTitle: true,
            floating: true,
            snap: true,
            actions: actions,
            leading: user.value != null
                ? IconButton(
                    padding: const EdgeInsets.all(4),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: CachedNetworkImage(
                      imageUrl: user.value!.avatar!.large!,
                      imageBuilder: (context, imageProvider) =>
                          CircleAvatar(backgroundImage: imageProvider),
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                    ),
                  )
                : const SizedBox(),
            bottom: bottom,
          ),
        ],
        body: child,
      ),
    );
  }
}
