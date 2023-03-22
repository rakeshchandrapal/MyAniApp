import 'package:MyAniApp/providers/graphql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomBar extends StatefulWidget {
  final Widget child;
  const BottomBar({super.key, required this.child});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

const tabs = ['/', '/lists/anime', '/discover', '/lists/manga', '/social'];

class _BottomBarState extends State<BottomBar> {
  var currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GraphQlProvider(child: widget.child),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        useLegacyColorScheme: false,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIdx,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            label: 'Anime List',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconData(
                0xf8ca,
                fontFamily: CupertinoIcons.iconFont,
                fontPackage: CupertinoIcons.iconFontPackage,
              ),
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Manga List'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), label: 'Social'),
        ],
        onTap: (value) {
          setState(() {
            currentIdx = value;
          });

          context.go(tabs[value]);
        },
      ),
    );
  }
}
