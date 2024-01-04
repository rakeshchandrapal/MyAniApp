import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/common/comment/like.graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/utils/graphql.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.id,
    required this.type,
  });

  final Widget icon;
  final VoidCallback? onPressed;
  final int id;
  final Enum$LikeableType type;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => showModalBottomSheet(
        context: context,
        builder: (context) => LikesSheet(
          id: id,
          type: type,
        ),
      ),
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}

class LikesSheet extends StatelessWidget {
  const LikesSheet({super.key, required this.id, required this.type});

  final int id;
  final Enum$LikeableType type;

  @override
  Widget build(BuildContext context) {
    return Query$Likes$Widget(
      options: Options$Query$Likes(
        variables: Variables$Query$Likes(id: id, type: type),
      ),
      builder: queryBuilder(
        (result, [fetchMore, refetch]) {
          if (result.parsedData!.Page!.likes!.isEmpty) {
            return const Center(
              child: Text('No likes'),
            );
          }

          return Pagination(
            fetchMore: fetchMore!,
            opts: FetchMoreOptions$Query$Likes(
              updateQuery: (previousResultData, fetchMoreResultData) {
                var list = [
                  ...previousResultData!['Page']['likes'],
                  ...fetchMoreResultData!['Page']['likes'],
                ];

                fetchMoreResultData['Page']['likes'] = list;

                return fetchMoreResultData;
              },
              variables: Variables$Query$Likes(
                page: (result.parsedData!.Page!.pageInfo!.currentPage ?? 1) + 1,
              ),
            ),
            pageInfo: result.parsedData!.Page!.pageInfo!,
            child: ListView.builder(
              itemBuilder: (context, index) {
                var user = result.parsedData!.Page!.likes![index]!;

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
              itemCount: result.parsedData!.Page!.likes!.length,
            ),
          );
        },
      ),
    );
  }
}
