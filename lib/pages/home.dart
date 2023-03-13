import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/notification.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/app_bar.dart';
import 'package:MyAniApp/widgets/graphql_error.dart';
import 'package:MyAniApp/widgets/lists/cards.dart';
import 'package:MyAniApp/widgets/media_card.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulHookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
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
    var user = context.watch<User>();
    if (user.user?.id == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    // todo - if releasing has more pages handle it
    var hook = useQuery$Home(
      Options$Query$Home(
        variables: Variables$Query$Home(
          userId: user.user!.id,
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

    var releases = results?.releasing?.media != null
        ? sortReleases(results!.releasing!)
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
            onPressed: () => context.push('/notifications'),
            icon: badges.Badge(
              badgeContent: Text(
                user.user?.unreadNotificationCount?.toString() ?? '0',
              ),
              showBadge: (user.user?.unreadNotificationCount ?? 0) > 0,
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
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => context.push('/search'),
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
                  ],
                ),
                _list(
                  context,
                  title: 'Releasing',
                  isLoading: hook.result.isLoading,
                  list: releases?.toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                if (watching?.entries != null) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Watching',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: Cards(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          list: watching!.entries!,
                        ),
                      ),
                    ),
                  )
                ],
                if (planning?.entries != null) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Planning',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: Cards(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          list: planning!.entries!,
                        ),
                      ),
                    ),
                  )
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _list(
    BuildContext context, {
    required String title,
    required bool isLoading,
    List<Fragment$BasicMedia?>? list,
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
                                onTap: () => context.push('/media/${i.id}'),
                              ),
                              if (i is Query$Home$releasing$media)
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
                                      "Episode ${use?.episode.toString()} ${fromTimestamp(use.airingAt)}",
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
