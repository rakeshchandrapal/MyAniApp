import 'package:ferry/ferry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated__/viewer.data.gql.dart';
import 'package:myaniapp/graphql/__generated__/viewer.req.gql.dart';
import 'package:myaniapp/graphql/__generated__/viewer.var.gql.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/settings.dart';

final userProvider =
    StreamProvider.autoDispose<OperationResponse<GViewerData, GViewerVars>>(
        (ref) async* {
  var token = ref.watch(settingsProvider.select((value) => value.token));
  var stream = client
      .request(GViewerReq(
        (b) => b..requestId = "currentUser",
      ))
      .distinct();

  if (token == null) {
    yield OperationResponse(
      operationRequest: GViewerReq(
        (b) => b..requestId = "currentUser",
      ),
    );
  }

  await for (var s in stream) {
    yield s;
  }
});
