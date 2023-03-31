import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/Releasing.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/notification.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/app_bar.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/markdown_editor.dart';
import 'package:MyAniApp/widgets/media_card.dart';
import 'package:MyAniApp/widgets/media_list_group.dart';
import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class HomePage extends StatefulHookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<ConsumerStatefulWidget>
    with WidgetsBindingObserver {
  AppLifecycleState? _prevState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _prevState = state;
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(fetchCurrentUserProvider);
    // var user = context.watch<User>();
    if (user.value?.id == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    var hook = useQuery$Home(
      Options$Query$Home(
        variables: Variables$Query$Home(
          userId: user.value!.id,
          type: Enum$MediaType.ANIME,
        ),
      ),
    );

    if (_prevState == AppLifecycleState.resumed) {
      hook.refetch();
      _prevState = null;
    }

    var results = hook.result.parsedData;
    // if (hook.result.hasException) {
    //   return Graphql(hook.result.exception!);
    // }

    var releases = results?.releasing?.media?.isNotEmpty == true
        ? sortReleases(results!.releasing!.media!
            .whereType<Fragment$ReleasingMedia>()
            .toList())
        : null;

    var watching = results?.list?.lists?.firstWhere(
      (element) => element?.status == Enum$MediaListStatus.CURRENT,
    );

    var planning = results?.list?.lists?.firstWhere(
      (element) => element?.status == Enum$MediaListStatus.PLANNING,
    );

    return Appbar(
      title: const Text('Home'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: IconButton(
            // onPressed: () {},
            onPressed: () => context.router.push(const NotificationsRoute()),
            icon: badges.Badge(
              badgeContent: Text(
                user.value!.unreadNotificationCount?.toString() ?? '0',
              ),
              showBadge: (user.value!.unreadNotificationCount ?? 0) > 0,
              // alignment: AlignmentDirectional.bottomCenter,
              // label: Text(
              //   user.user?.unreadNotificationCount?.toString() ?? '0',
              // ),
              child: const Icon(Icons.notifications),
            ),
          ),
        )
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Divider(
          height: 1,
        ),
      ),
      child: Graphql(
        hook: hook,
        builder: (result) => RefreshIndicator(
          onRefresh: () async {
            await hook.refetch();
            return;
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          // onPressed: () {},
                          onPressed: () => context.router.push(
                            SearchRoute(autofoucus: true),
                          ),
                          iconSize: 30,
                          icon: const Icon(Icons.search),
                        ),
                        IconButton(
                          onPressed: () => NotificationApi().show(
                            details: NotificationApi().releaseDetails(
                                bigPictureUrl:
                                    'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx139630-oc4l8OtJ4tRQ.jpg'),
                            title: 'Test',
                            body: 'W Test',
                            payload: {'path': '/media/1'},
                          ),
                          icon: const Icon(Icons.notification_add),
                        ),
                        IconButton(
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) => Dialog.fullscreen(
                              child: Editor(),
                            ),
                          ),
                          icon: const Icon(Icons.edit),
                        )
                      ],
                    ),
                    _list(
                      context,
                      title: 'Releasing',
                      isLoading: hook.result.isLoading,
                      list: releases?.toList(),
                      onViewMore: () =>
                          context.router.push(const ReleaseCalenderRoute()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              // SliverList(delegate: SliverChildListDelegate([])),
              if (watching?.entries?.isNotEmpty == true)
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Watching',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListGroup(
                          isEditable: true,
                          group: watching!,
                          type: Enum$MediaType.ANIME,
                          shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          // list: watching!.entries!,
                        ),
                      )
                    ],
                  ),
                ),
            ],
          ),
          // child: NestedScrollView(
          //   // physics: const AlwaysScrollableScrollPhysics(),
          //   headerSliverBuilder: (context, innerBoxIsScrolled) => [
          //     // SliverList(
          //     //   delegate: SliverChildListDelegate(
          //     //     [
          //     //       Row(
          //     //         children: [
          //     //           IconButton(
          //     //             // onPressed: () {},
          //     //             onPressed: () => context.router.push(
          //     //               SearchRoute(autofoucus: true),
          //     //             ),
          //     //             iconSize: 30,
          //     //             icon: const Icon(Icons.search),
          //     //           ),
          //     //           IconButton(
          //     //             onPressed: () => NotificationApi().show(
          //     //               details: NotificationApi().releaseDetails(
          //     //                   bigPictureUrl:
          //     //                       'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx139630-oc4l8OtJ4tRQ.jpg'),
          //     //               title: 'Test',
          //     //               body: 'W Test',
          //     //               payload: {'path': '/media/1'},
          //     //             ),
          //     //             icon: const Icon(Icons.notification_add),
          //     //           ),
          //     //           IconButton(
          //     //             onPressed: () => showDialog(
          //     //               context: context,
          //     //               builder: (context) => Dialog.fullscreen(
          //     //                 child: Editor(),
          //     //               ),
          //     //             ),
          //     //             icon: const Icon(Icons.edit),
          //     //           )
          //     //         ],
          //     //       ),
          //     //       _list(
          //     //         context,
          //     //         title: 'Releasing',
          //     //         isLoading: hook.result.isLoading,
          //     //         list: releases?.toList(),
          //     //         onViewMore: () =>
          //     //             context.router.push(const ReleaseCalenderRoute()),
          //     //       ),
          //     //       const SizedBox(
          //     //         height: 10,
          //     //       ),
          //     //       if (watching?.entries != null) ...[
          //     //         Padding(
          //     //           padding: const EdgeInsets.only(left: 8.0),
          //     //           child: Text(
          //     //             'Watching',
          //     //             style: Theme.of(context).textTheme.titleMedium,
          //     //           ),
          //     //         ),
          //     //         Padding(
          //     //           padding: const EdgeInsets.all(8.0),
          //     //           child: MediaQuery.removePadding(
          //     //             context: context,
          //     //             removeTop: true,
          //     //             child: ListGroup(
          //     //               group: watching!,
          //     //               type: Enum$MediaType.ANIME,
          //     //               // shrinkWrap: true,
          //     //               // physics: const NeverScrollableScrollPhysics(),
          //     //               // list: watching!.entries!,
          //     //             ),
          //     //           ),
          //     //         )
          //     //       ],
          //     //       if (planning?.entries != null) ...[
          //     //         Padding(
          //     //           padding: const EdgeInsets.only(left: 8.0),
          //     //           child: Text(
          //     //             'Planning',
          //     //             style: Theme.of(context).textTheme.titleMedium,
          //     //           ),
          //     //         ),
          //     //         Flexible(
          //     //           child: Padding(
          //     //             padding: const EdgeInsets.all(8.0),
          //     //             child: MediaQuery.removePadding(
          //     //               context: context,
          //     //               removeTop: true,
          //     //               child: Cards(
          //     //                 shrinkWrap: true,
          //     //                 physics: const NeverScrollableScrollPhysics(),
          //     //                 list: planning!.entries!,
          //     //               ),
          //     //             ),
          //     //           ),
          //     //         )
          //     //       ]
          //     //     ],
          //     //   ),
          //     // ),
          //   ],
          //   body: ListView(
          //     // mainAxisSize: MainAxisSize.min,
          //     // crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(
          //         children: [
          //           IconButton(
          //             // onPressed: () {},
          //             onPressed: () => context.router.push(
          //               SearchRoute(autofoucus: true),
          //             ),
          //             iconSize: 30,
          //             icon: const Icon(Icons.search),
          //           ),
          //           IconButton(
          //             onPressed: () => NotificationApi().show(
          //               details: NotificationApi().releaseDetails(
          //                   bigPictureUrl:
          //                       'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx139630-oc4l8OtJ4tRQ.jpg'),
          //               title: 'Test',
          //               body: 'W Test',
          //               payload: {'path': '/media/1'},
          //             ),
          //             icon: const Icon(Icons.notification_add),
          //           ),
          //           IconButton(
          //             onPressed: () => showDialog(
          //               context: context,
          //               builder: (context) => Dialog.fullscreen(
          //                 child: Editor(),
          //               ),
          //             ),
          //             icon: const Icon(Icons.edit),
          //           )
          //         ],
          //       ),
          //       _list(
          //         context,
          //         title: 'Releasing',
          //         isLoading: hook.result.isLoading,
          //         list: releases?.toList(),
          //         onViewMore: () =>
          //             context.router.push(const ReleaseCalenderRoute()),
          //       ),
          //       const SizedBox(
          //         height: 10,
          //       ),
          //       if (watching?.entries != null) ...[
          //         Padding(
          //           padding: const EdgeInsets.only(left: 8.0),
          //           child: Text(
          //             'Watching',
          //             style: Theme.of(context).textTheme.titleMedium,
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: MediaQuery.removePadding(
          //             context: context,
          //             removeTop: true,
          //             child: ListGroup(
          //               group: watching!,
          //               type: Enum$MediaType.ANIME,
          //               // shrinkWrap: true,
          //               // physics: const NeverScrollableScrollPhysics(),
          //               // list: watching!.entries!,
          //             ),
          //           ),
          //         )
          //       ],
          //       if (planning?.entries != null) ...[
          //         Padding(
          //           padding: const EdgeInsets.only(left: 8.0),
          //           child: Text(
          //             'Planning',
          //             style: Theme.of(context).textTheme.titleMedium,
          //           ),
          //         ),
          //         Flexible(
          //           child: Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: MediaQuery.removePadding(
          //               context: context,
          //               removeTop: true,
          //               child: Cards(
          //                 shrinkWrap: true,
          //                 physics: const NeverScrollableScrollPhysics(),
          //                 list: planning!.entries!,
          //               ),
          //             ),
          //           ),
          //         )
          //       ]
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }

  Widget _list(
    BuildContext context, {
    required String title,
    required bool isLoading,
    List<Fragment$ReleasingMedia?>? list,
    onViewMore,
  }) {
    if (list == null && !isLoading || list != null && list.isEmpty) {
      return const SizedBox();
    }
    // print(Theme.of(context).textTheme.labelSmall?.fontSize);
    // if (list.isEmpty && isLoading) list.addAll([[], [], [], [], [], [], []]);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              if (onViewMore != null)
                TextButton(
                  onPressed: onViewMore,
                  child: const Text('View more'),
                )
            ],
          ),
        ),
        // if (!isLoading && list != null)
        SizedBox(
          height: 170,
          child: Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                if (isLoading && list == null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircularProgressIndicator(),
                      Text('Loading...'),
                    ],
                  ),
                if (list != null)
                  for (var i in list)
                    Container(
                      width: 110,
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              MediaCard(
                                height: 150,
                                media: i!,
                                // onTap: () {},
                                onTap: () => context.router.push(
                                  MediaRoute(id: i.id!),
                                ),
                              ),
                              Builder(builder: (context) {
                                var next = i.nextAiringEpisode;
                                var passed = i.airingSchedule?.edges
                                    ?.firstWhere(
                                      (a) =>
                                          a?.node?.episode ==
                                          i.nextAiringEpisode!.episode - 1,
                                      orElse: () => null,
                                    )
                                    ?.node;
                                dynamic use;
                                if (isTodayFromTimestamp(passed?.airingAt)) {
                                  use = passed;
                                } else {
                                  use = next;
                                }
                                return Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                  margin: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceVariant
                                        .withOpacity(0.9),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Episode ${use?.episode.toString()} ${isTodayFromTimestamp(use.airingAt) ? '(' : 'in '}${timeago.format(
                                      dateFromTimestamp(use.airingAt),
                                      locale: 'en_short',
                                      allowFromNow: true,
                                    )}${isTodayFromTimestamp(use.airingAt) ? ' ago)' : ''}",
                                    style: const TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                );
                              })
                            ],
                          ),
                        ],
                      ),
                    )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
// import 'package:MyAniApp/routes.gr.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';

// @RoutePage()
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AutoTabsScaffold(
//       routes: const [RealRoute(), NotRealRoute(), FakeRoute()],
//       bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
//         currentIndex: tabsRouter.activeIndex,
//         onTap: tabsRouter.setActiveIndex,
//         items: const [
//           BottomNavigationBarItem(label: 'Users', icon: Icon(Icons.person)),
//           BottomNavigationBarItem(label: 'Posts', icon: Icon(Icons.abc)),
//           BottomNavigationBarItem(
//               label: 'Settings', icon: Icon(Icons.ac_unit_outlined)),
//         ],
//       ),
//     );
//   }
// }

// @RoutePage()
// class RealPage extends StatelessWidget {
//   const RealPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('real'),
//     );
//   }
// }

// @RoutePage()
// class NotRealPage extends StatelessWidget {
//   const NotRealPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Not real'),
//     );
//   }
// }

// @RoutePage()
// class FakePage extends StatelessWidget {
//   const FakePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Fake'),
//     );
//   }
// }
