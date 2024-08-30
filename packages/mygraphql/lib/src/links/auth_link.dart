import "dart:async";

import "package:gql_exec/gql_exec.dart";
import "package:gql_link/gql_link.dart";

class AuthLink extends Link {
  final FutureOr<String?> Function() getToken;
  final String authHeader;
  // final Link _link;

  AuthLink({required this.getToken, required this.authHeader});

  Future<Request> transform(Request request) async {
    var token = await getToken();
    return request.updateContextEntry<HttpLinkHeaders>(
      (headers) => HttpLinkHeaders(
        headers: <String, String>{
          ...headers?.headers ?? <String, String>{},
          if (token != null) authHeader: token,
        },
      ),
    );
  }

  @override
  Stream<Response> request(Request request, [forward]) async* {
    var req = await transform(request);

    yield* forward!(req);
  }
}
