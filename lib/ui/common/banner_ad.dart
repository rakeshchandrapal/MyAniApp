import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:myaniapp/providers/banner_ad.dart';

class BannerAdWidget extends ConsumerStatefulWidget {
  const BannerAdWidget({super.key});

  @override
  ConsumerState<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends ConsumerState<BannerAdWidget> {
  BannerAdInfo? currentAd;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ref
          .read(bannerAdsProvider.notifier)
          .load(MediaQuery.of(context).size.width.truncate(), (ad) {
        setState(() => currentAd = ad);
        ref.read(bannerAdsProvider.notifier).use(ad);
      });
    });
  }

  @override
  void deactivate() {
    if (currentAd != null) {
      ref.read(bannerAdsProvider.notifier).unuse(currentAd!);
    }
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    if (currentAd == null) return const SizedBox();

    return SafeArea(
      child: SizedBox(
        height: currentAd!.currentAd!.size.height.toDouble(),
        width: currentAd!.currentAd!.size.width.toDouble(),
        child: AdWidget(ad: currentAd!.currentAd!),
      ),
    );
  }
}

class BannerAdSafeArea extends ConsumerWidget {
  const BannerAdSafeArea({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var ads = ref.watch(bannerAdsProvider);

    // might not get the actual ad being displayed be doesnt matter that much
    BannerAdInfo? ad = ads.cast<BannerAdInfo?>().firstWhere(
          (element) => element!.using == true,
          orElse: () => null,
        );

    if (ad?.currentAd == null) return child;

    return Padding(
      padding:
          EdgeInsets.only(bottom: ad!.currentAd?.size.height.toDouble() ?? 0),
      child: child,
    );
  }
}
