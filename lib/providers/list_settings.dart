import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/shared_prefs.dart';

enum ListType { grid, list, simple }

class _ListSettings {
  // update toJson when ever update this
  final ListType inProgress;
  final ListType animeList;
  final ListType mangaList;
  final ListType mediaRelations;
  final ListType mediaSimilar;
  final ListType character;
  final ListType staffVA;
  final ListType staffProduction;
  final ListType search;
  final ListType studio;

  _ListSettings({
    required this.inProgress,
    required this.animeList,
    required this.mangaList,
    required this.mediaRelations,
    required this.mediaSimilar,
    required this.character,
    required this.staffVA,
    required this.staffProduction,
    required this.search,
    required this.studio,
  });

  Map<String, String> toJson() {
    return {
      "inProgress": inProgress.name,
      "animeList": animeList.name,
      "mangaList": mangaList.name,
      "mediaRelations": mediaRelations.name,
      "mediaSimilar": mediaSimilar.name,
      "character": character.name,
      "staffVA": staffVA.name,
      "staffProduction": staffProduction.name,
      "search": search.name,
      "studio": studio.name,
    };
  }

  _ListSettings copyWith({
    ListType? inProgress,
    ListType? animeList,
    ListType? mangaList,
    ListType? mediaRelations,
    ListType? mediaSimilar,
    ListType? character,
    ListType? staffVA,
    ListType? staffProduction,
    ListType? search,
    ListType? studio,
  }) {
    return _ListSettings(
      inProgress: inProgress ?? this.inProgress,
      animeList: animeList ?? this.animeList,
      mangaList: mangaList ?? this.mangaList,
      mediaRelations: mediaRelations ?? this.mediaRelations,
      mediaSimilar: mediaSimilar ?? this.mediaSimilar,
      character: character ?? this.character,
      staffVA: staffVA ?? this.staffVA,
      staffProduction: staffProduction ?? this.staffProduction,
      search: search ?? this.search,
      studio: studio ?? this.studio,
    );
  }
}

class _SettingsNotifier extends Notifier<_ListSettings> {
  @override
  _ListSettings build() {
    return _ListSettings(
      inProgress: _getEnum("list.inProgress"),
      animeList: _getEnum("list.animeList"),
      mangaList: _getEnum("list.mangaList"),
      mediaRelations: _getEnum("list.mediaRelations"),
      mediaSimilar: _getEnum("list.mediaSimilar"),
      character: _getEnum("list.character"),
      staffVA: _getEnum("list.staffVA"),
      staffProduction: _getEnum("list.staffProduction"),
      search: _getEnum("list.search"),
      studio: _getEnum("list.studio"),
    );
  }

  void update(_ListSettings s) {
    var prefs = ref.read(sharedPrefsProvider);

    var json = state.toJson();

    s.toJson().forEach((key, value) {
      if (json[key] != value) {
        prefs.setString(key, value);
      }
    });

    state = s;

    ref.notifyListeners();
  }

  ListType _getEnum(String key) {
    var prefs = ref.read(sharedPrefsProvider);

    if (prefs.containsKey(key)) {
      var value = prefs.getString(key)!;

      if (ListType.values.any(
        (element) => element.name == value,
      )) {
        return ListType.values.firstWhere(
          (element) => element.name == value,
        );
      }
    }
    return ListType.grid;
  }
}

final listSettingsProvider =
    NotifierProvider<_SettingsNotifier, _ListSettings>(() {
  return _SettingsNotifier();
});
