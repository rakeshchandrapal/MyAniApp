import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/ui/routes/user/__generated__/user.data.gql.dart';
import 'package:myaniapp/ui/routes/user/__generated__/user.req.gql.dart';

class UserProfileNotifier
    extends AutoDisposeFamilyStreamNotifier<GUserData_User, String> {
  // late ObservableQuery<Query$User> query;
  @override
  Stream<GUserData_User> build(String name) async* {
    final query = ref
        .watch(ferryClientProvider)
        .request(GUserReq(
          (b) => b..vars.name = name,
        ))
        .distinct();

    await for (final data in query) {
      if (data.hasErrors) {
        state = AsyncValue.error(
            (data.graphqlErrors, data.linkException), StackTrace.current);
        return;
      } else if (data.loading && data.data == null) {
        state = const AsyncValue.loading();
        return;
      }

      yield data.data!.User!;
    }
  }

  Future<void> refresh() async {
    return ref.read(ferryClientProvider).requestController.add(GUserReq(
          (b) => b..vars.name = arg,
        ));
  }
}

var userProfileProvider = StreamNotifierProvider.autoDispose
    .family<UserProfileNotifier, GUserData_User, String>(
  UserProfileNotifier.new,
);
