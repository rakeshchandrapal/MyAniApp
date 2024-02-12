import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/ui/common/comment/__generated__/like.req.gql.dart';

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
  final GLikeableType type;

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
  final GLikeableType type;

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest: GLikesReq((b) => b
        ..vars.id = id
        ..vars.type = type),
      builder: (context, response, error, refetch) {
        if (response!.data!.Page!.likes!.isEmpty) {
          return const Center(
            child: Text('No likes'),
          );
        }

        return ListView.builder(
          itemBuilder: (context, index) {
            var user = response.data!.Page!.likes![index]!;

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
          itemCount: response.data!.Page!.likes!.length,
        );
      },
    );
  }
}
