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
  token('token'),
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
  String? _token;

  ListStyle get animeList => _animeList;
  ListStyle get mangaList => _mangaList;
  ListStyle get fallbackList => _fallbackList;
  AppTheme get theme => _theme;
  String? get token => _token;

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
      _token = i.getString(SettingStrings.token.setting);

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

    switch (setting) {
      case SettingStrings.animeList:
        _animeList = list;
        break;

      case SettingStrings.mangaList:
        // _ = settings.mangaList;
        _mangaList = list;
        break;

      case SettingStrings.fallbackList:
        _fallbackList = list;
        break;

      default:
        break;
    }

    notifyListeners();

    _instance.then((i) {
      i.setString(setting.setting, list.name);
    });
  }

  Future<bool> login(String token) async {
    _token = token;
    notifyListeners();

    var i = await _instance;

    // _instance.then((i) {
    return await i.setString(SettingStrings.token.setting, token);
    // });
  }

  Future<bool> clearAll() async {
    var i = await _instance;
    // _instance.then((i) {
    return await i.clear();
    // });
  }
}
