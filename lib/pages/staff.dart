import 'package:MyAniApp/graphql/staff.graphql.dart';
import 'package:MyAniApp/pages/character.dart';
import 'package:MyAniApp/pages/media_view.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/graphql_error.dart';
import 'package:MyAniApp/widgets/html.dart';
import 'package:MyAniApp/widgets/lists/cards.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

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

    return Graphql(
      hook: hook,
      builder: (result) {
        // print(result.Staff?.characterMedia?.toJson());
        var description = result.Staff?.description != null
            ? result.Staff!.description!.replaceAll(metaRegex, '')
            : null;
        var meta = result.Staff?.description != null
            ? metaRegex.firstMatch(result.Staff!.description!)
            : null;

        return SafeArea(
          child: NotificationListener<ScrollUpdateNotification>(
            // onNotification: (notification) {
            //   if (!hook.result.isLoading &&
            //       notification.metrics.pixels >=
            //           notification.metrics.maxScrollExtent - 100 &&
            //       hasNext == true) {
            //     hook.fetchMore(nextOpts);
            //   }

            //   return false;
            // },
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
          ),
        );
      },
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
    return Stack(
      children: [
        Row(
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: staff.gender),
                                ],
                              ),
                            ),
                          if (staff.yearsActive != null)
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Years Active: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                      text:
                                          staff.yearsActive!.first!.toString()),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
        ),
        if (context.canPop())
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: BackButton(
                onPressed: () => context.pop(),
                color: Colors.white,
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

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var item = sorted[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.year.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 5,
            ),
            Cards(
              list: item.medias.map((e) => e.node).toList(),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
        if (media.node?.startDate?.year == null) continue;
        listsP.add(MediaCategory(year: media.node!.startDate!.year!)
          ..medias.add(media));
      } else {
        listsP[o].medias.add(media);
      }
    }
    return listsP;
  }
}
