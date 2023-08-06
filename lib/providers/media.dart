import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/media.graphql.dart';

class MediaNotifier
    extends AutoDisposeFamilyStreamNotifier<Query$Media$Media, int> {
  late ObservableQuery<Query$Media> query;
  @override
  Stream<Query$Media$Media> build(int id) async* {
    query = client.value.watchQuery$Media(
      WatchOptions$Query$Media(
        variables: Variables$Query$Media(id: id),
      ),
    );

    ref.onDispose(query.close);
    var cachedResult = query.fetchResults().eagerResult.parsedData?.Media;

    if (cachedResult != null) yield cachedResult;

    await for (final data in query.stream) {
      if (data.hasException) {
        state = AsyncValue.error(data.exception!, StackTrace.current);
        return;
      } else if (data.isLoading && data.parsedData == null) {
        state = const AsyncValue.loading();
        return;
      }
      yield data.parsedData!.Media!;
    }
  }

  Future<void> refresh() {
    return query.refetch();
  }
}

var mediaProvider = StreamNotifierProvider.autoDispose
    .family<MediaNotifier, Query$Media$Media, int>(
  MediaNotifier.new,
);
