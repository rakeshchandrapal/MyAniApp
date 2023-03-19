import 'package:MyAniApp/graphql/staff.graphql.dart';
import 'package:MyAniApp/pages/character.dart';
import 'package:MyAniApp/pages/media_view.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/graphql_error.dart';
import 'package:MyAniApp/widgets/html.dart';
import 'package:MyAniApp/widgets/image.dart';
import 'package:MyAniApp/widgets/media_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class Staff extends HookWidget {
  final String id;

  const Staff({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Staff(
      Options$Query$Staff(
        variables: Variables$Query$Staff(
          id: int.tryParse(id),
        ),
      ),
    );

    // print(Theme.of(context).appBarTheme);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
      ),
      body: Graphql(
        hook: hook,
        builder: (result) {
          // print(result.Staff?.characterMedia?.toJson());
          var description = result.Staff?.description != null
              ? result.Staff!.description!.replaceAll(metaRegex, '')
              : null;
          var meta = result.Staff?.description != null
              ? metaRegex.firstMatch(result.Staff!.description!)
              : null;

          var hasNext = result.Staff?.characterMedia?.pageInfo?.hasNextPage;
          FetchMoreOptions$Query$Staff opts = FetchMoreOptions$Query$Staff(
            variables: hasNext != null
                ? Variables$Query$Staff(
                    characterPage: (hook.result.parsedData?.Staff
                                ?.characterMedia?.pageInfo?.currentPage ??
                            1) +
                        1,
                  )
                : null,
            updateQuery: (previousResultData, fetchMoreResultData) {
              var list = [
                ...previousResultData!['Staff']!['characterMedia']!['edges'],
                ...fetchMoreResultData!['Staff']!['characterMedia']!['edges'],
              ];
              fetchMoreResultData['Staff']!['characterMedia']!['edges'] = list;
              return fetchMoreResultData;
            },
          );

          return NotificationListener<ScrollUpdateNotification>(
            onNotification: (notification) {
              if (!hook.result.isLoading &&
                  notification.metrics.pixels >=
                      notification.metrics.maxScrollExtent - 100 &&
                  hasNext == true) {
                hook.fetchMore(opts);
              }

              return false;
            },
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).padding.top,
                    ),
                    Title(
                      meta: meta?.group(0),
                      staff: result.Staff!,
                    ),
                    if (description != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 8),
                        child: Container(
                          constraints: const BoxConstraints(maxHeight: 200),
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Color.fromRGBO(92, 114, 138, 0.1),
                          ),
                          // width: /,
                          child: HTML(
                            data: removeHTML(description),
                          ),
                        ),
                      ),
                    Medias(medias: result.Staff!.characterMedia!.edges!)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    this.meta,
    required this.staff,
  });

  final String? meta;
  final Query$Staff$Staff staff;

  @override
  Widget build(BuildContext context) {
    // print();
    return Row(
      children: [
        SizedBox(
          height: 150,
          width: 100,
          child: AspectRatio(
            aspectRatio: 9 / 16,
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ImagePage(
                    image: staff.image!.large!,
                    tag: 'character',
                  ),
                ),
              ),
              child: Hero(
                tag: 'character',
                child: CachedNetworkImage(
                  imageUrl: staff.image!.large!,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            constraints: const BoxConstraints(minWidth: 20, maxHeight: 130),
            // height: 20,
            width: MediaQuery.of(context).size.width - 140,
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      Text(
                        staff.name!.userPreferred!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (staff.dateOfBirth != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Birthday: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: formattedDate(
                                  staff.dateOfBirth!.year,
                                  staff.dateOfBirth!.month,
                                  staff.dateOfBirth!.day,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (staff.age != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Age: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: staff.age!.toString()),
                            ],
                          ),
                        ),
                      if (staff.gender != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Gender: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: staff.gender),
                            ],
                          ),
                        ),
                      if (staff.yearsActive?.isNotEmpty == true)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Years Active: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: staff.yearsActive!.first!.toString()),
                              const TextSpan(text: '-'),
                              TextSpan(
                                text: (staff.yearsActive!.length >= 2
                                        ? staff.yearsActive![1]
                                        : 'Present')
                                    .toString(),
                              ),
                            ],
                          ),
                        ),
                      if (staff.homeTown != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Hometown: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: staff.homeTown),
                            ],
                          ),
                        ),
                      if (staff.bloodType != null)
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Blood Type: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: staff.bloodType),
                            ],
                          ),
                        ),
                      if (meta != null)
                        HTML(
                          data: removeHTML(meta!),
                          padding: const EdgeInsets.all(0),
                          // shrinkWrap: true,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Medias extends StatelessWidget {
  final List<Query$Staff$Staff$characterMedia$edges?> medias;

  const Medias({super.key, required this.medias});

  @override
  Widget build(BuildContext context) {
    var sorted = MediaCategory.sort(
        medias.whereType<Query$Staff$Staff$characterMedia$edges>().toList());
    var size = MediaQuery.of(context).size;

    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var item = sorted[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.year == 0 ? 'TBA' : item.year.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 5,
            ),
            GridView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: size.width ~/ (size.width > 800 ? 140 : 110),
                childAspectRatio: 10 / 17,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                var edge = item.medias[index];

                return CharacterMedia(edge: edge);
              },
              itemCount: item.medias.length,
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: sorted.length,
    );
  }
}

