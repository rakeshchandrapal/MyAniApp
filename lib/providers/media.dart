import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated__/media.data.gql.dart';
import 'package:myaniapp/graphql/__generated__/media.req.gql.dart';
import 'package:myaniapp/providers/ferry.dart';

class MediaNotifier
    extends AutoDisposeFamilyStreamNotifier<GMediaData_Media, int> {
  // late ObservableQuery<Query$Media> query;
  @override
  Stream<GMediaData_Media> build(int id) async* {
    final query = ref
        .watch(ferryClientProvider)
        .request(GMediaReq(
          (b) => b..vars.id = id,
        ))
        .distinct();

    // ref.onDispose(query.);

    // if (cachedResult != null) yield cachedResult;

    await for (final data in query) {
      if (data.hasErrors) {
        state = AsyncValue.error(
            (data.graphqlErrors, data.linkException), StackTrace.current);
        return;
      } else if (data.loading && data.data == null) {
        state = const AsyncValue.loading();
        return;
      }

      // if (state.isLoading)
      // await Future.delayed(const Duration(milliseconds: 1000));
      yield data.data!.Media!;
    }
  }

  Future<void> refresh() async {
    ref
        .read(ferryClientProvider)
        .requestController
        .add(GMediaReq((b) => b..vars.id = arg));
  }
}

var mediaProvider = StreamNotifierProvider.autoDispose
    .family<MediaNotifier, GMediaData_Media, int>(
  MediaNotifier.new,
);
