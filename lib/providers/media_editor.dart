import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.data.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/media_editor/__generated__/media_editor.req.gql.dart';
import 'package:myaniapp/ui/common/media_editor/__generated__/media_editor.var.gql.dart';

class MediaEditorNotifier
    extends AutoDisposeFamilyStreamNotifier<GMediaListEntry, GMediaFragment> {
  @override
  Stream<GMediaListEntry> build(GMediaFragment media) async* {
    var user = ref.watch(userProvider);

    var query = ref.read(ferryClientProvider).request(GMediaEntryReq(
          (b) => b
            ..vars.userId = user.value!.id
            ..vars.mediaId = media.id,
        ));

    await for (final data in query) {
      if (data.loading) {
        state = const AsyncValue.loading();
        return;
      }

      yield data.data?.MediaList ??
          GMediaListEntryData(
            (b) => b
              ..id = -1
              ..mediaId = media.id
              ..media = GMediaListEntryData_media.fromJson(media.toJson())
                  ?.toBuilder(),
          );
    }
  }

  Future save(GSaveMediaListEntryVarsBuilder options) {
    var opts = options;

    if (state.value?.id == -1) {
      opts.update((b) => b..mediaId = arg.id);
    } else {
      opts.update((b) => b..id = state.value!.id);
    }

    return ref
        .read(ferryClientProvider)
        .request(GSaveMediaListEntryReq(
          (b) => b..vars.replace(options.build()),
        ))
        .first;
  }
}

var mediaEditorProvider = StreamNotifierProvider.autoDispose
    .family<MediaEditorNotifier, GMediaListEntry, GMediaFragment>(
  MediaEditorNotifier.new,
);
