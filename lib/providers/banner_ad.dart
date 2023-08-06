import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_ad.g.dart';

const _bannerDuration = Duration(minutes: 1);

class BannerAdInfo {
  BannerAdInfo({
    required this.refreshBy,
    required this.currentAd,
    required this.using,
  });

  final DateTime refreshBy;
  final BannerAd? currentAd;
  final bool using;
}

@Riverpod(keepAlive: true)
class BannerAds extends _$BannerAds {
  @override
  List<BannerAdInfo> build() {
    // clear ads that are not gonna be used
    Timer.periodic(const Duration(minutes: 5), (timer) {
      state = state
        ..removeWhere((element) => element.refreshBy.isBefore(DateTime.now()));
    });

    return [];
  }

  void load(int width, void Function(BannerAdInfo ad) callback) async {
    if (!(!kIsWeb && Platform.isAndroid)) return;

    var validAds = state.where((element) =>
        element.refreshBy.isAfter(DateTime.now()) && !element.using);

    if (validAds.isNotEmpty) {
      return callback(validAds.first);
    }

    var size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(width);

    if (size == null) return;

    BannerAd(
      size: size,
      adUnitId: 'ca-app-pub-7032560703864826/7753708493',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          var a = BannerAdInfo(
            refreshBy: DateTime.now().add(_bannerDuration),
            currentAd: ad as BannerAd,
            using: false,
          );
          state = [...state, a];
          callback(a);
        },
        onAdClosed: (ad) {
          state = state
            ..removeWhere(
              (element) => element.currentAd == ad,
            );
        },
      ),
      request: const AdRequest(),
    ).load();
    return;
  }

  void use(BannerAdInfo ad) {
    var index = state.indexOf(ad);

    if (index != -1) {
      state[index] = BannerAdInfo(
          refreshBy: ad.refreshBy, currentAd: ad.currentAd, using: true);
      state = [...state];
    }
  }

  void unuse(BannerAdInfo ad) {
    var index = state.indexWhere(
      (element) =>
          element.refreshBy == ad.refreshBy && ad.currentAd == ad.currentAd,
    );

    if (index != -1) {
      // delay because ig it runs in the widget lifecyle which is a no no
      Future(
        () {
          state[index] = BannerAdInfo(
              refreshBy: ad.refreshBy, currentAd: ad.currentAd, using: false);
          state = [...state];
        },
      );
    }
  }
}
