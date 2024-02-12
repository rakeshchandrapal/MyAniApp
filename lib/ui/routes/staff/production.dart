import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/routes/staff/__generated__/staff.data.gql.dart';

class StaffProductionPage extends StatelessWidget {
  const StaffProductionPage({
    super.key,
    required this.medias,
  });

  final GStaffData_Staff_staffMedia medias;

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
                'Production Roles',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        MediaCards(
          primary: false,
          list: medias.edges!.map((e) => e!.node!).toList(),
          aspectRatio: 1.8 / 3,
          underTitle: (media, style, index) => Text(
            medias.edges![index]!.staffRole ?? '',
          ),
          onTap: (media, idx) => context.push('/media/${media.id}/overview'),
        ),
      ],
    );
  }
}
