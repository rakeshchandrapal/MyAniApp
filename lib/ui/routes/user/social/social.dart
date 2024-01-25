import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/user/social/social.graphql.dart';
import 'package:myaniapp/providers/user_profile.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/utils/graphql.dart';

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

    return Query$Socials$Widget(
      options: Options$Query$Socials(
        variables: Variables$Query$Socials(id: user.value!.id),
      ),
      builder: queryBuilder(
        (result, [fetchMore, refetch]) => GraphqlPagination(
          fetchMore: (nextPage) => fetchMore!(
            FetchMoreOptions$Query$Socials(
              updateQuery: (previousResultData, fetchMoreResultData) {
                var following = [
                  ...previousResultData!['following']['following'],
                  ...fetchMoreResultData!['following']['following']
                ];
                var followers = [
                  ...previousResultData['followers']['followers'],
                  ...fetchMoreResultData['followers']['followers']
                ];

                fetchMoreResultData['following']['following'] = following;
                fetchMoreResultData['followers']['followers'] = followers;

                return fetchMoreResultData;
              },
              variables: isFollowing
                  ? Variables$Query$Socials(
                      followingPage: nextPage,
                      id: user.value!.id,
                    )
                  : Variables$Query$Socials(
                      followersPage: nextPage,
                      id: user.value!.id,
                    ),
            ),
          ),
          pageInfo: isFollowing
              ? result.parsedData!.following!.pageInfo!
              : result.parsedData!.followers!.pageInfo!,
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
                    var user = result.parsedData!.following!.following![index]!;

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
                  itemCount: result.parsedData!.following!.following!.length,
                )
              else
                SliverList.builder(
                  itemBuilder: (context, index) {
                    var user = result.parsedData!.followers!.followers![index]!;

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
                  itemCount: result.parsedData!.followers!.followers!.length,
                ),
              if (result.isLoading)
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
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
