import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

ValueNotifier<GraphQLClient> getClient() {
  final HttpLink httpLink = HttpLink(
    'https://graphql.anilist.co',
  );

  final AuthLink authLink = AuthLink(
    // getToken: () async => null,
    // OR
    getToken: () async {
      var instance = await SharedPreferences.getInstance();
      return instance.getString(Setting.token.setting);
    },
  );

  final Link link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  return client;
}

var client = getClient();
