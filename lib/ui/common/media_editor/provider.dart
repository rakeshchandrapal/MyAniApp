import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/common/media_editor/media_editor.graphql.dart';
import 'package:myaniapp/providers/graphql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class MediaEditor extends _$MediaEditor {
  bool _create = false;
  Fragment$MediaListEntry? _og;

  void modify({
    Enum$MediaListStatus? status,
    int? updatedAt,
    int? progress,
    int? progressVolumes,
    int? priority,
    String? notes,
    bool? hiddenFromStatusLists,
    bool? private,
    int? repeat,
    double? score,
    Fragment$FuzzyDate? startedAt,
    Fragment$FuzzyDate? completedAt,
  }) {
    state = state?.copyWith(
      status: status ?? state?.status,
      updatedAt: updatedAt ?? state?.updatedAt,
      progress: progress ?? state?.progress,
      progressVolumes: progressVolumes ?? state?.progressVolumes,
      priority: priority ?? state?.priority,
      notes: notes ?? state?.notes,
      hiddenFromStatusLists:
          hiddenFromStatusLists ?? state?.hiddenFromStatusLists,
      private: private ?? state?.private,
      repeat: repeat ?? state?.repeat,
      score: score ?? state?.score,
      startedAt: startedAt ?? state?.startedAt,
      completedAt: completedAt ?? state?.completedAt,
    );
  }

  void update(VoidCallback? onSave) {
    var graphql = ref.read(graphQLProvider);

    if (state == null) return;

    print(state?.score);
    if (_og == state) return;

    graphql.value!.value.mutate$SaveMediaListEntry(
      Options$Mutation$SaveMediaListEntry(
        variables: Variables$Mutation$SaveMediaListEntry(
          id: _create ? null : state!.id,
          mediaId: _create ? media.id : null,
          completedAt: state!.completedAt != null
              ? Input$FuzzyDateInput(
                  day: state!.completedAt!.day,
                  month: state!.completedAt!.month,
                  year: state!.completedAt!.year,
                )
              : null,
          startedAt: state!.startedAt != null
              ? Input$FuzzyDateInput(
                  day: state!.startedAt!.day,
                  month: state!.startedAt!.month,
                  year: state!.startedAt!.year,
                )
              : null,
          scoreRaw: state!.score?.toInt(),
          hiddenFromStatusLists: state!.hiddenFromStatusLists,
          notes: state!.notes,
          priority: state!.priority,
          progress: state!.progress,
          private: state!.private,
          progressVolumes: state!.progressVolumes,
          repeat: state!.repeat,
          status: state!.status,
        ),
        onCompleted: (p0, p1) {
          onSave?.call();
          state = p1!.SaveMediaListEntry!;
        },
        onError: (error) => print(error),
      ),
    );
  }

  @override
  Fragment$MediaListEntry? build(Fragment$Media media) {
    var graphql = ref.watch(graphQLProvider);
    var user = ref.watch(userProvider);

    graphql.value!.value
        .query$MediaListEntry(
      Options$Query$MediaListEntry(
        variables: Variables$Query$MediaListEntry(
          userId: user.value!.id,
          mediaId: media.id,
        ),
        onComplete: (p0, p1) {
          state = p1?.MediaList ??
              Fragment$MediaListEntry(
                id: media.id,
                media: Fragment$MediaListEntry$media.fromJson(media.toJson()),
                mediaId: media.id,
              );
        },
      ),
    )
        .then((value) {
      _og = value.parsedData?.MediaList;
      state = value.parsedData?.MediaList ??
          Fragment$MediaListEntry(
            id: media.id,
            media: Fragment$MediaListEntry$media.fromJson(media.toJson()),
            mediaId: media.id,
          );
      if (value.parsedData?.MediaList == null) _create = true;
    });
    return null;
  }
}
