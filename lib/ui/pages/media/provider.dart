import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/media.graphql.dart';
import 'package:myaniapp/providers/graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class media extends _$media {
  late ObservableQuery<Query$Media> _query;
  bool isLoading = true;

  @override
  Query$Media$Media? build(int id) {
    var graphql = ref.watch(graphQLProvider);

    _query = graphql.value!.value.watchQuery$Media(
      WatchOptions$Query$Media(
        variables: Variables$Query$Media(id: id),
      ),
    );

    _query.stream.listen((event) {
      state = event.parsedData?.Media;
      isLoading = event.isLoading;
    });

    ref.onDispose(() => _query.close());

    return _query.fetchResults().eagerResult.parsedData?.Media;
  }

  Future<void> refetch() {
    return _query.refetch();
  }
}
