import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/staff/staff.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/image.dart';

@RoutePage()
class StaffVoicePage extends StatelessWidget {
  const StaffVoicePage({super.key, required this.medias});

  final Query$Staff$Staff$characterMedia medias;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var years = _Media.sort(medias.edges!.cast());

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var year = years[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              year.year == 0 ? 'TBA' : year.year.toString(),
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            GridCards(
              primary: false,
              padding: const EdgeInsets.symmetric(vertical: 8),
              card: (index) {
                var media = year.medias[index];

                return GridCard(
                  imageUrl: media.characters!.first!.image!.large!,
                  onTap: () => context.pushRoute(
                    CharacterRoute(id: media.characters!.first!.id),
                  ),
                  aspectRatio: 1.7 / 3,
                  title: media.characters!.first!.name!.userPreferred,
                  underTitle: Text(media.node!.title!.userPreferred!),
                  chips: [
                    SizedBox(
                      width: 50,
                      child: AspectRatio(
                        aspectRatio: 2 / 3,
                        child: CImage(
                          imageUrl: media.node!.coverImage!.extraLarge!,
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: year.medias.length,
            )
          ],
        );
      },
      itemCount: years.length,
    );
  }
}

// used to sort media by year
class _Media {
  const _Media(this.medias, this.year);

  final List<Query$Staff$Staff$characterMedia$edges> medias;
  final int year;

  static List<_Media> sort(List<Query$Staff$Staff$characterMedia$edges> edges) {
    List<_Media> list = [];

    for (var edge in edges) {
      var index = list
          .indexWhere((element) => element.year == edge.node!.startDate?.year);

      if (index != -1) {
        list[index].medias.add(edge);
      } else if (edge.node!.startDate?.year == null) {
        var tba = list.indexWhere((element) => element.year == 0);

        if (tba != -1) {
          list[tba].medias.add(edge);
        } else {
          list.insert(0, _Media([edge], 0));
        }

        continue;
      } else {
        // print(edge.node!.title!.userPreferred);
        list.add(_Media([edge], edge.node!.startDate!.year!));
      }
    }

    return list;
  }
}
