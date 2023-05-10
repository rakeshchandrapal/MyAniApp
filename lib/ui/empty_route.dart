import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/providers/graphql.dart';

@RoutePage()
class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQlProvider(
      child: AutoRouter(
        navigatorObservers: () => [
          HeroController(),
        ],
      ),
    );
  }
}
