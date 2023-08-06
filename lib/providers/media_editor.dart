import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/common/media_editor/media_editor.graphql.dart';
import 'package:myaniapp/providers/user.dart';

// part 'media_editor.g.dart';

// @riverpod
// class mediaEditor extends _$mediaEditor {
//   @override
//   Stream<Query$MediaListEntry> build(int id) async* {
//     return;
//   }

//   void updatep() {
//     print('isjdoas');
//   }
// }

class MediaEditorNotifier extends AutoDisposeFamilyStreamNotifier<
    Fragment$MediaListEntry, Fragment$MediaFragment> {
  @override
  Stream<Fragment$MediaListEntry> build(Fragment$MediaFragment media) async* {
    var user = ref.watch(userProvider);

    var query = client.value.watchQuery$MediaListEntry(
      WatchOptions$Query$MediaListEntry(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$MediaListEntry(
          mediaId: media.id,
          userId: user.value!.id,
        ),
      ),
    );

    query.fetchResults();

    ref.onDispose(query.close);

    await for (final data in query.stream) {
      if (data.isLoading) {
        state = const AsyncValue.loading();
        return;
      }
      yield data.parsedData?.MediaList ??
          Fragment$MediaListEntry(
            id: -1,
            mediaId: media.id,
            media: Fragment$MediaListEntry$media.fromJson(media.toJson()),
          );
    }
  }

  Future<QueryResult<Mutation$SaveMediaListEntry>> save(
      Variables$Mutation$SaveMediaListEntry options) {
    var opts = options;

    if (state.value?.id == -1) {
      opts = opts.copyWith(mediaId: arg.id);
    } else {
      opts = opts.copyWith(id: state.value!.id);
    }

    return client.value.mutate$SaveMediaListEntry(
      Options$Mutation$SaveMediaListEntry(
        variables: opts,
        onError: (error) => print(error),
      ),
    );
  }
}

var mediaEditorProvider = StreamNotifierProvider.autoDispose.family<
    MediaEditorNotifier, Fragment$MediaListEntry, Fragment$MediaFragment>(
  MediaEditorNotifier.new,
);
