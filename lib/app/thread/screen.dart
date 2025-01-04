import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/home/forum/screen.dart';
import 'package:myaniapp/common/comment.dart';
import 'package:myaniapp/common/custom_dropdown.dart';
import 'package:myaniapp/common/hiding_floating_button.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/markdown_editor.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/fragments/thread.graphql.dart';
import 'package:myaniapp/graphql/__gen/home_activities.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/__gen/thread.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/routes.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';
import 'package:url_launcher/url_launcher.dart';

class ThreadScreen extends HookConsumerWidget {
  ThreadScreen({super.key, required this.id, this.placeholder});

  final int id;
  final Fragment$ThreadFragment? placeholder;

  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var scrollController = useScrollController();
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      threadQuery,
      variables: Variables$Query$Thread(id: id).toJson(),
      parseData: Query$Thread.fromJson,
      mergeResults: defaultMergeResults("comments.threadComments"),
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      loading: null,
      error: Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (snapshot.errors, snapshot.linkError),
          refetch: refetch,
        ),
      ),
      builder: () {
        if (snapshot.loading == true && placeholder == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }
        var threadData = snapshot.parsedData?.thread;

        var view = CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              title: GestureDetector(
                onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      (threadData ?? placeholder)!.title!,
                      style: TextStyle(
                        color: context.theme.colorScheme.onSurface,
                      ),
                    ),
                    duration: const Duration(seconds: 3),
                    backgroundColor:
                        context.theme.colorScheme.surfaceContainerHighest,
                  ),
                ),
                child: Text(
                  (threadData ?? placeholder)!.title!,
                  maxLines: 2,
                ),
              ),
              actions: [
                if (threadData?.siteUrl != null)
                  PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text("View on Anilist"),
                        onTap: () => launchUrl(Uri.parse(threadData!.siteUrl!)),
                      ),
                    ],
                  )
              ],
            ),
            SliverToBoxAdapter(
              child: Comment(
                key: dataKey,
                collapsible: false,
                avatar: (threadData ?? placeholder)!.user!.avatar!.large!,
                username: (threadData ?? placeholder)!.user!.name,
                createdAt: (threadData ?? placeholder)!.createdAt,
                onAvatarTap: () => context.push(
                  Routes.user((threadData ?? placeholder)!.user!.name),
                  extra: {"placeholder": (threadData ?? placeholder)!.user},
                ),
                body: Show(
                  when: threadData != null,
                  fallback: const SizedBox(
                    height: 150,
                  ),
                  child: () => MarkdownWidget.body(
                    data: threadData!.body!,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    selectable: true,
                  ),
                ),
                footer: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        primary: false,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var cat
                                in (threadData ?? placeholder)!.categories!)
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: ActionChip(
                                  label: Text(cat!.name),
                                  onPressed: () => context.push(Routes.forums(
                                    ForumTabs.recent,
                                    category: cat.id,
                                  )),
                                ),
                              ),
                            for (var cat in (threadData ?? placeholder)!
                                .mediaCategories!)
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: ActionChip(
                                  label: Text(cat!.title!.userPreferred!),
                                  onPressed: () => context.push(
                                      Routes.media(cat.id),
                                      extra: {"placeholder": cat}),
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (threadData != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 4,
                          ),
                          child: Row(children: [
                            IconButton(
                              color: (threadData!.isLiked ?? false)
                                  ? Colors.red
                                  : null,
                              onPressed: requiredLogin(
                                  ref,
                                  "like an activity",
                                  () => c
                                      .query(
                                        GQLRequest(
                                          toggleLikeQuery,
                                          variables:
                                              Variables$Mutation$ToggleLike(
                                                      id: threadData.id,
                                                      type: Enum$LikeableType
                                                          .THREAD)
                                                  .toJson(),
                                        ),
                                      )
                                      .last
                                      .then((_) => refetch
                                          ?.call(FetchPolicy.cacheOnly))),
                              icon: Row(
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                  ),
                                  Text(
                                    (threadData.likeCount as int? ?? 0)
                                        .abbreviate(),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            IconButton(
                              onPressed: requiredLogin(
                                ref,
                                "subscribe to an activity",
                                () => c
                                    .query(
                                      GQLRequest(
                                        toggleThreadSubscriptionQuery,
                                        variables:
                                            Variables$Mutation$ToggleThreadSubscription(
                                          id: threadData.id,
                                          subscribe:
                                              !(threadData.isSubscribed ??
                                                  false),
                                        ).toJson(),
                                      ),
                                    )
                                    .last
                                    .then((_) =>
                                        refetch?.call(FetchPolicy.cacheOnly)),
                              ),
                              icon: Icon(
                                threadData.isSubscribed == true
                                    ? Icons.notifications_active
                                    : Icons.notifications,
                                color: (threadData.isSubscribed ?? false)
                                    ? Colors.yellow
                                    : null,
                              ),
                            ),
                          ]),
                        )
                    ],
                  ),
                ),
              ),
            ),
            SliverAppBar(
              primary: false,
              automaticallyImplyLeading: false,
              pinned: true,
              surfaceTintColor: Colors.transparent,
              flexibleSpace: InkWell(
                onTap: ((threadData?.isLocked ?? false) == true)
                    ? null
                    : () => MarkdownEditor.show(
                          context,
                          hint: "Write a reply",
                          onSave: (text) => c
                              .query(GQLRequest(
                                saveCommentQuery,
                                variables: Variables$Mutation$SaveComment(
                                        threadId:
                                            (placeholder ?? threadData)!.id,
                                        comment: text)
                                    .toJson(),
                              ))
                              .last
                              .then((value) => refetch()),
                          leading: Comment(
                            collapsible: false,
                            avatar: (threadData ?? placeholder)!
                                .user!
                                .avatar!
                                .large!,
                            username: (threadData ?? placeholder)!.user!.name,
                            createdAt: (threadData ?? placeholder)!.createdAt,
                            body: Show(
                              when: threadData != null,
                              fallback: const SizedBox(
                                height: 150,
                              ),
                              child: () => MarkdownWidget.body(
                                data: threadData!.body!,
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, bottom: 8),
                                selectable: true,
                              ),
                            ),
                          ),
                        ),
                child: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color:
                              context.theme.colorScheme.surfaceContainerHighest,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Post a reply",
                          style: context.theme.textTheme.bodyLarge
                              ?.copyWith(color: context.theme.hintColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Show(
              when: snapshot.parsedData?.comments != null,
              fallback: const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
              child: () => SliverList.builder(
                itemBuilder: (context, index) {
                  var comment =
                      snapshot.parsedData!.comments!.threadComments![index]!;

                  // if (comment.user == null) return const SizedBox();
                  // print(comment.childComments);

                  return ThreadComment(
                    id: comment.id,
                    parentId: comment.id,
                    avatar: comment.user?.avatar?.large ?? anilistDefaultImage,
                    username: comment.user?.name ?? "unknown",
                    comment: comment.comment!,
                    createdAt: comment.createdAt,
                    replies: comment.childComments as List?,
                    isLiked: comment.isLiked ?? false,
                    likeCount: comment.likeCount,
                    refetch: refetch,
                    onAvatarTap: comment.user != null
                        ? () => context.push(Routes.user(comment.user!.name))
                        : null,
                    donatorText: comment.user!.donatorTier != 0
                        ? comment.user!.donatorBadge
                        : null,
                    modRoles: comment.user!.moderatorRoles?.fold(
                        [],
                        (previousValue, element) =>
                            [...?previousValue, element!.name.capitalize()]),
                  );
                },
                itemCount:
                    snapshot.parsedData!.comments!.threadComments!.length,
              ),
            )
          ],
        );

        return HidingFloatingButton(
          button: Container(
            decoration: BoxDecoration(
              color: context.theme.colorScheme.surface,
              borderRadius: imageRadius,
            ),
            width: 130,
            child: Show(
              when: snapshot.parsedData != null,
              child: () => SheetDropdownMenu(
                key: Key(
                    (snapshot.parsedData!.comments!.pageInfo!.currentPage ?? 1)
                        .toString()),
                value:
                    snapshot.parsedData!.comments!.pageInfo!.currentPage ?? 1,
                hint: "Page",
                onChanged: (values) {
                  if (snapshot.parsedData!.comments!.pageInfo!.currentPage ==
                      values.first) {
                    return;
                  }
                  fetchMore(
                    variables: Variables$Query$Thread.fromJson(
                            snapshot.request!.variables)
                        .copyWith(page: values.first)
                        .toJson(),
                    mergeResults: (previousResult, result) => result,
                  );
                  if (dataKey.currentContext?.mounted == true) {
                    scrollController
                        .jumpTo(dataKey.currentContext!.size!.height);
                  }
                },
                items: [
                  for (int i = 1;
                      i <=
                          (snapshot.parsedData!.comments!.pageInfo!.lastPage ??
                              1);
                      i++)
                    DropdownMenuEntry(value: i, label: i.toString())
                ],
              ),
            ),
          ),
          builder: (button) => Scaffold(
            floatingActionButton: button,
            body: Show(
              when: threadData != null,
              fallback: view,
              child: () => GraphqlPagination(
                pageInfo: snapshot.parsedData!.comments!.pageInfo!,
                req: (nextPage) => fetchMore(
                  variables: Variables$Query$Thread.fromJson(
                          snapshot.request!.variables)
                      .copyWith(page: nextPage)
                      .toJson(),
                ),
                child: view,
              ),
            ),
          ),
        );
      },
    );
  }
}

