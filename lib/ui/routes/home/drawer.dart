import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';

class HomeDrawer extends ConsumerStatefulWidget {
  const HomeDrawer({super.key});

  @override
  ConsumerState<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends ConsumerState<HomeDrawer> {
  RewardedAd? _rewardedAd;
  bool? _loadingErr;

  @override
  void initState() {
    super.initState();
    if (!kIsWeb && Platform.isAndroid) loadAd();
  }

  @override
  void dispose() {
    super.dispose();
    _rewardedAd?.dispose();
  }

  void loadAd() {
    RewardedAd.load(
      // when test are over the id should be ca-app-pub-7032560703864826/2278829039
      adUnitId: 'ca-app-pub-7032560703864826/2278829039',
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            // Called when the ad failed to show full screen content.
            onAdFailedToShowFullScreenContent: (ad, err) {
              ad.dispose();
            },
            // Called when the ad dismissed full screen content.
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              setState(() => _rewardedAd = null);
              loadAd();
            },
          );
          setState(() => _rewardedAd = ad);
        },
        onAdFailedToLoad: (error) {
          setState(() => _loadingErr = true);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);
    var theme = Theme.of(context);

    return Drawer(
      child: ListView(
        children: [
          if (user.value == null) ...[
            ListTile(
              onTap: () => context.pushRoute(const SettingsRoute()),
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () => context.pushRoute(const LoginRoute()),
              leading: const Icon(Icons.login),
              title: const Text('Login'),
            ),
          ] else ...[
            InkWell(
              onTap: () => context.pushRoute(
                UserRoute(
                  name: user.value!.name,
                ),
              ),
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  user.value!.name,
                  style: TextStyle(color: theme.colorScheme.onBackground),
                ),
                currentAccountPicture:
                    CImage(imageUrl: user.value!.avatar!.large!),
                accountEmail: null,
                decoration: const BoxDecoration(),
                currentAccountPictureSize: const Size.square(90),
              ),
            ),
            ListTile(
              onTap: () => context.pushRoute(const SettingsRoute()),
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            ListTile(
              onTap: () => showDialog(
                context: context,
                builder: (context) => const LogoutDialog(),
              ),
              leading: Icon(
                Icons.logout,
                color: theme.colorScheme.error,
              ),
              textColor: theme.colorScheme.error,
              title: const Text('Logout'),
            ),
          ],
          if (!kIsWeb && Platform.isAndroid)
            ListTile(
              enabled: _rewardedAd != null && _loadingErr != true,
              textColor: _loadingErr == true ? theme.colorScheme.error : null,
              title: _loadingErr == true
                  ? const Text('Error loading ad')
                  : _rewardedAd != null
                      ? const Text('Watch ad')
                      : const Text('Loading ad...'),
              onTap: () {
                _rewardedAd?.show(
                  onUserEarnedReward: (ad, reward) {},
                );
              },
            )
        ],
      ),
    );
  }
}

class LogoutDialog extends ConsumerWidget {
  const LogoutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      content: const Text("Are you sure you want to logout?"),
      actions: [
        TextButton(
          onPressed: () => context.popRoute(),
          child: const Text(
            'Cancel',
          ),
        ),
        TextButton(
          onPressed: () => {
            ref
                .read(settingsProvider.notifier)
                .logout()
                .then((value) => context.popRoute())
          },
          child: Text(
            'Logout',
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ],
    );
  }
}
