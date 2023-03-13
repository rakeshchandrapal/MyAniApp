import 'package:MyAniApp/graphql/Viewer.graphql.dart';
import 'package:MyAniApp/graphql_client.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class User with ChangeNotifier {
  Fragment$ThisUser? _user;

  Fragment$ThisUser? get user => _user;

  User() {
    client().then((value) async {
      var viewer = await value.value.query$FetchViewer(
        Options$Query$FetchViewer(fetchPolicy: FetchPolicy.noCache),
      );
      _user = viewer.parsedData!.Viewer!;
      notifyListeners();
    });
  }

  Future<Fragment$ThisUser?> update() async {
    var i = await client();
    var viewer = await i.value.query$FetchViewer(
      Options$Query$FetchViewer(fetchPolicy: FetchPolicy.noCache),
    );
    if (viewer.parsedData == null) return _user;
    _user = viewer.parsedData!.Viewer!;
    notifyListeners();
    return viewer.parsedData!.Viewer!;
  }

  void resetNotifCount() {
    _user = _user!.copyWith(unreadNotificationCount: 0);
    notifyListeners();
  }

  void updateSettings([Variables$Mutation$UpdateUser? options]) async {
    _user = _user!.copyWith(
      options: _user!.options!.copyWith(
        displayAdultContent:
            options?.displayAdultContent ?? _user?.options?.displayAdultContent,
        airingNotifications:
            options?.airingNotifications ?? _user?.options?.airingNotifications,
        activityMergeTime:
            options?.activityMergeTime ?? _user?.options?.activityMergeTime,
        restrictMessagesToFollowing: options?.restrictMessagesToFollowing ??
            _user?.options?.restrictMessagesToFollowing,
        staffNameLanguage:
            options?.staffNameLanguage ?? _user?.options?.staffNameLanguage,
        titleLanguage: options?.titleLanguage ?? _user?.options?.titleLanguage,
      ),
      mediaListOptions: _user!.mediaListOptions!.copyWith(
        scoreFormat:
            options?.scoreFormat ?? _user?.mediaListOptions?.scoreFormat,
      ),
    );
    notifyListeners();
    var c = await client();
    var hmh = await c.value.mutate$UpdateUser(
      Options$Mutation$UpdateUser(variables: options),
    );
    _user = hmh.parsedData!.UpdateUser!;
    // notifyListeners();
  }
}
