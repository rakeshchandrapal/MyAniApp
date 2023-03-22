import 'package:MyAniApp/graphql/Viewer.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnilistSettings extends StatelessWidget {
  const AnilistSettings({super.key});

  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    print(user.user?.options?.toJson());

    return SizedBox(
      height: MediaQuery.of(context).size.height - 60,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              title: Text('Settings'),
              floating: true,
              snap: true,
            ),
          ],
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const Text('Airing Notifications'),
              //       Transform.scale(
              //         scale: 0.9,
              //         child: Switch.adaptive(
              //           value: user.user?.options?.airingNotifications ?? false,
              //           onChanged: (value) => user.updateSettings(
              //             Variables$Mutation$UpdateUser(
              //               airingNotifications: value,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SwitchListTile.adaptive(
                value: user.user?.options?.airingNotifications ?? false,
                onChanged: (value) => user.updateSettings(
                  Variables$Mutation$UpdateUser(
                    airingNotifications: value,
                  ),
                ),
                title: const Text('Airing Notification'),
              ),
              SwitchListTile.adaptive(
                value: user.user?.options?.displayAdultContent ?? false,
                onChanged: (value) => user.updateSettings(
                  Variables$Mutation$UpdateUser(
                    displayAdultContent: value,
                  ),
                ),
                title: const Text('18+ content'),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const Text('18+ content'),
              //       Transform.scale(
              //         scale: 0.9,
              //         child: Switch.adaptive(
              //           value: user.user?.options?.displayAdultContent ?? false,
              //           onChanged: (value) => user.updateSettings(
              //             Variables$Mutation$UpdateUser(
              //               displayAdultContent: value,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Title Language',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    DropdownSearch<Enum$UserTitleLanguage>(
                      items: Enum$UserTitleLanguage.values.take(3).toList(),
                      selectedItem: user.user?.options?.titleLanguage ??
                          Enum$UserTitleLanguage.ROMAJI,
                      itemAsString: (item) {
                        if (item == Enum$UserTitleLanguage.NATIVE) {
                          return 'Native (進撃の巨人)';
                        } else if (item == Enum$UserTitleLanguage.ROMAJI) {
                          return 'Romaji (Shingeki no Kyojin)';
                        } else if (item == Enum$UserTitleLanguage.ENGLISH) {
                          return 'English (Attack on Titan)';
                        }

                        return item.name;
                      },
                      onChanged: (value) => user.updateSettings(
                        Variables$Mutation$UpdateUser(titleLanguage: value),
                      ),
                      popupProps: const PopupProps.dialog(),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Staff & Character Name Language',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    DropdownSearch<Enum$UserStaffNameLanguage>(
                      onChanged: (value) => user.updateSettings(
                        Variables$Mutation$UpdateUser(
                          staffNameLanguage: value,
                        ),
                      ),
                      items: Enum$UserStaffNameLanguage.values.take(3).toList(),
                      selectedItem: user.user?.options?.staffNameLanguage ??
                          Enum$UserStaffNameLanguage.ROMAJI_WESTERN,
                      itemAsString: (item) {
                        if (item == Enum$UserStaffNameLanguage.NATIVE) {
                          return 'Native (キルア=ゾルディック)';
                        } else if (item == Enum$UserStaffNameLanguage.ROMAJI) {
                          return 'Romaji (Zoldyck Killua)';
                        } else if (item ==
                            Enum$UserStaffNameLanguage.ROMAJI_WESTERN) {
                          return 'Romaji, Western Order (Killua Zoldyck)';
                        }

                        return item.name;
                      },
                      popupProps: const PopupProps.dialog(),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Activity Merge Time',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Episode and chapter activity created within this time period will be merged together (E.g. Watched episodes 10-12)',
                        style: Theme.of(context).primaryTextTheme.bodySmall,
                      ),
                    ),
                    DropdownSearch<int>(
                      onChanged: (value) => user.updateSettings(
                        Variables$Mutation$UpdateUser(
                          activityMergeTime: value,
                        ),
                      ),
                      items: const [
                        0,
                        30,
                        60,
                        120,
                        180,
                        360,
                        720,
                        1440,
                        2880,
                        4320,
                        10080,
                        20160,
                        20561
                      ],
                      itemAsString: (item) {
                        if (item == 0) {
                          return 'Never';
                        } else if (item == 30) {
                          return '30 minutes';
                        } else if (item == 60) {
                          return '1 hours';
                        } else if (item == 120) {
                          return '2 hours';
                        } else if (item == 180) {
                          return '3 hours';
                        } else if (item == 360) {
                          return '6 hours';
                        } else if (item == 720) {
                          return '12 hours';
                        } else if (item == 1440) {
                          return '1 day';
                        } else if (item == 2880) {
                          return '2 days';
                        } else if (item == 4320) {
                          return '3 days';
                        } else if (item == 10080) {
                          return '1 week';
                        } else if (item == 20160) {
                          return '2 weeks';
                        } else {
                          return 'Always';
                        }
                      },
                      selectedItem: user.user?.options?.activityMergeTime,
                      popupProps: const PopupProps.dialog(),
                    )
                  ],
                ),
              ),
              CheckboxListTile(
                value: user.user?.options?.restrictMessagesToFollowing,
                // selected:
                //     user.user?.options?.restrictMessagesToFollowing ?? false,
                onChanged: (value) => user.updateSettings(
                  Variables$Mutation$UpdateUser(
                    restrictMessagesToFollowing: value,
                  ),
                ),
                title: const Text('Allow only users I follow to message me'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Scoring System',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    DropdownSearch<Enum$ScoreFormat>(
                      onChanged: (value) => user.updateSettings(
                        Variables$Mutation$UpdateUser(
                          scoreFormat: value,
                        ),
                      ),
                      items: Enum$ScoreFormat.values
                          .take(Enum$ScoreFormat.values.length - 1)
                          .toList(),
                      selectedItem: user.user?.mediaListOptions?.scoreFormat,
                      itemAsString: (item) {
                        if (item == Enum$ScoreFormat.POINT_100) {
                          return '100 Point (55/100)';
                        } else if (item == Enum$ScoreFormat.POINT_10_DECIMAL) {
                          return '10 Point Decimal (5.5/10)';
                        } else if (item == Enum$ScoreFormat.POINT_10) {
                          return '10 Point (5/10)';
                        } else if (item == Enum$ScoreFormat.POINT_5) {
                          return '5 Star (3/5)';
                        } else if (item == Enum$ScoreFormat.POINT_3) {
                          return '3 Point Smiley :)';
                        }
                        return '';
                      },
                      popupProps: const PopupProps.dialog(),
                    ),
                  ],
                ),
              )
              // Row(
              //   children: [
              //     Checkbox(
              //       value: user.user?.options?.restrictMessagesToFollowing,
              //       onChanged: (value) => user.updateSettings(
              //         Options$Mutation$UpdateUser(
              //           variables: Variables$Mutation$UpdateUser(
              //             restrictMessagesToFollowing: value,
              //           ),
              //         ),
              //       ),
              //     ),
              //     const Text('Allow only users I follow to message me')
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
