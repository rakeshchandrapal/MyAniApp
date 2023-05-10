import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/profile/social/followers/followers.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';

class Followers extends HookWidget {
  const Followers({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var hook = useQuery$Followers(
      Options$Query$Followers(
        variables: Variables$Query$Followers(id: userId),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => ScrollToTop(
        builder: (scrollController) => Pagination(
          hook: hook,
          opts: FetchMoreOptions$Query$Followers(
            variables: Variables$Query$Followers(
                id: userId,
                page: (result.Page!.pageInfo!.currentPage ?? 1) + 1),
            updateQuery: (previousResultData, fetchMoreResultData) {
              var list = [
                ...previousResultData!['Page']!['followers'],
                ...fetchMoreResultData!['Page']!['followers'],
              ];
              fetchMoreResultData['Page']!['followers'] = list;
              return fetchMoreResultData;
            },
          ),
          pageInfo: result.Page!.pageInfo!,
          child: ListView.builder(
            controller: scrollController,
            padding: const EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              var item = result.Page!.followers![index]!;

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      CachedNetworkImageProvider(item.avatar!.large!),
                ),
                title: Text(item.name),
                onTap: () => context.router.push(ProfileRoute(name: item.name)),
              );
            },
            itemCount: result.Page!.followers!.length,
          ),
        ),
      ),
    );
  }
}
