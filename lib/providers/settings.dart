import 'package:MyAniApp/providers/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ListStyle {
  grid,
  detailedList,
  simpleList,
}

class SharedPreferencesProvider {
  final Future<SharedPreferences> sharedPreferences;

  SharedPreferencesProvider(this.sharedPreferences);

  Stream<SharedPreferences> get prefsState => sharedPreferences.asStream();
}

class SettingsProvider extends ChangeNotifier {
  final Future<SharedPreferences> _instance = SharedPreferences.getInstance();

  ListStyle _list = ListStyle.grid;
  AppTheme _theme = AppTheme.dark;

  ListStyle get list => _list;
  AppTheme get theme => _theme;

  loadSettings() {
    _instance.then((i) {
      _list = ListStyle.values.byName(i.getString('anime.list') ?? 'grid');
      _theme = AppTheme.values.byName(i.getString('theme') ?? 'dark');

      notifyListeners();
    });
  }

  changeTheme(AppTheme theme) {
    _theme = theme;
    // print(theme);
    notifyListeners();

    _instance.then((i) {
      i.setString('theme', theme.name);
    });
  }

  changeListView(ListStyle list) {
    _list = list;
    // print(theme);
    notifyListeners();

    _instance.then((i) {
      i.setString('anime.list', list.name);
    });
  }
}
