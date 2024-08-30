import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/app/studio/studio.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class StudioScreen extends HookWidget {
  const StudioScreen({super.key, @pathParam required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      studioQuery,
      variables:
          Variables$Query$Studio(id: id, sort: [Enum$MediaSort.START_DATE_DESC])
              .toJson(),
      parseData: Query$Studio.fromJson,
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      loading: Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: Scaffold(
        body: GraphqlError(
          exception: (snapshot.errors, snapshot.linkError),
          refetch: refetch,
        ),
      ),
      builder: () => Scaffold(
        appBar: AppBar(
          title: Text(snapshot.parsedData!.Studio!.name),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: GridCard.listRatio,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            var anime = snapshot.parsedData!.Studio!.media!.nodes![index]!;

            return GridCard(
              image: anime.coverImage!.extraLarge!,
              title: anime.title!.userPreferred,
              blur: anime.isAdult ?? false,
              onTap: () => context.pushRoute(MediaRoute(
                id: anime.id,
                placeholder: anime,
              )),
              onLongPress: () => MediaSheet.show(context, anime),
            );
          },
          itemCount: snapshot.parsedData!.Studio!.media!.nodes!.length,
        ),
      ),
    );
  }
}
