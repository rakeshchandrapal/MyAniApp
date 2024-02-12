import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:gql_exec/src/error.dart';
import 'package:myaniapp/main.dart';

class GraphqlError extends StatelessWidget {
  final (List<GraphQLError>?, LinkException?) exception;

  const GraphqlError({super.key, required this.exception});

  @override
  Widget build(BuildContext context) {
    if (exception.$2 is ServerException) {
      // print(exception.$2);
      logger.e((exception.$2! as ServerException)
          .parsedResponse
          ?.response['errors']
          ?.first);

      // logger.e(exception);
    }
    return SingleChildScrollView(child: SelectableText(exception.toString()));
  }
}
