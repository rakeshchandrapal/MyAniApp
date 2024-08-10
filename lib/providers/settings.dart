import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/providers/shared_prefs.dart';

class _Settings {
  final String? token;
  final ThemeMode themeMode;
  final Color? primaryColor;
  final bool blurCovers;
  final bool showEmbedMediaCard;

  _Settings({
    required this.token,
    required this.themeMode,
    required this.primaryColor,
    required this.blurCovers,
    required this.showEmbedMediaCard,
  });
}

class _SettingsNotifier extends Notifier<_Settings> {
  @override
  _Settings build() {
    var sharedPrefs = ref.watch(sharedPrefsProvider);

    return _Settings(
      token: sharedPrefs.getString("token"),
      themeMode: ThemeMode.values.firstWhere((element) =>
          element.name ==
          (sharedPrefs.getString("themeMode") ?? ThemeMode.system.name)),
      primaryColor: sharedPrefs.containsKey("themeColor")
          ? Color(sharedPrefs.getInt("themeColor")!)
          : null,
      blurCovers: sharedPrefs.getBool("blurCovers") ?? false,
      showEmbedMediaCard: sharedPrefs.getBool("showEmbedMediaCard") ?? false,
    );
  }

  void updateThemeMode(ThemeMode themeMode) {
    state = _Settings(
      token: state.token,
      themeMode: themeMode,
      primaryColor: state.primaryColor,
      blurCovers: state.blurCovers,
      showEmbedMediaCard: state.showEmbedMediaCard,
    );

    ref.read(sharedPrefsProvider).setString("themeMode", themeMode.name);

    ref.notifyListeners();
  }

  void updatePrimaryColor(Color color) {
    state = _Settings(
      token: state.token,
      themeMode: state.themeMode,
      primaryColor: color,
      showEmbedMediaCard: state.showEmbedMediaCard,
      blurCovers: state.blurCovers,
    );

    ref.read(sharedPrefsProvider).setInt("themeColor", color.value);

    ref.notifyListeners();
  }

  void updateBlurCovers(bool blur) {
    state = _Settings(
      token: state.token,
      themeMode: state.themeMode,
      blurCovers: blur,
      showEmbedMediaCard: state.showEmbedMediaCard,
      primaryColor: state.primaryColor,
    );

    ref.read(sharedPrefsProvider).setBool("blurCovers", blur);

    ref.notifyListeners();
  }

  void updateEmbedMediaCard(bool setting) {
    state = _Settings(
      token: state.token,
      themeMode: state.themeMode,
      blurCovers: state.blurCovers,
      showEmbedMediaCard: setting,
      primaryColor: state.primaryColor,
    );

    ref.read(sharedPrefsProvider).setBool("showEmbedMediaCard", setting);

    ref.notifyListeners();
  }

  Future<void> updateToken(String? token) async {
    Future(() {
      state = _Settings(
        token: token,
        themeMode: state.themeMode,
        blurCovers: state.blurCovers,
        primaryColor: state.primaryColor,
        showEmbedMediaCard: state.showEmbedMediaCard,
      );
    });

    if (token == null) {
      await ref.read(sharedPrefsProvider).remove("token");
    } else {
      await ref.read(sharedPrefsProvider).setString("token", token);
    }

    ref.notifyListeners();
  }
}

final settingsProvider = NotifierProvider<_SettingsNotifier, _Settings>(() {
  return _SettingsNotifier();
});
