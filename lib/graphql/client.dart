import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import "package:gql_exec/gql_exec.dart" hide Operation;
import 'package:gql_http_link/gql_http_link.dart';
// import 'package:hive/hive.dart';
// *** If using flutter ***
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Client> initClient() async {
  // Hive.init('hive_data');
  // OR, if using flutter
  await Hive.initFlutter();

  final box = await Hive.openBox("graphql");

  final store = HiveStore(box);

  final cache = Cache(store: store);

  final HttpLink httpLink = HttpLink(
    'https://graphql.anilist.co',
  );

  final HttpAuthLink authLink = HttpAuthLink(
    getToken: () async {
      var instance = await SharedPreferences.getInstance();
      return instance.getString("token");
    },
  );

  final Link link = authLink.concat(httpLink);

  final client = Client(
    link: link,
    cache: cache,
    defaultFetchPolicies: {
      OperationType.query: FetchPolicy.CacheAndNetwork,
    },
  );

  return client;
}

class HttpAuthLink extends Link {
  final Future<String?> Function() getToken;

  HttpAuthLink({
    required this.getToken,
  });

  Future<Request> transformRequest(Request request) async {
    final token = await getToken();

    return request.updateContextEntry<HttpLinkHeaders>(
      (headers) => HttpLinkHeaders(
        headers: <String, String>{
          ...headers?.headers ?? <String, String>{},
          if (token != null) "Authorization": token,
        },
      ),
    );
  }

  @override
  Stream<Response> request(Request request, [forward]) async* {
    final req = await transformRequest(request);

    yield* forward!(req);
  }
}
