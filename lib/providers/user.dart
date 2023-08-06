import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/viewer.graphql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'user.g.dart';

// @Riverpod(keepAlive: true)
// class User extends _$User {
//   void resetNotifCount() {
//     state = AsyncValue.data(state.value?.copyWith(unreadNotificationCount: 0));
//   }

//   void updateSettings([Variables$Mutation$UpdateUser? options]) async {
//     state = AsyncValue.data(state.value?.copyWith(
//       options: state.value!.options?.copyWith(
//         displayAdultContent: options?.displayAdultContent ??
//             state.value?.options?.displayAdultContent,
//         airingNotifications: options?.airingNotifications ??
//             state.value?.options?.airingNotifications,
//         activityMergeTime: options?.activityMergeTime ??
//             state.value?.options?.activityMergeTime,
//         restrictMessagesToFollowing: options?.restrictMessagesToFollowing ??
//             state.value?.options?.restrictMessagesToFollowing,
//         staffNameLanguage: options?.staffNameLanguage ??
//             state.value?.options?.staffNameLanguage,
//         titleLanguage:
//             options?.titleLanguage ?? state.value?.options?.titleLanguage,
//       ),
//       mediaListOptions: state.value?.mediaListOptions!.copyWith(
//         scoreFormat:
//             options?.scoreFormat ?? state.value?.mediaListOptions?.scoreFormat,
//       ),
//     ));
//     // notifyListeners();
//     var hmh = await client.value.mutate$UpdateUser(
//       Options$Mutation$UpdateUser(variables: options),
//     );
//     state = AsyncValue.data(hmh.parsedData!.UpdateUser!);
//   }

//   @override
//   FutureOr<Fragment$ThisUser?> build() async {
//     ref.watch(settingsProvider);

//     var stream = client.value.watchQuery$Viewer(
//       WatchOptions$Query$Viewer(
//         pollInterval: const Duration(minutes: 30),
//         fetchPolicy: FetchPolicy.networkOnly,
//         cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
//       ),
//     );

//     print('stream');

//     stream.stream.listen((event) {
//       print(event);
//       if (event.isLoading && event.parsedData != null) {
//         state = const AsyncValue.loading();
//       }
//       state = AsyncData(event.parsedData?.Viewer);
//     });

//     state = const AsyncValue.loading();
//     stream.fetchResults();
//     return null;

//     // return stream.fetchResults().eagerResult.parsedData?.Viewer;
//   }
// }

class UserNotifier extends AutoDisposeStreamNotifier<Fragment$ThisUser?> {
  @override
  Stream<Fragment$ThisUser?> build() async* {
    ref.watch(settingsProvider);

    var stream = client.value.watchQuery$Viewer(
      WatchOptions$Query$Viewer(
        pollInterval: const Duration(minutes: 30),
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
      ),
    );

    // stream.stream.listen((event) {
    //   if (event.isLoading && event.parsedData == null) {
    //     state = const AsyncValue.loading();
    //     return;
    //   }
    //   yield event.parsedData?.Viewer;
    // });

    state = const AsyncValue.loading();
    stream.fetchResults();
    ref.keepAlive();

    await for (final data in stream.stream) {
      if (data.isLoading) {
        state = const AsyncValue.loading();
        return;
      }
      yield data.parsedData?.Viewer;
    }
  }

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
    var hmh = await client.value.mutate$UpdateUser(
      Options$Mutation$UpdateUser(variables: options),
    );
    state = AsyncValue.data(hmh.parsedData!.UpdateUser!);
  }
}

var userProvider =
    AutoDisposeStreamNotifierProvider<UserNotifier, Fragment$ThisUser?>(() {
  // ref.keepAlive();
  return UserNotifier();
});
