import 'package:MyAniApp/graphql/User.graphql.dart';
import 'package:MyAniApp/pages/profile/favorites.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/image.dart';
import 'package:MyAniApp/widgets/markdown.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class ProfilePage extends HookWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$User(
      Options$Query$User(
        variables: Variables$Query$User(name: username),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              expandedHeight: 149,
              toolbarHeight: 0,
              flexibleSpace: Header(user: result.User!),
            ),
            SliverPersistentHeader(
              delegate: MySliverPersistentHeaderDelegate(
                const TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'Overview'),
                    Tab(text: 'Favorites'),
                  ],
                ),
              ),
              pinned: true,
            ),
          ],
          body: TabBarView(
            children: [
              Overview(
                user: result.User!,
              ),
              Favorites(username: username),
            ],
          ),
        ),
      ),
    );

    // return Graphql(
    //   hook: hook,
    //   builder: (result) {
    //     var aDays = (result.User!.statistics!.anime!.minutesWatched / 1440)
    //         .toStringAsFixed(1);

    //     return SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           Stack(
    //             children: [
    //               ShaderMask(
    //                 shaderCallback: (rect) {
    //                   return LinearGradient(
    //                     begin: Alignment.topCenter,
    //                     end: Alignment.bottomCenter,
    //                     colors: [
    //                       Colors.transparent,
    //                       Colors.black.withOpacity(0.8)
    //                     ],
    //                   ).createShader(
    //                       Rect.fromLTRB(0, 0, rect.width, rect.height));
    //                 },
    //                 blendMode: BlendMode.srcOver,
    //                 child: result.User!.bannerImage != null
    //                     ? Image.network(
    //                         result.User!.bannerImage!,
    //                         width: MediaQuery.of(context).size.width,
    //                         height: 149,
    //                         fit: BoxFit.cover,
    //                       )
    //                     : Container(
    //                         height: 149,
    //                         color: Colors.grey,
    //                       ),
    //               ),
    //               // Positioned(
    //               //   right: 0,
    //               //   child: SafeArea(
    //               //     child: Row(
    //               //       children: [
    //               //         IconButton(
    //               //             icon: const Icon(Icons.notifications),
    //               //             color: Colors.white,
    //               //             onPressed: () => context.push('/notifications')),
    //               //         PopupMenuButton(
    //               //           itemBuilder: (context) {
    //               //             return [
    //               //               PopupMenuItem(
    //               //                 child: const Text('Open Settings'),
    //               //                 onTap: () => context.push('/settings'),
    //               //               ),
    //               //               PopupMenuItem(
    //               //                 child: const Text('View on Anilist'),
    //               //                 onTap: () => _launchInWebViewOrVC(
    //               //                   Uri(
    //               //                     scheme: 'https',
    //               //                     host: 'anilist.co',
    //               //                     path: '/user/${user.user!.name}',
    //               //                   ),
    //               //                 ),
    //               //               )
    //               //             ];
    //               //           },
    //               //         ),
    //               //       ],
    //               //     ),
    //               //   ),
    //               // ),
    //               Positioned(
    //                 bottom: 0,
    //                 child: Image.network(
    //                   result.User!.avatar!.large!,
    //                   height: 120,
    //                 ),
    //               ),
    //               Positioned(
    //                 bottom: 20,
    //                 left: 130,
    //                 child: Text(
    //                   result.User!.name,
    //                   style: const TextStyle(color: Colors.white),
    //                 ),
    //               ),
    //               if (context.router.canPop())
    //                 SafeArea(
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(4.0),
    //                     child: BackButton(
    //                       onPressed: () => context.router.pop(),
    //                       color: Colors.white,
    //                     ),
    //                   ),
    //                 ),
    //             ],
    //           ),
    //           Container(
    //             // height: 100,
    //             constraints: const BoxConstraints(maxHeight: 150),
    //             margin: const EdgeInsets.all(8),
    //             decoration: const BoxDecoration(
    //               color: Color.fromRGBO(92, 114, 138, 0.1),
    //               borderRadius: BorderRadius.all(Radius.circular(8)),
    //             ),
    //             child: Markdown(
    //               data: result.User?.about ?? 'No bio',
    //             ),
    //           ),
    //           Text(
    //             'Stats',
    //             style: TextStyle(
    //               fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
    //               fontWeight: FontWeight.w600,
    //             ),
    //           ),
    //           if (result.User!.statistics?.anime?.count != null)
    //             Container(
    //               margin: const EdgeInsets.all(8),
    //               padding: const EdgeInsets.all(20),
    //               decoration: const BoxDecoration(
    //                 color: Color.fromRGBO(92, 114, 138, 0.1),
    //                 borderRadius: BorderRadius.all(Radius.circular(8)),
    //               ),
    //               child: StatRow(
    //                 rows: [
    //                   RowModel(
    //                     top: result.User!.statistics!.anime!.count.toString(),
    //                     bottom: 'Total Anime',
    //                   ),
    //                   RowModel(
    //                     top: aDays,
    //                     bottom: 'Days Watched',
    //                   ),
    //                   RowModel(
    //                     top: result.User!.statistics!.anime!.meanScore
    //                         .toStringAsFixed(1),
    //                     bottom: 'Mean Score',
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           if (result.User!.statistics?.manga?.count != null)
    //             Container(
    //               margin: const EdgeInsets.all(8),
    //               padding: const EdgeInsets.all(20),
    //               decoration: const BoxDecoration(
    //                 color: Color.fromRGBO(92, 114, 138, 0.1),
    //                 borderRadius: BorderRadius.all(Radius.circular(8)),
    //               ),
    //               child: StatRow(
    //                 rows: [
    //                   RowModel(
    //                     top: result.User!.statistics!.manga!.count.toString(),
    //                     bottom: 'Total Manga',
    //                   ),
    //                   RowModel(
    //                     top: result.User!.statistics!.manga!.chaptersRead
    //                         .toString(),
    //                     bottom: 'Chapters Read',
    //                   ),
    //                   RowModel(
    //                     top: result.User!.statistics!.manga!.meanScore
    //                         .toStringAsFixed(1),
    //                     bottom: 'Mean Score',
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           if (result.User?.favourites?.anime?.edges?.isNotEmpty ??
    //               false) ...[
    //             Text(
    //               "Favorite Animes",
    //               style: TextStyle(
    //                 fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
    //                 fontWeight: FontWeight.w600,
    //               ),
    //             ),
    //             Container(
    //               height: 160,
    //               margin: const EdgeInsets.all(8),
    //               padding: const EdgeInsets.only(
    //                 top: 20,
    //                 bottom: 20,
    //                 left: 10,
    //                 right: 10,
    //               ),
    //               decoration: const BoxDecoration(
    //                 color: Color.fromRGBO(92, 114, 138, 0.1),
    //                 borderRadius: BorderRadius.all(Radius.circular(8)),
    //               ),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                 children: [
    //                   for (var fav
    //                       in result.User!.favourites!.anime!.edges!.take(4))
    //                     Container(
    //                       margin: const EdgeInsets.only(left: 8, right: 8),
    //                       width: 70,
    //                       child: MediaCard(
    //                         media: fav!.node!,
    //                         onTap: () => context.router.push(
    //                           MediaRoute(id: fav.node!.id!),
    //                         ),
    //                       ),
    //                     ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //           if (result.User?.favourites?.manga?.edges?.isNotEmpty ??
    //               false) ...[
    //             Text(
    //               "Favorite Mangas",
    //               style: TextStyle(
    //                 fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
    //                 fontWeight: FontWeight.w600,
    //               ),
    //             ),
    //             Container(
    //               height: 160,
    //               margin: const EdgeInsets.all(8),
    //               padding: const EdgeInsets.only(
    //                 top: 20,
    //                 bottom: 20,
    //                 left: 10,
    //                 right: 10,
    //               ),
    //               decoration: const BoxDecoration(
    //                 color: Color.fromRGBO(92, 114, 138, 0.1),
    //                 borderRadius: BorderRadius.all(Radius.circular(8)),
    //               ),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 children: [
    //                   for (var fav
    //                       in result.User!.favourites!.manga!.edges!.take(4))
    //                     Container(
    //                       margin: const EdgeInsets.only(left: 8, right: 8),
    //                       width: 70,
    //                       child: MediaCard(
    //                         media: fav!.node!,
    //                         onTap: () => context.router.push(
    //                           MediaRoute(id: fav.node!.id!),
    //                         ),
    //                       ),
    //                     ),
    //                 ],
    //               ),
    //             )
    //           ],
    //         ],
    //       ),
    //     );
    //   },
    // );
  }

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.platformDefault,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}

