import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/user/__generated__/social.data.gql.dart';
import 'package:myaniapp/app/user/__generated__/social.req.gql.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class UserSocialScreen extends StatelessWidget {
  const UserSocialScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      key: Key(id.toString()),
      operationRequest: GUserSocialsReq(
        (b) => b
          ..requestId = "userSocials$id"
          ..vars.id = id,
      ),
      builder: (context, response, error, refetch) {
        // this is so state isn't managed by UserSocialsPage which would make a new request switching between following and follower
        return SocialsView(
          data: response!.data!,
          req: response.operationRequest as GUserSocialsReq,
        );
      },
    );
  }
}

class SocialsView extends StatefulWidget {
  const SocialsView({super.key, required this.data, required this.req});

  final GUserSocialsData data;
  final GUserSocialsReq req;

  @override
  State<SocialsView> createState() => _SocialsViewState();
}

class _SocialsViewState extends State<SocialsView> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: pageIdx == 0
          ? widget.data.following!.pageInfo!
          : widget.data.followers!.pageInfo!,
      req: (nextPage) {
        return widget.req.rebuild((b) {
          if (pageIdx == 0) {
            b.vars.followingPage = nextPage;
          } else {
            b.vars.followersPage = nextPage;
          }

          b.updateResult = (prev, result) => result!.rebuild((p0) => p0
            ..following.following.insertAll(0, prev?.following?.following ?? [])
            ..followers
                .followers
                .insertAll(0, prev?.followers?.followers ?? []));

          return b;
        });
      },
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: SliverToBoxAdapter(
              child: SegmentedButton(
                onSelectionChanged: (p0) => setState(() => pageIdx = p0.first),
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text("Following"),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text("Followers"),
                  ),
                ],
                selected: {pageIdx},
              ),
            ),
          ),
          if (pageIdx == 0)
            SliverList.builder(
              itemBuilder: (context, index) {
                var user = widget.data.following!.following![index]!;

                return ListTile(
                  leading: ListTileCircleAvatar(url: user.avatar!.large!),
                  title: Text(user.name),
                  onTap: () => context.pushRoute(UserRoute(
                    name: user.name,
                    placeholder: user,
                  )),
                );
              },
              itemCount: widget.data.following!.following!.length,
            )
          else
            SliverList.builder(
              itemBuilder: (context, index) {
                var user = widget.data.followers!.followers![index]!;

                return ListTile(
                  leading: ListTileCircleAvatar(url: user.avatar!.large!),
                  title: Text(user.name),
                  onTap: () => context.pushRoute(UserRoute(
                    name: user.name,
                    placeholder: user,
                  )),
                );
              },
              itemCount: widget.data.followers!.followers!.length,
            )
        ],
      ),
    );
  }
}
