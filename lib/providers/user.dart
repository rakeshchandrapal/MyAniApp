import 'package:myaniapp/graphql/__generated/graphql/viewer.graphql.dart';
import 'package:myaniapp/providers/graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user.g.dart';

@Riverpod(keepAlive: true)
class User extends _$User {
  void resetNotifCount() {
    state = AsyncValue.data(state.value?.copyWith(unreadNotificationCount: 0));
  }

  void updateSettings([Variables$Mutation$UpdateUser? options]) async {
    state = AsyncValue.data(state.value?.copyWith(
      options: state.value!.options?.copyWith(
        displayAdultContent: options?.displayAdultContent ??
            state.value?.options?.displayAdultContent,
        airingNotifications: options?.airingNotifications ??
            state.value?.options?.airingNotifications,
        activityMergeTime: options?.activityMergeTime ??
            state.value?.options?.activityMergeTime,
        restrictMessagesToFollowing: options?.restrictMessagesToFollowing ??
            state.value?.options?.restrictMessagesToFollowing,
        staffNameLanguage: options?.staffNameLanguage ??
            state.value?.options?.staffNameLanguage,
        titleLanguage:
            options?.titleLanguage ?? state.value?.options?.titleLanguage,
      ),
      mediaListOptions: state.value?.mediaListOptions!.copyWith(
        scoreFormat:
            options?.scoreFormat ?? state.value?.mediaListOptions?.scoreFormat,
      ),
    ));
    // notifyListeners();
    var c = ref.read(graphQLProvider);
    if (c.value == null) return;
    var hmh = await c.value!.value.mutate$UpdateUser(
      Options$Mutation$UpdateUser(variables: options),
    );
    state = AsyncValue.data(hmh.parsedData!.UpdateUser!);
  }

  @override
  FutureOr<Fragment$ThisUser?> build() async {
    var client = ref.watch(graphQLProvider);
    if (client.value == null) return null;

    var stream = client.value!.value.watchQuery$Viewer(
      WatchOptions$Query$Viewer(
        pollInterval: const Duration(minutes: 30),
      ),
    );

    stream.stream.listen((event) {
      if (event.parsedData?.Viewer != null) {
        state = AsyncData(event.parsedData!.Viewer!);
      }
    });

    return stream.fetchResults().eagerResult.parsedData?.Viewer;
  }
}
