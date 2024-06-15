import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/studio/__generated__/studio.req.gql.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/widget.dart';

class StudioPage extends StatelessWidget {
  const StudioPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest: GStudioReq((b) => b
        ..requestId = "studio${id}Page"
        ..vars.id = int.parse(id)
        ..vars.sort.add(
              GMediaSort.START_DATE_DESC,
            )),
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (response?.graphqlErrors, response?.linkException),
        ),
      ),
      builder: (context, response, error, refetch) => Scaffold(
        appBar: AppBar(
          title: Text(response!.data!.Studio!.name),
        ),
        body: GraphqlPagination(
          pageInfo: response.data!.Studio!.media!.pageInfo!,
          req: (nextPage) => (response.operationRequest as GStudioReq).rebuild(
            (b) => b
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Studio.media.nodes.insertAll(
                    0,
                    previous?.Studio?.media?.nodes?.whereNot((p0) =>
                            result.Studio?.media?.nodes?.contains(p0) ??
                            false) ??
                        [])),
          ),
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: GridCard.listRatio,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              var anime = response.data!.Studio!.media!.nodes![index]!;

              return GridCard(
                image: anime.coverImage!.extraLarge!,
                title: anime.title!.userPreferred,
                blur: anime.isAdult ?? false,
                onTap: () => context
                    .push("/media/${anime.id}/info", extra: {"media": anime}),
                onLongPress: () => MediaSheet.show(context, anime),
              );
            },
            itemCount: response.data!.Studio!.media!.nodes!.length,
          ),
        ),
      ),
    );
  }
}
