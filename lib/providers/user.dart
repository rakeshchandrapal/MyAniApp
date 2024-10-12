import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/graphql/__gen/app/viewer.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:mygraphql/graphql.dart';

final userProvider = StreamProvider.autoDispose<GQLResponse<Query$Viewer>>(
  (ref) async* {
    var token = ref.watch(settingsProvider.select((value) => value.token));
    if (token == null) {
      yield GQLResponse(response: const {}, request: null);
    } else {
      var stream = c.query(GQLRequest(viewerQuery,
          parseData: Query$Viewer.fromJson, fetchPolicy: FetchPolicy.noCache));

      await for (var s in stream) {
        yield s;
      }
    }
  },
);
