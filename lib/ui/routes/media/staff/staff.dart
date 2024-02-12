import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/ui/routes/media/staff/__generated__/staff.data.gql.dart';
import 'package:myaniapp/ui/routes/media/staff/__generated__/staff.req.gql.dart';

class MediaStaffPage extends StatefulWidget {
  const MediaStaffPage({super.key, required this.id});

  final int id;

  @override
  State<MediaStaffPage> createState() => _MediaStaffPageState();
}

class _MediaStaffPageState extends State<MediaStaffPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ScrollToTop(
      builder: (scrollController) => GQLRequest(
        operationRequest: GMediaStaffReq((b) => b
          ..requestId = "mediaStaff"
          ..vars.mediaId = widget.id),
        builder: (context, response, error, refetch) => GraphqlPagination(
          pageInfo: response!.data!.Media!.staff!.pageInfo!,
          req: (nextPage) =>
              (response.operationRequest as GMediaStaffReq).rebuild(
            (b) => b
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Media.staff.edges.insertAll(
                    0,
                    previous?.Media?.staff?.edges?.whereNot((p0) =>
                            result.Media?.staff?.edges?.contains(p0) ??
                            false) ??
                        [])),
          ),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              var staff = response.data!.Media!.staff!.edges![index]!;

              return StaffCard(
                staff: staff,
              );
            },
            itemCount: response.data!.Media!.staff!.edges!.length,
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class StaffCard extends StatelessWidget {
  const StaffCard({
    super.key,
    required this.staff,
  });

  final GMediaStaffData_Media_staff_edges staff;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Theme.of(context).colorScheme.surfaceVariant,
          width: 1,
        ),
      ),
      elevation: 1,
      surfaceTintColor: Theme.of(context).colorScheme.surfaceVariant,
      child: InkWell(
        onTap: () => context.push('/staff/${staff.node!.id}'),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 90,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: CImage(
                    imageUrl: staff.node!.image!.large!,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(staff.node!.name!.userPreferred!),
                    if (staff.role != null)
                      Text(
                        staff.role!,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(fontSize: 10),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
