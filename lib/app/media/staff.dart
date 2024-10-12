import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/media/staff.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class MediaStaffScreen extends HookWidget {
  const MediaStaffScreen(
      {super.key, @PathParam.inherit("id") required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      mediaStaffQuery,
      variables: Variables$Query$MediaStaff(mediaId: mediaId).toJson(),
      parseData: Query$MediaStaff.fromJson,
      mergeResults: defaultMergeResults("Media.staff.edges"),
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () => PaginationView.list(
        pageInfo: snapshot.parsedData!.Media!.staff!.pageInfo!,
        req: (nextPage) => fetchMore(
            variables:
                Variables$Query$MediaStaff.fromJson(snapshot.request!.variables)
                    .copyWith(page: nextPage)
                    .toJson()),
        builder: (context, index) {
          var staff = snapshot.parsedData!.Media!.staff!.edges![index]!;

          return Card.outlined(
            child: InkWellImage(
              onTap: () => context.pushRoute(
                StaffRoute(id: staff.node!.id, placeholder: staff.node),
              ),
              borderRadius: imageRadius,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: imageRadius,
                    child: CachedImage(
                      staff.node!.image!.large!,
                      height: 150,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          staff.node!.name!.userPreferred!,
                          style: context.theme.textTheme.labelLarge,
                        ),
                        if (staff.role != null)
                          Text(
                            staff.role!,
                            style: context.theme.textTheme.labelMedium,
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: snapshot.parsedData!.Media!.staff!.edges!.length,
      ),
    );
  }
}