class Overview extends StatelessWidget {
  const Overview({
    super.key,
    required this.user,
  });

  final Query$User$User user;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if (user.about?.isNotEmpty == true) Markdown(data: user.about!),
        if (user.statistics!.anime != null)
          Stats(
            onTap: () => context.router.push(
              AAnimeListRoute(username: user.name),
            ),
            left: [user.statistics!.anime!.count.toString(), 'Total Anime'],
            middle: [
              (user.statistics!.anime!.minutesWatched / 1440)
                  .toStringAsFixed(1),
              'Days Watched'
            ],
            right: [
              user.statistics!.anime!.meanScore.toStringAsFixed(1),
              'Mean Score'
            ],
          ),
        if (user.statistics!.manga != null)
          Stats(
            onTap: () => context.router.push(
              MMangaListRoute(username: user.name),
            ),
            left: [user.statistics!.manga!.count.toString(), 'Total Manga'],
            middle: [
              user.statistics!.manga!.chaptersRead.toString(),
              'Chapters Read'
            ],
            right: [
              user.statistics!.manga!.meanScore.toStringAsFixed(1),
              'Mean Score'
            ],
          ),
      ],
    );
  }
}

class Stats extends StatelessWidget {
  const Stats({
    super.key,
    required this.left,
    required this.middle,
    required this.right,
    required this.onTap,
  });

