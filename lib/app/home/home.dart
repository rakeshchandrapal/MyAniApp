import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/page.dart';
import 'package:myaniapp/app/home/page.dart';
import 'package:myaniapp/app/reviews/card.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/list_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/media_editor/media_editor.dart';
import 'package:myaniapp/common/overlay/menu.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
// import 'package:myaniapp/app/home/page.dart';
import 'package:myaniapp/graphql/__gen/app/home/overview.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/media_entry.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';
import 'package:shared_preferences/shared_preferences.dart';

var c = GraphqlClient(
  cache: Cache(store: InMemoryStore()),
  link: AuthLink(
    getToken: () async {
      var prefs = await SharedPreferences.getInstance();
      return prefs.getString("token");
    },
    authHeader: "Authorization",
  ).concat(
    HttpLink("https://graphql.anilist.co"),
  ),
);

@RoutePage()
class HomeLoggedInOverviewScreen extends HookConsumerWidget {
  const HomeLoggedInOverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    var (:snapshot, fetchMore: _, :refetch) = c.useQuery(
      GQLRequest(
        homeOverviewQuery,
        variables: Variables$Query$HomeOverview(
                userId: user.value!.parsedData!.Viewer!.id)
            .toJson(),
        parseData: Query$HomeOverview.fromJson,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: const HomeLeadingIcon(),
        actions: [
          IconButton(
            onPressed: () => context.pushRoute(NotificationRoute()),
            // onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: GQLWidget(
        response: snapshot,
        refetch: refetch,
        builder: () => RefreshIndicator.adaptive(
          onRefresh: refetch,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome ${user.value!.parsedData!.Viewer!.name}!",
                  style: context.theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              InProgress(
                list: snapshot!.parsedData!.list!.mediaList!,
                refetch: refetch,
              ),
              // Threads
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Forum Activity",
                      style: context.theme.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () => context
                          .pushRoute(ForumRoute(tab: ForumTabs.overview.name)),
                      child: const Text("All"),
                    )
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  var thread = snapshot!.parsedData!.forums!.threads![index]!;

                  return ThreadCard(thread: thread);
                },
                itemCount: snapshot!.parsedData!.forums!.threads!.length,
              ),
              // Reviews
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Recent Reviews",
                      style: context.theme.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () => context.pushRoute(ReviewsRoute()),
                      child: const Text("More"),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                primary: false,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  mainAxisExtent: 200,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var review = snapshot!.parsedData!.reviews!.reviews![index]!;

                  return ReviewCard(review: review);
                },
                itemCount: snapshot!.parsedData!.reviews!.reviews!.length,
              ),
            ],
          ),
        ),
      ),
      // body: GQLRequest(
      //   operationRequest: GHomeOverviewReq((b) => b
      //     ..requestId = "homeLoggedInPage"
      //     ..vars.userId = user.value!.data!.Viewer!.id),
      //   builder: (context, response, error, refetch) =>
      //       RefreshIndicator.adaptive(
      //     onRefresh: refetch,
      //     child: ListView(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(
      //             "Welcome ${user.value!.data!.Viewer!.name}!",
      //             style: context.theme.textTheme.titleLarge
      //                 ?.copyWith(fontWeight: FontWeight.bold),
      //           ),
      //         ),
      //         InProgress(
      //           list: response!.data!.list!.mediaList!,
      //           refetch: refetch,
      //         ),
      //         // Threads
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Wrap(
      //             crossAxisAlignment: WrapCrossAlignment.center,
      //             children: [
      //               Text(
      //                 "Forum Activity",
      //                 style: context.theme.textTheme.titleLarge
      //                     ?.copyWith(fontWeight: FontWeight.bold),
      //               ),
      //               TextButton(
      //                 onPressed: () => context
      //                     .pushRoute(ForumRoute(tab: ForumTabs.overview.name)),
      //                 child: const Text("All"),
      //               )
      //             ],
      //           ),
      //         ),
      //         ListView.builder(
      //           shrinkWrap: true,
      //           primary: false,
      //           itemBuilder: (context, index) {
      //             var thread = response.data!.forums!.threads![index]!;

      //             return ThreadCard(thread: thread);
      //           },
      //           itemCount: response.data!.forums!.threads!.length,
      //         ),
      //         // Reviews
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Wrap(
      //             crossAxisAlignment: WrapCrossAlignment.center,
      //             children: [
      //               Text(
      //                 "Recent Reviews",
      //                 style: context.theme.textTheme.titleLarge
      //                     ?.copyWith(fontWeight: FontWeight.bold),
      //               ),
      //               TextButton(
      //                 onPressed: () => context.pushRoute(ReviewsRoute()),
      //                 child: const Text("More"),
      //               ),
      //             ],
      //           ),
      //         ),
      //         GridView.builder(
      //           primary: false,
      //           gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //             maxCrossAxisExtent: 300,
      //             mainAxisExtent: 200,
      //           ),
      //           shrinkWrap: true,
      //           itemBuilder: (context, index) {
      //             var review = response.data!.reviews!.reviews![index]!;

      //             return ReviewCard(review: review);
      //           },
      //           itemCount: response.data!.reviews!.reviews!.length,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

class InProgress extends ConsumerWidget {
  const InProgress({
    super.key,
    required this.list,
    required this.refetch,
  });

  final List<Fragment$MediaListEntry?> list;
  final Future<void> Function() refetch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);
    var settings = ref.watch(listSettingsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "In Progress",
                style: context.theme.textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              ListSettingButton(
                type: settings.inProgress,
                onUpdate: (type) =>
                    ref.read(listSettingsProvider.notifier).update(
                          settings.copyWith(inProgress: type),
                        ),
              ),
            ],
          ),
        ),
        switch (settings.inProgress) {
          ListType.grid => SizedBox(
              height: 190,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  var entry = list[index]!;

                  return MediaCard(
                    listType: settings.inProgress,
                    image: entry.media!.coverImage!.extraLarge!,
                    title: entry.media!.title!.userPreferred,
                    blur: entry.media!.isAdult ?? false,
                    aspectRatio: GridCard.listRatio,
                    onDoubleTap: () => MediaEditorDialog.show(
                      context,
                      entry.media!,
                      user.value!.parsedData!.Viewer!.id,
                      onSave: refetch,
                      onDelete: refetch,
                    ),
                    onTap: () => context.pushRoute(MediaRoute(
                        id: entry.media!.id, placeholder: entry.media)),
                    onLongPress: () => MediaSheet.show(context, entry.media!),
                  );
                },
                itemCount: list.length,
              ),
            ),
          ListType.list => ListView.separated(
              shrinkWrap: true,
              primary: false,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                var entry = list[index]!;

                double? progress;

                if (entry.media!.type == Enum$MediaType.MANGA &&
                    entry.media!.chapters != null) {
                  progress = (entry.progress ?? 0) / entry.media!.chapters!;
                } else if (entry.media!.episodes != null) {
                  progress = (entry.progress ?? 0) / entry.media!.episodes!;
                }

                return MediaCard(
                  listType: settings.inProgress,
                  image: entry.media!.coverImage!.extraLarge!,
                  title: entry.media!.title!.userPreferred,
                  underTitle: Show(
                    when: progress != null,
                    fallback: Text(
                      style: context.theme.textTheme.labelMedium,
                      "${entry.progress} ${entry.media!.type == Enum$MediaType.ANIME ? "Episodes Watched" : "Chapters Read"}",
                    ),
                    child: () => Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        LinearProgressIndicator(
                          value: progress,
                          borderRadius: imageRadius,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${entry.progress} / ${entry.media!.chapters ?? entry.media!.episodes}",
                          style: context.theme.textTheme.labelMedium,
                        )
                      ],
                    ),
                  ),
                  blur: entry.media!.isAdult ?? false,
                  onDoubleTap: () => MediaEditorDialog.show(
                    context,
                    entry.media!,
                    user.value!.parsedData!.Viewer!.id,
                    onSave: refetch,
                    onDelete: refetch,
                  ),
                  onTap: () => context.pushRoute(
                    MediaRoute(id: entry.mediaId, placeholder: entry.media),
                  ),
                  onLongPress: () => MediaSheet.show(context, entry.media!),
                );
              },
              itemCount: list.length,
            ),
          ListType.simple => ListView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                var entry = list[index]!;

                return MediaCard(
                  listType: settings.inProgress,
                  onDoubleTap: () => MediaEditorDialog.show(
                    context,
                    entry.media!,
                    user.value!.parsedData!.Viewer!.id,
                    onSave: refetch,
                    onDelete: refetch,
                  ),
                  onLongPress: () => MediaSheet.show(context, entry.media!),
                  onTap: () => context.pushRoute(
                    MediaRoute(id: entry.mediaId, placeholder: entry.media),
                  ),
                  // child: ListTile(
                  title: entry.media!.title!.userPreferred!,
                );
              },
              itemCount: list.length,
            ),
        },
      ],
    );
  }
}
