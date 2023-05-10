import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/staff/staff.graphql.dart';
import 'package:myaniapp/ui/common/back_button.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/persistent_header.dart';
import 'package:myaniapp/ui/pages/staff/production.dart';
import 'package:myaniapp/ui/pages/staff/voice.dart';

@RoutePage()
class StaffPage extends StatefulHookWidget {
  const StaffPage({super.key, required this.id});

  final int id;

  @override
  State<StaffPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<StaffPage> {
  bool onList = false;

  bool hasTabs(Query$Staff$Staff staff) {
    return staff.characterMedia!.edges!.isNotEmpty == true &&
        staff.staffMedia!.edges!.isNotEmpty == true;
  }

  // final GlobalKey _keyRed = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Staff(
      Options$Query$Staff(
        variables: Variables$Query$Staff(
          id: widget.id,
          onList: onList == true ? true : null,
        ),
      ),
    );

    return RefreshIndicator(
      onRefresh: hook.refetch,
      notificationPredicate: (notification) => true,
      // onNotification: (notification) {
      //   print(notification);
      //   return true;
      // },
      child: Scaffold(
        appBar: hook.result.isLoading && hook.result.parsedData == null
            ? AppBar()
            : null,
        body: Graphql(
          hook: hook,
          builder: (result) => DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  Appbar(staff: result.Staff!),
                  if (result.Staff!.description?.isNotEmpty == true)
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      expandedHeight: 184,
                      primary: false,
                      flexibleSpace: Container(
                        margin: const EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .surfaceVariant
                              .withAlpha(50),
                          borderRadius: imageRadius,
                        ),
                        constraints: const BoxConstraints(maxHeight: 184),
                        height: 184,
                        child: Markdown(
                          data: result.Staff!.description!,
                        ),
                      ),
                    ),
                  if (hasTabs(result.Staff!))
                    SliverPersistentHeader(
                      delegate: SliverPersistentHeaderTabBarDelegate(
                        const TabBar(
                          tabs: [
                            Tab(text: "Voice"),
                            Tab(text: 'Production'),
                          ],
                        ),
                      ),
                      pinned: true,
                    ),
                ];
              },
              body: hasTabs(result.Staff!)
                  ? TabBarView(
                      children: [
                        Voices(
                          hook: hook,
                          staff: result.Staff!,
                          onList: onList,
                          onListTap: () => setState(() => onList = !onList),
                        ),
                        Production(
                          hook: hook,
                          medias: result.Staff!.staffMedia!,
                          onList: onList,
                          onListTap: () => setState(() => onList = !onList),
                        ),
                      ],
                    )
                  : result.Staff!.staffMedia!.edges!.isNotEmpty == true
                      ? Production(
                          hook: hook,
                          medias: result.Staff!.staffMedia!,
                          onList: onList,
                          onListTap: () => setState(() => onList = !onList),
                        )
                      : Voices(
                          hook: hook,
                          staff: result.Staff!,
                          onList: onList,
                          onListTap: () => setState(() => onList = !onList),
                        ),
            ),
          ),
        ),
      ),
    );
  }
}

// class Appbar extends StatefulWidget {
//   const Appbar({
//     super.key,
//     required this.staff,
//   });

//   final Query$Staff$Staff staff;

//   @override
//   State<Appbar> createState() => _AppbarState();
// }

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.staff});

  final Query$Staff$Staff staff;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 216,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: _Staff(
          staff: staff,
        ),
      ),
    );
  }
}

class _Staff extends StatelessWidget {
  const _Staff({
    required this.staff,
  });

  final Query$Staff$Staff staff;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const AppBackButton(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: imageRadius,
                child: CImage(
                  imageUrl: staff.image!.large!,
                  height: 150,
                  width: 100,
                  viewer: true,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      staff.name!.userPreferred!,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  if (staff.dateOfBirth != null &&
                      staff.dateOfBirth!.toDateString() != null)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Birthday: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: staff.dateOfBirth!.toDateString()!,
                          )
                        ],
                      ),
                    ),
                  if (staff.dateOfDeath != null &&
                      staff.dateOfDeath!.toDateString() != null)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Death: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: staff.dateOfDeath!.toDateString()!,
                          )
                        ],
                      ),
                    ),
                  if (staff.age != null)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Age: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: staff.age!.toString(),
                          )
                        ],
                      ),
                    ),
                  if (staff.gender != null)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Gender: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: staff.gender,
                          )
                        ],
                      ),
                    ),
                  if (staff.bloodType != null)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Blood Type: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: staff.bloodType,
                          )
                        ],
                      ),
                    ),
                  if (staff.yearsActive?.isNotEmpty == true)
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Years Active: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: staff.yearsActive![0]!.toString(),
                          ),
                          const TextSpan(text: '-'),
                          TextSpan(
                              text: staff.yearsActive!.length >= 2
                                  ? staff.yearsActive![1]!.toString()
                                  : 'Present')
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