  final List<String> left;
  final List<String> middle;
  final List<String> right;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.secondaryContainer.withAlpha(100),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          runSpacing: 10,
          children: [
            Column(
              children: [
                Text(left[0]),
                Text(
                  left[1],
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  middle[0],
                ),
                Text(
                  middle[1],
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  right[0],
                ),
                Text(
                  right[1],
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key, required this.user});

  final Query$User$User user;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return FlexibleSpaceBar(
      collapseMode: CollapseMode.pin,
      background: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, theme.colorScheme.surface],
              ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
            },
            blendMode: BlendMode.srcOver,
            child: user.bannerImage != null
                ? GestureDetector(
                    onTap: () => showImage(context, user.bannerImage!),
                    child: CImage(
                      imageUrl: user.bannerImage!,
                      width: MediaQuery.of(context).size.width,
                      height: 149,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                    ),
                  )
                : Container(
                    height: 149,
                    color: Colors.grey,
                  ),
          ),
          const AutoLeadingButton(),
          // CImage(imageUrl: imageUrl)
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  CImage(
                    height: 110,
                    width: 110,
                    imageUrl: user.avatar!.large!,
                  ),
                  Text(
                    user.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StatRow extends StatelessWidget {
  final List<RowModel> rows;
  const StatRow({super.key, required this.rows});

  @override
  Widget build(BuildContext context) {
    // print(rows[0].);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var row in rows)
          Column(
            children: [
              Text(row.top),
              Text(row.bottom),
            ],
          ),
      ],
    );
  }
}

class RowModel {
  String top;
  String bottom;
  RowModel({required this.top, required this.bottom});
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      elevation: 1,
      child: Container(
        child: _tabBar,
      ),
    );
  }

  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
