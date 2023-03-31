import 'package:MyAniApp/graphql/Viewer.graphql.dart';
import 'package:MyAniApp/providers/graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user.g.dart';

// final Provider = FutureProvider<Fragment$ThisUser>((ref) async {
//   var viewer = await value.value.query$FetchViewer(
//     Options$Query$FetchViewer(fetchPolicy: FetchPolicy.noCache),
//   );
//   return viewer.parsedData!.Viewer!;
// });

@Riverpod(keepAlive: true)
Future<Fragment$ThisUser?> fetchCurrentUser(FetchCurrentUserRef ref) async {
  var clientc = ref.watch(graphQLProvider);
  if (clientc.value == null) return null;
  var req = await clientc.value!.value.query$FetchViewer();

  return req.parsedData?.Viewer;
}

@Riverpod(keepAlive: true)
class User extends _$User {
  @override
  FutureOr<Fragment$ThisUser?> build() async {
    var clientc = ref.watch(graphQLProvider);
    if (clientc.value == null) return null;
    var req = await clientc.value!.value.query$FetchViewer();

    return req.parsedData?.Viewer;
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
    var c = ref.read(graphQLProvider);
    if (c.value == null) return;
    var hmh = await c.value!.value.mutate$UpdateUser(
      Options$Mutation$UpdateUser(variables: options),
    );
    state = AsyncValue.data(hmh.parsedData!.UpdateUser!);
  }
}

// class User with ChangeNotifier {
//   Fragment$ThisUser? _user;

//   Fragment$ThisUser? get user => _user;

//   User() {
//     client().then((value) async {
//       var viewer = await value.value.query$FetchViewer(
//         Options$Query$FetchViewer(fetchPolicy: FetchPolicy.noCache),
//       );
//       _user = viewer.parsedData!.Viewer!;
//       notifyListeners();
//     });
//   }

//   Future<Fragment$ThisUser?> update() async {
//     var i = await client();
//     var viewer = await i.value.query$FetchViewer(
//       Options$Query$FetchViewer(fetchPolicy: FetchPolicy.noCache),
//     );
//     if (viewer.parsedData == null) return _user;
//     _user = viewer.parsedData!.Viewer!;
//     notifyListeners();
//     return viewer.parsedData!.Viewer!;
//   }

//   void resetNotifCount() {
//     _user = _user!.copyWith(unreadNotificationCount: 0);
//     notifyListeners();
//   }

//   void updateSettings([Variables$Mutation$UpdateUser? options]) async {
//     _user = _user!.copyWith(
//       options: _user!.options!.copyWith(
//         displayAdultContent:
//             options?.displayAdultContent ?? _user?.options?.displayAdultContent,
//         airingNotifications:
//             options?.airingNotifications ?? _user?.options?.airingNotifications,
//         activityMergeTime:
//             options?.activityMergeTime ?? _user?.options?.activityMergeTime,
//         restrictMessagesToFollowing: options?.restrictMessagesToFollowing ??
//             _user?.options?.restrictMessagesToFollowing,
//         staffNameLanguage:
//             options?.staffNameLanguage ?? _user?.options?.staffNameLanguage,
//         titleLanguage: options?.titleLanguage ?? _user?.options?.titleLanguage,
//       ),
//       mediaListOptions: _user!.mediaListOptions!.copyWith(
//         scoreFormat:
//             options?.scoreFormat ?? _user?.mediaListOptions?.scoreFormat,
//       ),
//     );
//     notifyListeners();
//     var c = await client();
//     var hmh = await c.value.mutate$UpdateUser(
//       Options$Mutation$UpdateUser(variables: options),
//     );
//     _user = hmh.parsedData!.UpdateUser!;
//     // notifyListeners();
//   }
// }
