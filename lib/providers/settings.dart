import 'package:MyAniApp/providers/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ListStyle {
  grid,
  detailedList,
  simpleList,
}

enum SettingStrings {
  animeList('list.anime'),
  mangaList('list.manga'),
  fallbackList('list.fallback'),
  theme('theme');

  const SettingStrings(this.setting);
  final String setting;
}

class SharedPreferencesProvider {
  final Future<SharedPreferences> sharedPreferences;

  SharedPreferencesProvider(this.sharedPreferences);

  Stream<SharedPreferences> get prefsState => sharedPreferences.asStream();
}

class SettingsProvider extends ChangeNotifier {
  final Future<SharedPreferences> _instance = SharedPreferences.getInstance();

  ListStyle _animeList = ListStyle.grid;
  ListStyle _mangaList = ListStyle.grid;
  ListStyle _fallbackList = ListStyle.grid;
  AppTheme _theme = AppTheme.dark;

  ListStyle get animeList => _animeList;
  ListStyle get mangaList => _mangaList;
  ListStyle get fallbackList => _fallbackList;
  AppTheme get theme => _theme;

  loadSettings() {
    _instance.then((i) {
      _animeList = ListStyle.values
          .byName(i.getString(SettingStrings.animeList.setting) ?? 'grid');
      _mangaList = ListStyle.values
          .byName(i.getString(SettingStrings.mangaList.setting) ?? 'grid');
      _fallbackList = ListStyle.values
          .byName(i.getString(SettingStrings.fallbackList.setting) ?? 'grid');
      _theme = AppTheme.values
          .byName(i.getString(SettingStrings.theme.setting) ?? 'dark');

      notifyListeners();
    });
  }

  changeTheme(AppTheme theme) {
    _theme = theme;
    // print(theme);
    notifyListeners();

    _instance.then((i) {
      i.setString(SettingStrings.theme.setting, theme.name);
    });
  }

  changeListView(ListStyle list, SettingStrings setting) {
    // _animeList = list;
    // print(theme);
    // notifyListeners();

    _instance.then((i) {
      i.setString(setting.setting, list.name).then((value) => loadSettings());
    });
  }
}
