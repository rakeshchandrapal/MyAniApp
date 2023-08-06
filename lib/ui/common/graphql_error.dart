import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/main.dart';

class GraphqlError extends StatelessWidget {
  final OperationException exception;

  const GraphqlError({super.key, required this.exception});

  @override
  Widget build(BuildContext context) {
    if (exception.linkException is ServerException) {
      logger.e((exception.linkException! as ServerException)
          .parsedResponse
          ?.response['errors']
          .first);

      logger.e(exception);
    }
    return SingleChildScrollView(child: SelectableText(exception.toString()));
  }
}
