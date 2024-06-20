import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/forum/thread/__generated__/thread.data.gql.dart';
import 'package:myaniapp/app/forum/thread/__generated__/thread.req.gql.dart';
import 'package:myaniapp/app/home/__generated__/activities.req.gql.dart';
import 'package:myaniapp/common/comment.dart';
import 'package:myaniapp/common/custom_dropdown.dart';
import 'package:myaniapp/common/hiding_floating_button.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/markdown_editor.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/thread.data.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ThreadsPage extends HookWidget {
  ThreadsPage({super.key, required this.id});

  final String id;

  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var scrollController = useScrollController();

    return GQLRequest(
      operationRequest: GThreadReq(
        (b) => b
          ..requestId = "threadPage$id"
          ..vars.id = int.parse(id),
      ),
      loading: null,
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (response!.graphqlErrors, response.linkException),
          req: response.operationRequest,
        ),
      ),
      builder: (context, response, error, refetch) {
        if (response?.loading == true &&
            (GoRouterState.of(context).extra as Map?)?["thread"]
                is! GThreadFragment) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        GThreadFragment? placeholder =
            (GoRouterState.of(context).extra as Map?)?["thread"];
        var threadData = response?.data?.thread;

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
                    "/user/${(threadData ?? placeholder)!.user!.name}/info",
                    extra: {"user": (threadData ?? placeholder)!.user}),
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
                  child: SingleChildScrollView(
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
                              onPressed: () => context
                                  .push("/forum/recent?category=${cat.id}"),
                            ),
                          ),
                        for (var cat
                            in (threadData ?? placeholder)!.mediaCategories!)
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: ActionChip(
                              label: Text(cat!.title!.userPreferred!),
                              onPressed: () => context.push(
                                "/media/${cat.id}/info",
                                extra: {"media": cat},
                              ),
                            ),
                          ),
                      ],
                    ),
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
                          onSave: (text) => client
                              .request(GSaveCommentReq(
                                (b) => b
                                  ..vars.threadId =
                                      (placeholder ?? threadData)!.id
                                  ..vars.comment = text,
                              ))
                              .first
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
              when: response?.data?.comments != null,
              fallback: const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
              child: () => SliverList.builder(
                itemBuilder: (context, index) {
                  var comment =
                      response.data!.comments!.threadComments![index]!;

                  if (comment.user == null) return const SizedBox();

                  return ThreadComment(
                    id: comment.id,
                    parentId: comment.id,
                    avatar: comment.user!.avatar!.large!,
                    username: comment.user!.name,
                    comment: comment.comment!,
                    createdAt: comment.createdAt,
                    replies: comment.childComments?.asList,
                    isLiked: comment.isLiked ?? false,
                    likeCount: comment.likeCount,
                    refetch: refetch,
                    onAvatarTap: () =>
                        context.push("/user/${comment.user!.name}/info"),
                  );
                },
                itemCount: response!.data!.comments!.threadComments!.length,
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
              when: response?.data != null,
              child: () => SheetDropdownMenu(
                key: Key((response!.data!.comments!.pageInfo!.currentPage ?? 1)
                    .toString()),
                value: response.data!.comments!.pageInfo!.currentPage ?? 1,
                hint: "Page",
                onChanged: (values) {
                  if (response.data!.comments!.pageInfo!.currentPage ==
                      values.first) return;
                  client.requestController.add(
                      (response.operationRequest as GThreadReq)
                          .rebuild((p0) => p0
                            ..vars.page = values.first
                            ..updateResult = (p0, p1) => p1));
                  if (dataKey.currentContext?.mounted == true) {
                    scrollController
                        .jumpTo(dataKey.currentContext!.size!.height);
                    // Scrollable.ensureVisible(dataKey.currentContext!.s);
                  }
                },
                items: [
                  for (int i = 1;
                      i <= (response.data!.comments!.pageInfo!.lastPage ?? 1);
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
                pageInfo: response!.data!.comments!.pageInfo!,
                req: (nextPage) =>
                    (response.operationRequest as GThreadReq).rebuild(
                  (p0) => p0
                    ..vars.page = nextPage
                    ..updateResult = (previous, result) => result?.rebuild(
                        (p0) => p0
                          ..comments.threadComments.insertAll(
                              0,
                              previous?.comments?.threadComments?.whereNot(
                                      (p0) =>
                                          result.comments?.threadComments
                                              ?.contains(p0) ??
                                          false) ??
                                  [])),
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
    this.replies,
    this.isReply,
    this.onAvatarTap,
    required this.isLiked,
    required this.id,
    required this.likeCount,
    required this.refetch,
    required this.parentId,
  });

  // final GThreadData_comments_threadComments comment;
  // final List<GThreadData_comments_threadComments> replies;
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
  final VoidCallback refetch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<GThreadData_comments_threadComments> parsedReplies = [];
    try {
      if (replies != null) {
        for (var reply in replies!) {
          parsedReplies
              .add(GThreadData_comments_threadComments.fromJson(reply)!);
        }
      }
    } catch (err) {}

    return Comment(
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
                  avatar: reply.user!.avatar!.large!,
                  username: reply.user!.name,
                  createdAt: reply.createdAt,
                  comment: reply.comment!,
                  replies: reply.childComments?.asList,
                  isLiked: reply.isLiked ?? false,
                  likeCount: reply.likeCount,
                  onAvatarTap: () =>
                      context.push("/user/${reply.user!.name}/info"),
                  isReply: true,
                  refetch: refetch,
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
                () => client
                    .request(
                      GToggleLikeReq((b) => b
                        ..vars.id = id
                        ..vars.type = GLikeableType.THREAD_COMMENT),
                    )
                    .first
                    .then(
                  (value) {
                    if (isReply == true) refetch();
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
                  onSave: (text) => client
                      .request(GSaveCommentReq(
                        (b) => b
                          ..vars.parentCommentId = parentId
                          ..vars.comment = text,
                      ))
                      .first
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
