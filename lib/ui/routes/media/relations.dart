import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/providers/media.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';

class MediaRelationsPage extends ConsumerWidget {
  const MediaRelationsPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var media = ref.watch(mediaProvider(id));

    var sorted = media.value!.relations!.edges!
      ..sort(
        (a, b) => a!.relationType!.index.compareTo(b!.relationType!.index),
      );

    return MediaCards(
      list: sorted.map((e) => e!.node!).toList(),
      aspectRatio: 1.8 / 3,
      onTap: (media, index) => context.push('/media/${media.id}/overview'),
      underTitle: (media, style, index) => Padding(
        padding: style == ListStyle.detailedList
            ? const EdgeInsets.all(8)
            : EdgeInsets.zero,
        child: Text(
          sorted[index]!.relationType!.name.capitalize(),
        ),
      ),
    );
  }
}