class ThreadComment extends ConsumerWidget {
  const ThreadComment({
    super.key,
    required this.comment,
    required this.avatar,
    required this.username,
    required this.createdAt,
    required this.isLiked,
    required this.id,
    required this.likeCount,
    required this.refetch,
    required this.parentId,
    this.replies,
    this.isReply,
    this.onAvatarTap,
    this.donatorText,
    this.modRoles,
  });

  final int id;
  final int parentId;
  final String avatar;
  final String username;
  final int createdAt;
  final String comment;
  final List<dynamic>? replies;
  final bool? isReply;
  final GestureTapCallback? onAvatarTap;
  final bool isLiked;
  final int likeCount;
  final QueryRefetch refetch;
  final String? donatorText;
  final List<String>? modRoles;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Query$Thread$comments$threadComments> parsedReplies = [];
    try {
      if (replies != null) {
        for (var reply in replies!) {
          parsedReplies
              .add(Query$Thread$comments$threadComments.fromJson(reply));
        }
      }
    } catch (err) {}

    return Comment(
      badge: [
        if (modRoles?.isNotEmpty == true) CommentBadge(text: modRoles!),
        if (donatorText != null) CommentBadge(text: [donatorText!]),
      ],
      collapsible: true,
      avatar: avatar,
      username: username,
      createdAt: createdAt,
      isReply: isReply ?? false,
      onAvatarTap: onAvatarTap,
      body: MarkdownWidget.body(
        data: comment,
        selectable: true,
        padding: const EdgeInsets.symmetric(horizontal: 8),
      ),
      replies: parsedReplies.isNotEmpty == true
          ? [
              for (var reply in parsedReplies)
                ThreadComment(
                  id: reply.id,
                  parentId: id,
                  avatar: reply.user?.avatar?.large ?? anilistDefaultImage,
                  username: reply.user?.name ?? "unknown",
                  createdAt: reply.createdAt,
                  comment: reply.comment!,
                  replies: reply.childComments as List?,
                  isLiked: reply.isLiked ?? false,
                  likeCount: reply.likeCount,
                  onAvatarTap: reply.user != null
                      ? () => context.push(Routes.user(reply.user!.name))
                      : null,
                  isReply: true,
                  refetch: refetch,
                  donatorText: reply.user!.donatorTier != 0
                      ? reply.user!.donatorBadge
                      : null,
                  modRoles: reply.user!.moderatorRoles?.fold(
                      [],
                      (previousValue, element) =>
                          [...?previousValue, element!.name.capitalize()]),
                ),
            ]
          : null,
      footer: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            IconButton(
              onPressed: requiredLogin(
                ref,
                "like a comment",
                () => c
                    .query(GQLRequest(
                      toggleLikeQuery,
                      variables: Variables$Mutation$ToggleLike(
                        id: id,
                        type: Enum$LikeableType.THREAD_COMMENT,
                      ).toJson(),
                    ))
                    .last
                    .then(
                  (value) {
                    if (isReply == true) {
                      refetch();
                    } else {
                      refetch(FetchPolicy.cacheFirst);
                    }
                  },
                ),
              ),
              icon: Row(
                children: [
                  const Icon(Icons.favorite),
                  const SizedBox(width: 2),
                  Text(likeCount.abbreviate())
                ],
              ),
              color: isLiked ? Colors.red : null,
            ),
            IconButton(
              onPressed: requiredLogin(
                ref,
                "post a reply",
                () => MarkdownEditor.show(
                  context,
                  hint: "Write a reply",
                  onSave: (text) => c
                      .query(GQLRequest(
                        saveCommentQuery,
                        variables: Variables$Mutation$SaveComment(
                                comment: text, parentCommentId: parentId)
                            .toJson(),
                      ))
                      .last
                      .then((value) => refetch()),
                  leading: Comment(
                    collapsible: false,
                    avatar: avatar,
                    username: username,
                    createdAt: createdAt,
                    body: MarkdownWidget.body(
                      data: comment,
                      selectable: true,
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    ),
                  ),
                ),
              ),
              icon: const Icon(Icons.reply),
            )
          ],
        ),
      ),
    );
  }
}
