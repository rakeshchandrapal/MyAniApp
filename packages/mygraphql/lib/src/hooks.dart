import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gql_link/gql_link.dart';
import 'package:mygraphql/graphql.dart';

// AsyncSnapshot<GQLResponse<T>> useCustomStream<T>(
//   Stream<T>? stream, {
//   T? initialData,
//   bool preserveState = true,
// }) {
//   return use(
//     StreamHook(
//       stream,
//       initialData: initialData,
//       preserveState: preserveState,
//     ),
//   );
// }

class StreamHook<T> extends Hook<QueryHookResult<T>> {
  const StreamHook({
    required this.request,
    required this.initialData,
    required this.client,
  });

  // final Stream<GQLResponse<T>>? stream;
  final GQLResponse<T> initialData;
  final GQLRequest<T> request;
  final GraphqlClient client;

  @override
  _StreamHookState<T> createState() => _StreamHookState<T>();
}

/// a clone of [StreamBuilderBase] implementation
class _StreamHookState<T> extends HookState<QueryHookResult<T>, StreamHook<T>> {
  StreamSubscription<GQLResponse<T>>? _subscription;
  late GQLResponse<T> _summary = initial;
  late Stream<GQLResponse<T>> stream;

  @override
  void initHook() {
    super.initHook();
    stream = hook.client.query(hook.request);
    _subscribe();
  }

  @override
  void didUpdateHook(StreamHook<T> oldWidget) {
    super.didUpdateHook(oldWidget);

    if (oldWidget.request.query != hook.request.query ||
        !jsonMapEquals(oldWidget.request.variables, hook.request.variables)) {
      stream = hook.client.query(hook.request);
      if (_subscription != null) {
        _unsubscribe();
        _summary = initial;
      }
      _subscribe();
    }
  }

  @override
  void dispose() {
    _unsubscribe();
  }

  void _subscribe() {
    _subscription = stream.listen(
      (data) {
        setState(() {
          _summary = data;
        });
      },
      onError: (Object error, StackTrace stackTrace) {
        setState(() {
          _summary = afterError(error, stackTrace);
        });
      },
    );
  }

  void _unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }

  @override
  QueryHookResult<T> build(BuildContext context) {
    return (snapshot: _summary, fetchMore: fetchMore, refetch: refetch);
  }

  Future<T?> refetch(
      [FetchPolicy fetchPolicy = FetchPolicy.networkOnly]) async {
    if (_summary.request == null) {
      throw ErrorDescription("Request isn't defined. unable to refetch");
    }

    try {
      setState(
          () => _summary = GQLResponse<T>.loading(request: _summary.request));

      var req = await hook.client
          .query(GQLRequest(
            _summary.request!.query,
            fetchPolicy: fetchPolicy,
            mergeResults: _summary.request!.mergeResults,
            parseData: _summary.request!.parseData,
            variables: _summary.request!.variables,
          ))
          .last;

      if (req.linkError != null) throw req.linkError!;

      setState(() => _summary = GQLResponse<T>(
            response: req.response,
            data: req.data,
            request: _summary.request,
            parsedData: _summary.request?.parseData?.call(req.data!),
          ));

      return req.parsedData;
    } catch (err) {
      setState(() => _summary = GQLResponse<T>(
          response: {},
          request: _summary.request,
          rawError: err,
          linkError: err is LinkException ? err : null));
    }
    return null;
  }

  FutureOr<T?> fetchMore(
      {required Map<String, dynamic> variables,
      Map<String, dynamic>? Function(Map<String, dynamic>? previousResult,
              Map<String, dynamic> result)?
          mergeResults}) async {
    if (_summary.request == null) {
      throw ErrorDescription("Request isn't defined. unable to fetch more");
    }

    try {
      var req = await hook.client
          .query(
            GQLRequest(
              _summary.request!.query,
              mergeResults: _summary.request!.mergeResults,
              parseData: _summary.request!.parseData,
              variables: variables,
              fetchPolicy: FetchPolicy.networkOnly,
            ),
          )
          .last;

      var data = mergeResults?.call(_summary.response, req.response) ??
          req.request?.mergeResults?.call(_summary.response, req.response) ??
          req.response;

      setState(() => _summary = GQLResponse(
            response: data,
            data: data['data'],
            request: GQLRequest(
              _summary.request!.query,
              mergeResults: _summary.request!.mergeResults,
              parseData: _summary.request!.parseData,
              variables: variables,
            ),
            parsedData: _summary.request?.parseData?.call(data['data']),
          ));

      return req.parsedData;
    } catch (err) {
      setState(() => _summary = GQLResponse(
          response: {},
          request: GQLRequest(
            _summary.request!.query,
            mergeResults: _summary.request!.mergeResults,
            parseData: _summary.request!.parseData,
            variables: variables,
          ),
          rawError: err,
          linkError: err is LinkException ? err : null));
    }
    return null;
  }

  GQLResponse<T> get initial => hook.initialData;

  AsyncSnapshot<GQLResponse<T>> afterConnected(
          AsyncSnapshot<GQLResponse<T>> current) =>
      current.inState(ConnectionState.waiting);

  AsyncSnapshot<GQLResponse<T>> afterData(GQLResponse<T> data) {
    return AsyncSnapshot<GQLResponse<T>>.withData(ConnectionState.active, data);
  }

  GQLResponse<T> afterError(Object error, StackTrace stackTrace) {
    return GQLResponse(
      response: {},
      request: _summary.request,
      linkError: error is LinkException ? error : null,
    );
    // return AsyncSnapshot<GQLResponse<T>>.withError(
    //   ConnectionState.active,
    //   error,
    //   stackTrace,
    // );
  }

  @override
  String get debugLabel => 'useStream';
}

typedef QueryHookFetchMore<T> = FutureOr<T?> Function({
  required Map<String, dynamic> variables,
  Map<String, dynamic>? Function(
          Map<String, dynamic>? previousResult, Map<String, dynamic> result)?
      mergeResults,
});

typedef QueryHookResult<T> = ({
  GQLResponse<T> snapshot,
  QueryHookFetchMore<T> fetchMore,
  QueryRefetch<T> refetch
});

typedef QueryRefetch<T> = Future<T?> Function([FetchPolicy fetchPolicy]);

// class QueryResult<T> {
//   final AsyncSnapshot<GQLResponse<T>> snapshot;
//   final void Function() fetchMore;

//   QueryResult({required this.snapshot, required this.fetchMore});
// }
