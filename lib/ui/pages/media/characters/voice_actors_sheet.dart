import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/characters/characters.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/image.dart';

class VoiceActorsSheet extends StatelessWidget {
  const VoiceActorsSheet({super.key, required this.voiceActors});

  final List<Query$Characters$Media$characters$edges$voiceActorRoles>
      voiceActors;

  @override
  Widget build(BuildContext context) {
    var sorted = _Actors.sort(voiceActors);

    return DefaultTabController(
      length: sorted.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 0,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              for (var tab in sorted)
                Tab(
                  text: tab.language,
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (var tab in sorted)
              ListView.builder(
                itemBuilder: (context, index) {
                  var actor = tab.actors[index];

                  return VoiceActorCard(voiceActor: actor);
                },
                itemCount: tab.actors.length,
              )
          ],
        ),
      ),
    );
  }
}

class VoiceActorCard extends StatelessWidget {
  const VoiceActorCard({
    super.key,
    required this.voiceActor,
  });

  final Query$Characters$Media$characters$edges$voiceActorRoles voiceActor;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: theme.colorScheme.surfaceVariant.withOpacity(0.7),
          width: 0.7,
        ),
      ),
      surfaceTintColor: theme.colorScheme.surfaceVariant,
      child: InkWell(
        onTap: () => context.router.push(
          StaffRoute(id: voiceActor.voiceActor!.id),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: CImage(
                imageUrl: voiceActor.voiceActor!.image!.large!,
                height: 100,
                width: 70,
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(voiceActor.voiceActor!.name!.userPreferred!),
                        if (voiceActor.roleNotes != null)
                          Text(
                            voiceActor.roleNotes!,
                            style: theme.textTheme.labelSmall
                                ?.copyWith(fontSize: 10),
                          ),
                        Text(
                          voiceActor.voiceActor!.languageV2!,
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showVoiceActors(
    BuildContext context,
    List<Query$Characters$Media$characters$edges$voiceActorRoles?>
        voiceActors) {
  showModalBottomSheet(
    context: context,
    builder: (context) => VoiceActorsSheet(
      voiceActors: voiceActors
          .whereType<Query$Characters$Media$characters$edges$voiceActorRoles>()
          .toList(),
    ),
  );
}

// used to sort voice actors by language
class _Actors {
  const _Actors(this.actors, this.language);

  final List<Query$Characters$Media$characters$edges$voiceActorRoles> actors;
  final String language;

  static List<_Actors> sort(
      List<Query$Characters$Media$characters$edges$voiceActorRoles>
          voiceActors) {
    List<_Actors> list = [];

    for (var actor in voiceActors) {
      var index = list.indexWhere(
          (element) => element.language == actor.voiceActor?.languageV2);

      if (index != -1) {
        list[index].actors.add(actor);
      } else {
        list.add(_Actors([actor], actor.voiceActor!.languageV2!));
      }
    }

    return list;
  }
}
