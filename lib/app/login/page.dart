import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int currentPage = 0;
  late final pageController = PageController(initialPage: currentPage);

  final pages = [
    FirstOnboard(),
    LastOnboard(),
  ];

  @override
  void initState() {
    super.initState();
    pageController.addListener(
      () {
        if (currentPage != (pageController.page?.round() ?? 0))
          setState(() => currentPage = pageController.page?.round() ?? 0);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 40,
            // top: 0,
            child: PageView(
              controller: pageController,
              children: pages,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 5,
            right: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentPage != pages.length - 1)
                  TextButton(
                    child: Text("Skip"),
                    onPressed: () => pageController.animateToPage(
                      pages.length - 1,
                      curve: Easing.emphasizedAccelerate,
                      duration: Durations.short3,
                    ),
                  )
                else
                  SizedBox(
                    width: 55,
                    height: 40,
                  ),
                DotsIndicator(
                  dotsCount: pages.length,
                  position: currentPage,
                  decorator: DotsDecorator(activeColor: Colors.blue),
                ),
                if (currentPage != pages.length - 1)
                  IconButton(
                      onPressed: () => pageController.nextPage(
                          curve: Curves.bounceIn, duration: Durations.short3),
                      icon: Icon(Icons.arrow_forward))
                else
                  SizedBox(
                    width: 40,
                    height: 40,
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FirstOnboard extends StatelessWidget {
  const FirstOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: Image.asset("assets/tracking.png")),
        Expanded(
            child: const Text("Track your favorite Anime and Manga with ease"))
      ],
    );
  }
}

class LastOnboard extends StatelessWidget {
  const LastOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue[100]!),
                ),
                onPressed: () => context.pushRoute(const AnilistLoginRoute()),
                child: const Text(
                  "Login with Anilist",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () => context.pushRoute(const TokenLoginRoute()),
                child: const Text("Login with Token"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () => context.replaceRoute(HomeRoute()),
                child: const Text("Continue without logging in"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