class CharacterMedia extends StatelessWidget {
  final Query$Staff$Staff$characterMedia$edges edge;

  const CharacterMedia({super.key, required this.edge});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Stack(
            children: [
              GestureDetector(
                onTap: () =>
                    context.push('/character/${edge.characters!.first!.id}'),
                child: CImage(
                  imageUrl: edge.characters!.first!.image!.large!,
                  height: double.maxFinite,
                  width: double.maxFinite,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () => context.push('/media/${edge.node!.id}'),
                  onLongPress: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => Sheet(media: edge.node!),
                  ),
                  child: CImage(
                    imageUrl: edge.node!.coverImage!.large!,
                    height: (size.width > 800 ? 80 : 60),
                    width: (size.width > 800 ? 60 : 40),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: edge.characters?.first?.name?.userPreferred,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (edge.characterRole != null)
                TextSpan(
                  text:
                      ' ${toBeginningOfSentenceCase(edge.characterRole!.name.toLowerCase())}',
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.labelSmall?.fontSize,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          ),
          overflow: TextOverflow.ellipsis,
        ),
        // Text(
        //   edge.characters!.first!.name!.userPreferred!,
        //   style: TextStyle(
        //     fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
        //     fontWeight: FontWeight.bold,
        //   ),
        //   overflow: TextOverflow.ellipsis,
        //   // maxLines: 1,
        // ),
        Text(
          edge.node!.title!.userPreferred!,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.labelSmall?.fontSize,
            fontWeight: FontWeight.w400,
          ),
          overflow: TextOverflow.ellipsis,
          // maxLines: 1,
        ),
      ],
    );
  }
}

class MediaCategory {
  int year;
  List<Query$Staff$Staff$characterMedia$edges> medias = [];
  MediaCategory({required this.year});

  static List<MediaCategory> sort(
      List<Query$Staff$Staff$characterMedia$edges> medias) {
    List<MediaCategory> listsP = [];

    for (var media in medias) {
      var o = listsP
          .indexWhere((element) => element.year == media.node?.startDate?.year);
      if (o == -1) {
        if (media.node?.startDate?.year == null) {
          var idx = listsP.indexWhere((element) => element.year == 0);
          if (idx == -1) {
            listsP.insert(0, MediaCategory(year: 0)..medias.add(media));
          } else {
            listsP[idx].medias.add(media);
          }
          continue;
        }
        listsP.add(MediaCategory(year: media.node!.startDate!.year!)
          ..medias.add(media));
      } else {
        listsP[o].medias.add(media);
      }
    }
    return listsP;
  }
}
