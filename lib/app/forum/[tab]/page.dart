import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/new.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/overview.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/recent.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/search.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/subscribed.dart';
import 'package:myaniapp/common/custom_dropdown.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/router.gr.dart';

enum ForumTabs { overview, recent, $new, subscribed, search }

class ForumCategory {
  final String name;
  final int id;

  ForumCategory({required this.name, required this.id});
}

final allCategories = [
  ForumCategory(id: 7, name: 'General'),
  ForumCategory(id: 1, name: "Anime"),
  ForumCategory(id: 2, name: "Manga"),
  ForumCategory(id: 5, name: "Release Discussion"),
  ForumCategory(id: 8, name: "News"),
  ForumCategory(id: 9, name: "Music"),
  ForumCategory(id: 10, name: "Gaming"),
  ForumCategory(id: 4, name: "Visual Novels"),
  ForumCategory(id: 3, name: "Light Novels"),
  ForumCategory(id: 16, name: "Forum Games"),
  ForumCategory(id: 15, name: "Recommendations"),
  ForumCategory(id: 11, name: "Site Feedback"),
  ForumCategory(id: 12, name: "Bug Reports"),
  ForumCategory(id: 18, name: "AniList Apps"),
  ForumCategory(id: 17, name: "Misc"),
];

@RoutePage()
class ForumScreen extends StatefulWidget {
  const ForumScreen({
    super.key,
    @queryParam this.search,
    @queryParam this.category,
    @pathParam required this.tab,
  });

  final String tab;
  final String? search;
  final int? category;

  @override
  State<ForumScreen> createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void goTo(ForumTabs tab, {int? category, String? search}) {
    // print([widget.category, ca])
    context.navigateTo(ForumRoute(
        tab: category != null && tab == ForumTabs.overview
            ? ForumTabs.recent.name
            : tab.name,
        category: category,
        search: search));
  }

  @override
  Widget build(BuildContext context) {
    var tabEnum =
        ForumTabs.values.firstWhere((element) => element.name == widget.tab);

    return Scaffold(
      key: _scaffoldKey,
      drawer: NavigationDrawer(
        selectedIndex: widget.category == null
            ? 0
            : allCategories
                    .indexWhere((element) => element.id == widget.category) +
                1,
        onDestinationSelected: (index) => index == 0
            ? goTo(tabEnum, search: widget.search)
            : goTo(tabEnum,
                category: allCategories.elementAt(index - 1).id,
                search: widget.search),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: context.theme.textTheme.titleMedium,
            ),
          ),
          const NavigationDrawerDestination(
            icon: SizedBox(),
            label: Text("All"),
          ),
          for (var category in allCategories)
            NavigationDrawerDestination(
              icon: const SizedBox(),
              label: Text(category.name),
            ),
        ],
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          icon: const Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 130),
              child: SheetDropdownMenu(
                key: Key(widget.tab),
                value: ForumTabs.values
                    .firstWhere((element) => element.name == widget.tab),
                onChanged: (values) => goTo(values.first,
                    category: values.first == ForumTabs.overview
                        ? null
                        : widget.category,
                    search: widget.search),
                items: ForumTabs.values.map(
                  (e) => DropdownMenuEntry(
                    value: e,
                    label: e != ForumTabs.$new ? e.name.capitalize() : "New",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: switch (tabEnum) {
        ForumTabs.overview => const ForumOverviewPage(),
        ForumTabs.recent => ForumRecentPage(
            categoryId: widget.category,
          ),
        ForumTabs.$new => ForumNewPage(
            categoryId: widget.category,
          ),
        ForumTabs.subscribed => ForumSubscribedPage(
            categoryId: widget.category,
          ),
        ForumTabs.search => ForumSearchPage(
            search: widget.search,
            onChange: (search) =>
                goTo(tabEnum, category: widget.category, search: search),
          ),
      },
    );
  }
}
