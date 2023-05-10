import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/profile/social/social.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';
import 'package:myaniapp/ui/pages/profile/social/followers/followers.dart';

class Social extends HookWidget {
  const Social({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var tabs = useTabController(initialLength: 2);

    return Column(
      children: [
        TabBar(
          controller: tabs,
          dividerColor: Colors.transparent,
          tabs: const [
            Tab(text: 'Following'),
            Tab(text: 'Followers'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabs,
            children: [
              Following(userId: userId),
              Followers(userId: userId),
            ],
          ),
        ),
      ],
    );
  }
}

class Following extends HookWidget {
  const Following({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var hook = useQuery$Following(
      Options$Query$Following(
        variables: Variables$Query$Following(id: userId),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => ScrollToTop(
        builder: (scrollController) => Pagination(
          hook: hook,
          opts: FetchMoreOptions$Query$Following(
            variables: Variables$Query$Following(
                id: userId,
                page: (result.Page!.pageInfo!.currentPage ?? 1) + 1),
            updateQuery: (previousResultData, fetchMoreResultData) {
              var list = [
                ...previousResultData!['Page']!['following'],
                ...fetchMoreResultData!['Page']!['following'],
              ];
              fetchMoreResultData['Page']!['following'] = list;
              return fetchMoreResultData;
            },
          ),
          pageInfo: result.Page!.pageInfo!,
          child: ListView.builder(
            controller: scrollController,
            padding: const EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              var item = result.Page!.following![index]!;

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      CachedNetworkImageProvider(item.avatar!.large!),
                ),
                title: Text(item.name),
                onTap: () => context.router.push(ProfileRoute(name: item.name)),
              );
            },
            itemCount: result.Page!.following!.length,
          ),
        ),
      ),
    );
  }
}
