import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/new.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/overview.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/recent.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/search.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/subscribed.dart';
import 'package:myaniapp/common/custom_dropdown.dart';
import 'package:myaniapp/extensions.dart';

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

class ForumPage extends StatefulWidget {
  const ForumPage({super.key, required this.tab});

  final String tab;

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int? category;
  String? search;

  @override
  void initState() {
    super.initState();
    Future(
      () => setState(
        () {
          String? cat =
              GoRouterState.of(context).uri.queryParameters['category'];

          if (cat != null) category = int.tryParse(cat);
          search = GoRouterState.of(context).uri.queryParameters['search'];
        },
      ),
    );
  }

  void goTo(ForumTabs tab, {int? category, String? search}) {
    context.replace(
        "/forum/${category != null && tab == ForumTabs.overview ? ForumTabs.recent.name : tab.name}?category=$category=search=$search");
    this.category = category;
    this.search = search;
  }

  @override
  Widget build(BuildContext context) {
    var tabEnum =
        ForumTabs.values.firstWhere((element) => element.name == widget.tab);

    return Scaffold(
      key: _scaffoldKey,
      drawer: NavigationDrawer(
        selectedIndex: category == null
            ? 0
            : allCategories.indexWhere((element) => element.id == category) + 1,
        onDestinationSelected: (index) => index == 0
            ? goTo(tabEnum, search: search)
            : goTo(tabEnum,
                category: allCategories.elementAt(index - 1).id,
                search: search),
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
        leadingWidth: 100,
        leading: Row(
          children: [
            BackButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                  const EdgeInsets.all(16),
                ),
              ),
            ),
            IconButton(
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              icon: const Icon(Icons.menu),
            )
          ],
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
                onChanged: (values) =>
                    goTo(values.first, category: category, search: search),
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
            categoryId: category,
          ),
        ForumTabs.$new => ForumNewPage(
            categoryId: category,
          ),
        ForumTabs.subscribed => ForumSubscribedPage(
            categoryId: category,
          ),
        ForumTabs.search => ForumSearchPage(
            search: search,
            onChange: (search) =>
                goTo(tabEnum, category: category, search: search),
          ),
      },
    );
  }
}
