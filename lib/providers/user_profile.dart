import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/user/user.graphql.dart';

class UserProfileNotifier
    extends AutoDisposeFamilyStreamNotifier<Query$User$User, String> {
  late ObservableQuery<Query$User> query;
  @override
  Stream<Query$User$User> build(String name) async* {
    query = client.value.watchQuery$User(
      WatchOptions$Query$User(
        variables: Variables$Query$User(name: name),
      ),
    );

    ref.onDispose(query.close);
    var cachedResult = query.fetchResults().eagerResult.parsedData?.User;

    if (cachedResult != null) yield cachedResult;

    await for (final data in query.stream) {
      if (data.hasException) {
        state = AsyncValue.error(data.exception!, StackTrace.current);
        return;
      } else if (data.isLoading && data.parsedData == null) {
        state = const AsyncValue.loading();
        return;
      }
      yield data.parsedData!.User!;
    }
  }

  Future<void> refresh() {
    return query.refetch();
  }
}

var userProfileProvider = StreamNotifierProvider.autoDispose
    .family<UserProfileNotifier, Query$User$User, String>(
  UserProfileNotifier.new,
);
