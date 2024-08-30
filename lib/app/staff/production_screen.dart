import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/staff/staff.graphql.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class StaffProductionRolesScreen extends ConsumerStatefulWidget {
  const StaffProductionRolesScreen({super.key, required this.staffRoles});

  final Query$Staff$Staff$staffMedia staffRoles;

  @override
  ConsumerState<StaffProductionRolesScreen> createState() =>
      _StaffProductionRolesScreenState();
}

class _StaffProductionRolesScreenState
    extends ConsumerState<StaffProductionRolesScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var listSetting = ref.watch(listSettingsProvider.select(
      (value) => value.staffProduction,
    ));

    return MediaCards(
      listType: listSetting,
      padding: listSetting == ListType.grid ? const EdgeInsets.all(8) : null,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        childAspectRatio: GridCard.listRatio,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        var media = widget.staffRoles.edges![index]!;

        return MediaCard(
          listType: listSetting,
          image: media.node!.coverImage!.extraLarge!,
          title: media.node!.title!.userPreferred,
          blur: media.node!.isAdult ?? false,
          onTap: () => context.pushRoute(
            MediaRoute(id: media.node!.id, placeholder: media.node),
          ),
          // onTap: () => context.push("/media/${media.node!.id}/overview",
          //     extra: {"media": media.node}),
          onLongPress: () => MediaSheet.show(context, media.node!),
          underTitle: Show(
            when: media.staffRole != null,
            child: () => Text(
              media.staffRole!,
              style: context.theme.textTheme.labelSmall,
            ),
          ),
        );
      },
      itemCount: widget.staffRoles.edges!.length,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
