import 'package:myaniapp/graphql/__generated__/viewer.data.gql.dart';
import 'package:myaniapp/graphql/__generated__/viewer.req.gql.dart';
import 'package:myaniapp/graphql/__generated__/viewer.var.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
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

class UserNotifier extends AutoDisposeStreamNotifier<GThisUser?> {
  @override
  Stream<GThisUser?> build() async* {
    ref.watch(settingsProvider);

    // var stream = client.watchQuery$Viewer(
    //   WatchOptions$Query$Viewer(
    //     pollInterval: const Duration(minutes: 30),
    //     fetchPolicy: FetchPolicy.networkOnly,
    //     cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
    //   ),
    // );

    var stream = ref.read(ferryClientProvider).request(GViewerReq());

    // stream.stream.listen((event) {
    //   if (event.isLoading && event.parsedData == null) {
    //     state = const AsyncValue.loading();
    //     return;
    //   }
    //   yield event.parsedData?.Viewer;
    // });

    state = const AsyncValue.loading();
    // stream.fetchResults();
    ref.keepAlive();

    await for (final data in stream) {
      if (data.loading) {
        state = const AsyncValue.loading();
        return;
      }

      yield data.data?.Viewer;
    }
  }

  // void resetNotifCount() {
  //   state = AsyncValue.data(state.value!..unreadNotificationCount = 0);
  // }

  void updateSettings(GUpdateUserVarsBuilder options) {
    // GUpdateUserVarsBuilder();
    // state = AsyncValue.data(state.value?.)
    ref
        .read(ferryClientProvider)
        .request(GUpdateUserReq(
          (b) => b..vars.replace(options.build()),
        ))
        .first
        .then((value) => state = AsyncValue.data(value.data!.UpdateUser!));
  }

  // void updateSettings([Variables$Mutation$UpdateUser? options]) async {
  //   state = AsyncValue.data(state.value?.copyWith(
  //     options: state.value!.options?.copyWith(
  //       displayAdultContent: options?.displayAdultContent ??
  //           state.value?.options?.displayAdultContent,
  //       airingNotifications: options?.airingNotifications ??
  //           state.value?.options?.airingNotifications,
  //       activityMergeTime: options?.activityMergeTime ??
  //           state.value?.options?.activityMergeTime,
  //       restrictMessagesToFollowing: options?.restrictMessagesToFollowing ??
  //           state.value?.options?.restrictMessagesToFollowing,
  //       staffNameLanguage: options?.staffNameLanguage ??
  //           state.value?.options?.staffNameLanguage,
  //       titleLanguage:
  //           options?.titleLanguage ?? state.value?.options?.titleLanguage,
  //     ),
  //     mediaListOptions: state.value?.mediaListOptions!.copyWith(
  //       scoreFormat:
  //           options?.scoreFormat ?? state.value?.mediaListOptions?.scoreFormat,
  //     ),
  //   ));
  //   // notifyListeners();
  //   var hmh = await client.value.mutate$UpdateUser(
  //     Options$Mutation$UpdateUser(variables: options),
  //   );
  //   state = AsyncValue.data(hmh.parsedData!.UpdateUser!);
  // }
}

var userProvider =
    AutoDisposeStreamNotifierProvider<UserNotifier, GThisUser?>(() {
  // ref.keepAlive();
  return UserNotifier();
});
