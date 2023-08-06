import 'package:flutter/material.dart';
import 'package:myaniapp/ui/routes/explore/explore.dart';
import 'package:myaniapp/ui/routes/home/app_bar.dart';

class Guest extends StatelessWidget {
  const Guest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: ExplorePage(),
    );
  }
}
