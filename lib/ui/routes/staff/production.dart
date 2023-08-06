import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/staff/staff.graphql.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';

@RoutePage()
class StaffProductionPage extends StatelessWidget {
  const StaffProductionPage({
    super.key,
    required this.medias,
  });

  final Query$Staff$Staff$staffMedia medias;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Staff Roles',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        Expanded(
          child: MediaCards(
            list: medias.edges!.map((e) => e!.node!).toList(),
            aspectRatio: 1.8 / 3,
            underTitle: (media, style, index) => Text(
              medias.edges![index]!.staffRole ?? '',
            ),
          ),
        ),
      ],
    );
  }
}
