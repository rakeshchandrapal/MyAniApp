import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/providers/user_profile.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/user/social/__generated__/social.req.gql.dart';

class UserSocialPage extends ConsumerStatefulWidget {
  const UserSocialPage({
    super.key,
    required this.name,
  });

  final String name;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserSocialPageState();
}

class _UserSocialPageState extends ConsumerState<UserSocialPage>
    with AutomaticKeepAliveClientMixin {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var user = ref.watch(userProfileProvider(widget.name));

    return GQLRequest(
      key: Key("$isFollowing"),
      operationRequest: GSocialsReq((b) => b
        ..requestId = "userSocials"
        ..vars.id = user.value!.id),
      builder: (context, response, error, refetch) => GraphqlPagination(
        // fetchMore: (nextPage) => fetchMore!(
        //   FetchMoreOptions$Query$Socials(
        //     updateQuery: (previousResultData, fetchMoreResultData) {
        //       var following = [
        //         ...previousResultData!['following']['following'],
        //         ...fetchMoreResultData!['following']['following']
        //       ];
        //       var followers = [
        //         ...previousResultData['followers']['followers'],
        //         ...fetchMoreResultData['followers']['followers']
        //       ];

        //       fetchMoreResultData['following']['following'] = following;
        //       fetchMoreResultData['followers']['followers'] = followers;

        //       return fetchMoreResultData;
        //     },
        //     variables: isFollowing
        //         ? Variables$Query$Socials(
        //             followingPage: nextPage,
        //             id: user.value!.id,
        //           )
        //         : Variables$Query$Socials(
        //             followersPage: nextPage,
        //             id: user.value!.id,
        //           ),
        //   ),
        // ),
        req: (nextPage) =>
            (response.operationRequest as GSocialsReq).rebuild((b) {
          if (isFollowing) {
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
        }),
        pageInfo: isFollowing
            ? response!.data!.following!.pageInfo!
            : response!.data!.followers!.pageInfo!,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SegmentedButton(
                  segments: const [
                    ButtonSegment(value: false, label: Text('Followers')),
                    ButtonSegment(value: true, label: Text('Following')),
                  ],
                  selected: {isFollowing},
                  onSelectionChanged: (p0) =>
                      setState(() => isFollowing = p0.first),
                ),
              ),
            ),
            if (isFollowing)
              SliverList.builder(
                itemBuilder: (context, index) {
                  var user = response.data!.following!.following![index]!;

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          CachedNetworkImageProvider(user.avatar!.large!),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(user.name),
                    onTap: () => context.push('/user/${user.name}/overview'),
                  );
                },
                itemCount: response.data!.following!.following!.length,
              )
            else
              SliverList.builder(
                itemBuilder: (context, index) {
                  var user = response.data!.followers!.followers![index]!;

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          CachedNetworkImageProvider(user.avatar!.large!),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(user.name),
                    onTap: () => context.push('/user/${user.name}/overview'),
                  );
                },
                itemCount: response.data!.followers!.followers!.length,
              ),
            if (response.loading)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
