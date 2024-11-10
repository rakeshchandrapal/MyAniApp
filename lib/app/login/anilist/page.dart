import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class AnilistLoginScreen extends StatefulWidget {
  const AnilistLoginScreen({super.key});

  @override
  State<AnilistLoginScreen> createState() => _AnilistLoginPageState();
}

class _AnilistLoginPageState extends State<AnilistLoginScreen> {
  final Uri authUri = Uri(
    scheme: 'https',
    host: 'anilist.co',
    path: '/api/v2/oauth/authorize',
    query: 'client_id=${kIsWeb ? '13163' : '11175'}&response_type=token',
  );

  @override
  void initState() {
    super.initState();

    launchUrl(
      authUri,
      // mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomCenter,
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
            ],
          ),
        ),
      ),
    );
  }
}
