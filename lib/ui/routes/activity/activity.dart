import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/activity/activity.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/home/activities/activities.graphql.dart';
import 'package:myaniapp/ui/common/activity_card.dart';
import 'package:myaniapp/ui/common/banner_ad.dart';
import 'package:myaniapp/ui/common/comment.dart';
import 'package:myaniapp/ui/common/dialogs/delete.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/markdown_editor.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/utils/require_login.dart';

@RoutePage()
class ActivityPage extends ConsumerWidget {
  const ActivityPage({super.key, @pathParam required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        BannerAdSafeArea(
          child: Query$Activity$Widget(
            options: Options$Query$Activity(
              variables: Variables$Query$Activity(id: id),
            ),
            builder: (result, {fetchMore, refetch}) {
              if (result.isLoading && result.parsedData == null) {
                return Scaffold(
                  appBar: AppBar(),
                  body: const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                );
              } else if (result.hasException) {
                return Scaffold(
                  appBar: AppBar(),
                  body: GraphqlError(exception: result.exception!),
                );
              }

              return Pagination(
                fetchMore: fetchMore!,
                opts: FetchMoreOptions$Query$Activity(
                  updateQuery: (previousResultData, fetchMoreResultData) {
                    var list = [
                      ...previousResultData!['replies']['activityReplies'],
                      ...fetchMoreResultData!['replies']['activityReplies'],
                    ];

                    fetchMoreResultData['replies']['activityReplies'] = list;

                    return fetchMoreResultData;
                  },
                  variables: Variables$Query$Activity(
                    page: (result.parsedData!.replies!.pageInfo!.currentPage ??
                            1) +
                        1,
                  ),
                ),
                pageInfo: result.parsedData!.replies!.pageInfo!,
                child: Scaffold(
                  appBar: AppBar(),
                  floatingActionButton: FloatingActionButton(
                    onPressed: requireLogin(
                      ref,
                      'reply',
                      () => showMarkdownEditor(
                        context,
                        onSave: (text) {
                          if (text.isNotEmpty) {
                            client.value.mutate$SaveActivityReply(
                              Options$Mutation$SaveActivityReply(
                                variables: Variables$Mutation$SaveActivityReply(
                                  activityId: id,
                                  text: text,
                                ),
                                onCompleted: (p0, p1) => refetch!(),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    child: const Icon(Icons.reply),
                  ),
                  body: RefreshIndicator.adaptive(
                    onRefresh: refetch!,
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              ActivityCard(
                                activity: result.parsedData!.activity!,
                                onDelete: () => context.popRoute(true),
                                inActivity: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Replies ${result.parsedData?.replies?.activityReplies?.length ?? 0}',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SliverList.builder(
                          itemBuilder: (context, index) {
                            var reply = result
                                .parsedData!.replies!.activityReplies![index]!;

                            return Comment(
                              body: Markdown(
                                data: reply.text!,
                              ),
                              avatarUrl: reply.user?.avatar?.large,
                              createdAt: reply.createdAt,
                              username: reply.user?.name,
                              leading: Row(
                                children: [
                                  IconButton(
                                    icon: Row(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color: (reply.isLiked ?? false)
                                              ? Colors.red
                                              : null,
                                        ),
                                        if (reply.likeCount > 0)
                                          Text(reply.likeCount.toString()),
                                      ],
                                    ),
                                    onPressed: requireLogin(
                                      ref,
                                      'like',
                                      () => client.value.mutate$ToggleLike(
                                        Options$Mutation$ToggleLike(
                                          variables:
                                              Variables$Mutation$ToggleLike(
                                            id: reply.id,
                                            type: Enum$LikeableType
                                                .ACTIVITY_REPLY,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ActivityPopupMenu(
                                    text: reply.text,
                                    userId: reply.userId,
                                    onDelete: () =>
                                        showDeleteDialog(context).then(
                                      (value) {
                                        if (value == true) {
                                          client.value
                                              .mutate$DeleteActivityReply(
                                            Options$Mutation$DeleteActivityReply(
                                              variables:
                                                  Variables$Mutation$DeleteActivityReply(
                                                id: reply.id,
                                              ),
                                              onCompleted: (p0, p1) =>
                                                  refetch(),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    onEdit: (text) {
                                      if (text.length > 2) {
                                        client.value.mutate$SaveActivityReply(
                                          Options$Mutation$SaveActivityReply(
                                            variables:
                                                Variables$Mutation$SaveActivityReply(
                                              id: reply.id,
                                              text: text,
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: result
                              .parsedData!.replies!.activityReplies!.length,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const BannerAdWidget(),
      ],
    );
  }
}
