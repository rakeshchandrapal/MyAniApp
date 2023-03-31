import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings.g.dart';

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

@Riverpod(keepAlive: true)
SharedPreferences sharedPref(SharedPrefRef ref) {
  throw UnimplementedError();
}

class Setting {
  late ListStyle animeList;
  late ListStyle mangaList;
  late ListStyle fallbackList;
  late ThemeMode theme;
  late String? token;
  Setting(SharedPreferences prefs) {
    animeList = ListStyle.values
        .byName(prefs.getString(SettingStrings.animeList.setting) ?? 'grid');
    mangaList = ListStyle.values
        .byName(prefs.getString(SettingStrings.mangaList.setting) ?? 'grid');
    fallbackList = ListStyle.values
        .byName(prefs.getString(SettingStrings.fallbackList.setting) ?? 'grid');
    theme = ThemeMode.values
        .byName(prefs.getString(SettingStrings.theme.setting) ?? 'system');
    token = prefs.getString(SettingStrings.token.setting);
  }
}

@Riverpod(keepAlive: true)
class Settings extends _$Settings {
  @override
  set state(Setting value) {
    super.state = value;
    var settings = ref.read(sharedPrefProvider);
    settings.setString(SettingStrings.animeList.setting, value.animeList.name);
    settings.setString(SettingStrings.mangaList.setting, value.mangaList.name);
    settings.setString(
        SettingStrings.fallbackList.setting, value.fallbackList.name);
    settings.setString(SettingStrings.theme.setting, value.theme.name);
    if (value.token?.isNotEmpty == true) {
      settings.setString(SettingStrings.token.setting, value.token!);
    }
  }

  @override
  Setting build() {
    var settings = ref.watch(sharedPrefProvider);
    return Setting(settings);
  }

  changeTheme(ThemeMode theme) {
    state = state..theme = theme;
  }

  changeListView(ListStyle list, SettingStrings setting) {
    switch (setting) {
      case SettingStrings.animeList:
        state = state..animeList = list;
        break;

      case SettingStrings.mangaList:
        // _ = settings.mangaList;
        state = state..mangaList = list;
        break;

      case SettingStrings.fallbackList:
        state = state..fallbackList = list;
        break;

      default:
        break;
    }
  }

  Future<bool> login(String token) async {
    state = state..token = token;
    return Future(() => true);
  }

  Future<bool> clearAll() async {
    return ref.read(sharedPrefProvider).clear();
    // return _instance.clear();
  }

  @override
  bool updateShouldNotify(Setting previous, Setting next) {
    return true;
  }
}

// @Riverpod(keepAlive: true)
// class settings extends _$settings {
//   // settings() {
//   //   loadSettings();
//   // }

//   ListStyle _animeList = ListStyle.grid;
//   ListStyle _mangaList = ListStyle.grid;
//   ListStyle _fallbackList = ListStyle.grid;
//   ThemeMode _theme = ThemeMode.system;
//   String? _token;

//   ListStyle get animeList => _animeList;
//   ListStyle get mangaList => _mangaList;
//   ListStyle get fallbackList => _fallbackList;
//   ThemeMode get theme => _theme;
//   String? get token => _token;

//   late SharedPreferences _instance;

//   loadSettings() {
//     _instance = ref.read(sharedPrefProvider);
//     _animeList = ListStyle.values.byName(
//         _instance.getString(SettingStrings.animeList.setting) ?? 'grid');
//     _mangaList = ListStyle.values.byName(
//         _instance.getString(SettingStrings.mangaList.setting) ?? 'grid');
//     _fallbackList = ListStyle.values.byName(
//         _instance.getString(SettingStrings.fallbackList.setting) ?? 'grid');
//     _theme = ThemeMode.values
//         .byName(_instance.getString(SettingStrings.theme.setting) ?? 'system');
//     _token = _instance.getString(SettingStrings.token.setting);
//   }

//   @override
//   settings build() {
//     loadSettings();
//     return this;
//   }

//   changeTheme(ThemeMode theme) {
//     _theme = theme;

//     _instance.setString(SettingStrings.theme.setting, theme.name);
//   }

//   changeListView(ListStyle list, SettingStrings setting) {
//     switch (setting) {
//       case SettingStrings.animeList:
//         _animeList = list;
//         break;

//       case SettingStrings.mangaList:
//         // _ = settings.mangaList;
//         _mangaList = list;
//         break;

//       case SettingStrings.fallbackList:
//         _fallbackList = list;
//         break;

//       default:
//         break;
//     }

//     return _instance.setString(setting.setting, list.name);
//   }

//   Future<bool> login(String token) async {
//     _token = token;

//     return _instance.setString(SettingStrings.token.setting, token);
//   }

//   Future<bool> clearAll() async {
//     return _instance.clear();
//   }
// }

// class SettingsProvider extends ChangeNotifier {
//   ListStyle _animeList = ListStyle.grid;
//   ListStyle _mangaList = ListStyle.grid;
//   ListStyle _fallbackList = ListStyle.grid;
//   ThemeMode _theme = ThemeMode.system;
//   String? _token;

//   ListStyle get animeList => _animeList;
//   ListStyle get mangaList => _mangaList;
//   ListStyle get fallbackList => _fallbackList;
//   ThemeMode get theme => _theme;
//   String? get token => _token;

//   late SharedPreferences _instance;

//   loadSettings(SharedPreferences prefs) {
//     _instance = prefs;
//     // _instance = ref.read(sharedPrefProvider);
//     _animeList = ListStyle.values.byName(
//         _instance.getString(SettingStrings.animeList.setting) ?? 'grid');
//     _mangaList = ListStyle.values.byName(
//         _instance.getString(SettingStrings.mangaList.setting) ?? 'grid');
//     _fallbackList = ListStyle.values.byName(
//         _instance.getString(SettingStrings.fallbackList.setting) ?? 'grid');
//     _theme = ThemeMode.values
//         .byName(_instance.getString(SettingStrings.theme.setting) ?? 'system');
//     _token = _instance.getString(SettingStrings.token.setting);
//   }

//   changeTheme(ThemeMode theme) {
//     _theme = theme;
//     notifyListeners();

//     _instance.setString(SettingStrings.theme.setting, theme.name);
//   }

//   changeListView(ListStyle list, SettingStrings setting) {
//     switch (setting) {
//       case SettingStrings.animeList:
//         _animeList = list;
//         break;

//       case SettingStrings.mangaList:
//         // _ = settings.mangaList;
//         _mangaList = list;
//         break;

//       case SettingStrings.fallbackList:
//         _fallbackList = list;
//         break;

//       default:
//         break;
//     }
//     notifyListeners();

//     return _instance.setString(setting.setting, list.name);
//   }

//   Future<bool> login(String token) async {
//     _token = token;
//     notifyListeners();

//     return _instance.setString(SettingStrings.token.setting, token);
//   }

//   Future<bool> clearAll() async {
//     return _instance.clear();
//   }
// }
