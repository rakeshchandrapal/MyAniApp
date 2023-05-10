import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql.g.dart';

@Riverpod(keepAlive: true)
class GraphQL extends _$GraphQL {
  reset() {
    var settings = ref.watch(settingsProvider);
    Link link = HttpLink('https://graphql.anilist.co');

    var token = settings.token;
    if (token != null) {
      link = HttpLink(
        'https://graphql.anilist.co',
        defaultHeaders: {'Authorization': 'Bearer $token'},
      );
    }

    state = AsyncData(ValueNotifier(GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
    )));
  }

  @override
  FutureOr<ValueNotifier<GraphQLClient>> build() async {
    await initHiveForFlutter();
    var settings = ref.watch(settingsProvider);
    Link link = HttpLink('https://graphql.anilist.co');

    var token = settings.token;
    if (token != null) {
      link = HttpLink(
        'https://graphql.anilist.co',
        defaultHeaders: {'Authorization': 'Bearer $token'},
      );
    }

    return ValueNotifier(GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
    ));
  }
}

class GraphQlProvider extends ConsumerWidget {
  const GraphQlProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var graphql = ref.watch(graphQLProvider);

    return graphql.when(
      data: (data) => GraphQLProvider(
        client: data,
        child: child,
      ),
      error: (error, stackTrace) => const SizedBox(),
      loading: () => const SizedBox(),
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
    );
  }
}
