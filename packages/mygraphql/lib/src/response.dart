import 'package:gql_exec/gql_exec.dart';
import 'package:gql_link/gql_link.dart';
import 'package:mygraphql/src/request.dart';

class GQLResponseParser extends ResponseParser {
  const GQLResponseParser();

  @override
  Response parseResponse(Map<String, dynamic> body) {
    return Response(
      errors: (body["errors"] as List?)
          ?.map(
            (dynamic error) => parseError(error as Map<String, dynamic>),
          )
          .toList(),
      data: body["data"] as Map<String, dynamic>?,
      response: body,
      context: Context().withEntry(
        ResponseExtensions(
          body["extensions"],
        ),
      ),
    );
  }
}

class GQLResponse<T> extends Response {
  final bool _loading;
  final T? parsedData;
  final GQLRequest<T>? request;
  final LinkException? linkError;
  final Object? rawError;

  bool get loading => errors == null && _loading;

  GQLResponse({
    required super.response,
    required this.request,
    super.errors,
    super.data,
    super.context = const Context(),
    this.parsedData,
    this.linkError,
    this.rawError,
  }) : _loading = false;

  GQLResponse.loading({super.response = const {}, this.request})
      : _loading = true,
        parsedData = null,
        linkError = null,
        rawError = null;
}
