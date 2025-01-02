import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/user_social.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';

class UserSocialTab extends HookWidget {
  const UserSocialTab({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      userSocialsQuery,
      variables: Variables$Query$UserSocials(id: id).toJson(),
      parseData: Query$UserSocials.fromJson,
    ));

    return GQLWidget(
      key: Key(id.toString()),
      refetch: refetch,
      response: snapshot,
      builder: () {
        // this is so state isn't managed by UserSocialsPage which would make a new request switching between following and follower
        return SocialsView(
          data: snapshot.parsedData!,
          request: snapshot.request!,
          fetchMore: fetchMore,
        );
      },
    );
  }
}

class SocialsView extends StatefulWidget {
  const SocialsView(
      {super.key,
      required this.data,
      required this.request,
      required this.fetchMore});

  final Query$UserSocials data;
  final GQLRequest request;
  final QueryHookFetchMore fetchMore;

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
        var vars =
            Variables$Query$UserSocials.fromJson(widget.request.variables);

        if (pageIdx == 0) {
          return widget.fetchMore(
              variables: vars.copyWith(followingPage: nextPage).toJson(),
              mergeResults: defaultMergeResults("following.following"));
        }
        return widget.fetchMore(
            variables: vars.copyWith(followersPage: nextPage).toJson(),
            mergeResults: defaultMergeResults("followers.followers"));
      },
      // req: (nextPage) {
      //   return widget.request.rebuild((b) {
      //     if (pageIdx == 0) {
      //       b.vars.followingPage = nextPage;
      //     } else {
      //       b.vars.followersPage = nextPage;
      //     }

      //     b.updateResult = (prev, result) => result!.rebuild((p0) => p0
      //       ..following.following.insertAll(0, prev?.following?.following ?? [])
      //       ..followers
      //           .followers
      //           .insertAll(0, prev?.followers?.followers ?? []));

      //     return b;
      //   });
      // },
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
                  onTap: () => context.push(Routes.user(user.name),
                      extra: {"placeholder": user}),
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
                  onTap: () => context.push(Routes.user(user.name),
                      extra: {"placeholder": user}),
                );
              },
              itemCount: widget.data.followers!.followers!.length,
            )
        ],
      ),
    );
  }
}
