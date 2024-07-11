import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/media/__generated__/staff.req.gql.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class MediaStaffScreen extends StatelessWidget {
  const MediaStaffScreen(
      {super.key, @PathParam.inherit("id") required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest: GMediaStaffReq(
        (b) => b
          ..requestId = "mediaStaff$mediaId"
          ..vars.mediaId = mediaId,
      ),
      builder: (context, response, error, refetch) => GraphqlPagination(
        pageInfo: response!.data!.Media!.staff!.pageInfo!,
        req: (nextPage) =>
            (response.operationRequest as GMediaStaffReq).rebuild(
          (p0) => p0
            ..vars.page = nextPage
            ..updateResult = (previous, result) => result?.rebuild((p0) => p0
              ..Media.staff.edges.insertAll(
                  0,
                  previous?.Media?.staff?.edges?.whereNot((p0) =>
                          result.Media?.staff?.edges?.contains(p0) ?? false) ??
                      [])),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            var staff = response.data!.Media!.staff!.edges![index]!;

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
          separatorBuilder: (context, index) => const SizedBox(
            height: 5,
          ),
          itemCount: response.data!.Media!.staff!.edges!.length,
        ),
      ),
    );
  }
}
