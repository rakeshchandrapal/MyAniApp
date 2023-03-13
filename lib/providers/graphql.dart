import 'package:MyAniApp/graphql_client.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlProvider extends StatefulWidget {
  final Widget child;
  const GraphQlProvider({super.key, required this.child});

  @override
  State<GraphQlProvider> createState() => _GraphQlProviderState();
}

class _GraphQlProviderState extends State<GraphQlProvider> {
  static dynamic _client;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_client != null) {
      return GraphQLProvider(
        client: _client,
        child: widget.child,
      );
    } else {
      client().then((value) => setState(() {
            _client = value;
          }));
    }
    return Container();
  }
}
