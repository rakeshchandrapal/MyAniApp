import 'package:MyAniApp/graphql/User.graphql.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/markdown.dart';
import 'package:MyAniApp/widgets/media_card.dart';
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
    // var user = context.watch<User>();

    var hook = useQuery$User(
      Options$Query$User(
        variables: Variables$Query$User(name: username),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) {
        var aDays = (result.User!.statistics!.anime!.minutesWatched / 1440)
            .toStringAsFixed(1);

        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8)
                        ],
                      ).createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.srcOver,
                    child: result.User!.bannerImage != null
                        ? Image.network(
                            result.User!.bannerImage!,
                            width: MediaQuery.of(context).size.width,
                            height: 149,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            height: 149,
                            color: Colors.grey,
                          ),
                  ),
                  // Positioned(
                  //   right: 0,
                  //   child: SafeArea(
                  //     child: Row(
                  //       children: [
                  //         IconButton(
                  //             icon: const Icon(Icons.notifications),
                  //             color: Colors.white,
                  //             onPressed: () => context.push('/notifications')),
                  //         PopupMenuButton(
                  //           itemBuilder: (context) {
                  //             return [
                  //               PopupMenuItem(
                  //                 child: const Text('Open Settings'),
                  //                 onTap: () => context.push('/settings'),
                  //               ),
                  //               PopupMenuItem(
                  //                 child: const Text('View on Anilist'),
                  //                 onTap: () => _launchInWebViewOrVC(
                  //                   Uri(
                  //                     scheme: 'https',
                  //                     host: 'anilist.co',
                  //                     path: '/user/${user.user!.name}',
                  //                   ),
                  //                 ),
                  //               )
                  //             ];
                  //           },
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    bottom: 0,
                    child: Image.network(
                      result.User!.avatar!.large!,
                      height: 120,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 130,
                    child: Text(
                      result.User!.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  if (context.router.canPop())
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: BackButton(
                          onPressed: () => context.router.pop(),
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
              Container(
                // height: 100,
                constraints: const BoxConstraints(maxHeight: 150),
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(92, 114, 138, 0.1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Markdown(
                  data: result.User?.about ?? 'No bio',
                ),
              ),
              Text(
                'Stats',
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (result.User!.statistics?.anime?.count != null)
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(92, 114, 138, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: StatRow(
                    rows: [
                      RowModel(
                        top: result.User!.statistics!.anime!.count.toString(),
                        bottom: 'Total Anime',
                      ),
                      RowModel(
                        top: aDays,
                        bottom: 'Days Watched',
                      ),
                      RowModel(
                        top: result.User!.statistics!.anime!.meanScore
                            .toStringAsFixed(1),
                        bottom: 'Mean Score',
                      ),
                    ],
                  ),
                ),
              if (result.User!.statistics?.manga?.count != null)
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(92, 114, 138, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: StatRow(
                    rows: [
                      RowModel(
                        top: result.User!.statistics!.manga!.count.toString(),
                        bottom: 'Total Manga',
                      ),
                      RowModel(
                        top: result.User!.statistics!.manga!.chaptersRead
                            .toString(),
                        bottom: 'Chapters Read',
                      ),
                      RowModel(
                        top: result.User!.statistics!.manga!.meanScore
                            .toStringAsFixed(1),
                        bottom: 'Mean Score',
                      ),
                    ],
                  ),
                ),
              if (result.User?.favourites?.anime?.edges?.isNotEmpty ??
                  false) ...[
                Text(
                  "Favorite Animes",
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: 160,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 10,
                    right: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(92, 114, 138, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var fav
                          in result.User!.favourites!.anime!.edges!.take(4))
                        Container(
                          margin: const EdgeInsets.only(left: 8, right: 8),
                          width: 70,
                          child: MediaCard(
                            media: fav!.node!,
                            onTap: () => context.router.push(
                              MediaRoute(id: fav.node!.id!),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
              if (result.User?.favourites?.manga?.edges?.isNotEmpty ??
                  false) ...[
                Text(
                  "Favorite Mangas",
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: 160,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    left: 10,
                    right: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(92, 114, 138, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (var fav
                          in result.User!.favourites!.manga!.edges!.take(4))
                        Container(
                          margin: const EdgeInsets.only(left: 8, right: 8),
                          width: 70,
                          child: MediaCard(
                            media: fav!.node!,
                            onTap: () => context.router.push(
                              MediaRoute(id: fav.node!.id!),
                            ),
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ],
          ),
        );
      },
    );
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
