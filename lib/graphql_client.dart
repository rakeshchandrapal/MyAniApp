import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/routes.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

Future<ValueNotifier<GraphQLClient>> getClient() async {
  await initHiveForFlutter();
  Link link = HttpLink('https://graphql.anilist.co');
  var token = rootNavigatorKey.currentContext?.read<SettingsProvider>().token;
  // var settings = await SharedPreferences.getInstance();
  // var token = settings.getString('token');
  if (token != null) {
    link = HttpLink(
      'https://graphql.anilist.co',
      defaultHeaders: {'Authorization': 'Bearer $token'},
    );
  }

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
    ),
  );

  return client;
}

var _client = getClient();

Future<ValueNotifier<GraphQLClient>> client({bool? updated}) {
  if (updated == true) _client = getClient();
  return _client;
}

// var query = r'''
//   query ($id: Int) {
//     Media (id: $id, type: ANIME) {
//       id
//       title {
//         romaji
//         english
//         native
//       }
//     }
//   }
// ''';

// var queries = {
//   'getAnimeById': (Map<String, dynamic> variables) =>
//       QueryOptions(document: gql(query), variables: variables)
// };

// void getAnime(String id) async {
//   final GraphQLClient _client = getClient();
//   final QueryOptions options = QueryOptions(
//     document: gql(query),
//     variables: {
//       'id': id,
//     },
//   );

//   final QueryResult result = await _client.query(options);

//   if (result.hasException) {
//     print(result.exception.toString());
//   }
// }

// class Title {
//   final String? romaji;
//   final String? english;
//   final String? native;

//   const Title(this.romaji, this.native, this.english);
// }

// class Anime {
//   final int id;
//   final Title title;

//   const Anime(this.id, this.title);
// }

// class Client {
//   final _client;
//   Client(this._client) {
//     final Link _link = HttpLink(
//       'https://api.github.com/graphql',
//       defaultHeaders: {
//         'Authorization': 'Bearer $YOUR_PERSONAL_ACCESS_TOKEN',
//       },
//     );

//     this._client = GraphQLClient(
//       cache: GraphQLCache(),
//       link: _link,
//     );
//   }
// }
