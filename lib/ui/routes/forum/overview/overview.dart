import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/forum/overview/overview.graphql.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';
import 'package:myaniapp/ui/common/thread_card.dart';
import 'package:myaniapp/ui/routes/forum/new.dart';
import 'package:myaniapp/ui/routes/forum/recent.dart';
import 'package:myaniapp/ui/routes/forum/search.dart';
import 'package:myaniapp/ui/routes/forum/subscribed.dart';
import 'package:myaniapp/utils/graphql.dart';

class ForumOverviewPage extends StatefulWidget {
  const ForumOverviewPage({
    super.key,
    required this.filter,
    this.category,
    this.search,
  });

  final String filter;
  final int? category;
  final String? search;

  @override
  State<ForumOverviewPage> createState() => _ForumOverviewPageState();
}

class _ForumOverviewPageState extends State<ForumOverviewPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var inEnum = ForumFilter.values.byName(widget.filter);

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leadingWidth: 100,
        actions: [
          SizedBox(
            width: 200,
            child: CustomDropdown(
              hint: "filter",
              dropdownItems: const [
                DropdownMenuItem(
                  value: ForumFilter.overview,
                  child: Text('Overview'),
                ),
                DropdownMenuItem(
                  value: ForumFilter.recent,
                  child: Text('Recent'),
                ),
                DropdownMenuItem(
                  value: ForumFilter.$new,
                  child: Text('New'),
                ),
                DropdownMenuItem(
                  value: ForumFilter.subscribed,
                  child: Text('Subscribed'),
                ),
                DropdownMenuItem(
                  value: ForumFilter.search,
                  child: Text('Search'),
                ),
              ],
              onChanged: (v) => context.replace(
                  '/forum/${(v ?? ForumFilter.overview).name}?category=${widget.category}'),
              value: inEnum,
            ),
          ),
        ],
        leading: Row(
          children: [
            BackButton(
              onPressed: () => context.pop(),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(16),
                ),
              ),
            ),
            IconButton(
              onPressed: () => scaffoldKey.currentState?.openDrawer(),
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
      ),
      drawer: ForumCategoriesDrawer(
        selected: widget.category,
        onChange: (category) {
          if (inEnum == ForumFilter.overview) {
            context.replace('/forum/recent?category=$category');
            return;
          } else if (category == null) {
            context.replace('/forum/${widget.filter}');
            return;
          }
          context.replace('/forum/${widget.filter}?category=$category');
        },
      ),
      endDrawer: ForumFilterDrawer(
        selected: inEnum.index,
        onChange: (index) => context.replace(
            '/forum/${ForumFilter.values.elementAt(index).name}?category=${widget.category}'),
      ),
      body: switch (inEnum) {
        (ForumFilter.overview) => const ForumOverview(),
        (ForumFilter.recent) => RecentForums(categoryId: widget.category),
        (ForumFilter.$new) => NewForums(categoryId: widget.category),
        (ForumFilter.subscribed) =>
          SubscribedForums(categoryId: widget.category),
        (ForumFilter.search) => ForumSearch(
            categoryId: widget.category,
            search: widget.search,
            onChange: (search) {
              if (widget.category == null) {
                context.replace('/forum/${widget.filter}?search=$search');
                return;
              }
              context.replace(
                  '/forum/${widget.filter}?category=${widget.category}&search=$search');
            },
          ),
      },
    );
  }
}

class ForumOverview extends StatelessWidget {
  const ForumOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Query$ForumOverview$Widget(
      builder: queryBuilder(
        (result, [fetchMore, refetch]) {
          var pinned = result.parsedData!.recent!.threads!
              .where((e) => e!.isSticky == true);
          var recent = result.parsedData!.recent!.threads!
              .where((e) => e!.isSticky != true)
              .take(4);

          return RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Pinned',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    ...pinned.map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: ThreadCard(thread: e!),
                        ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Recent',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    ...recent.map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: ThreadCard(thread: e!),
                        ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Release Discussion',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    ...result.parsedData!.release!.threads!.map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: ThreadCard(thread: e!),
                        ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'New',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    ...result.parsedData!.$new!.threads!.map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: ThreadCard(thread: e!),
                        ))
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

enum ForumFilter { overview, recent, $new, subscribed, search }

class ForumFilterDrawer extends StatelessWidget {
  const ForumFilterDrawer(
      {super.key, required this.selected, required this.onChange});

  final int selected;
  final void Function(int index) onChange;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: selected,
      onDestinationSelected: onChange,
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Feed"),
        ),
        NavigationDrawerDestination(
          icon: SizedBox(),
          label: Text("Overview"),
        ),
        NavigationDrawerDestination(
          icon: SizedBox(),
          label: Text("Recent"),
        ),
        NavigationDrawerDestination(
          icon: SizedBox(),
          label: Text("New"),
        ),
        NavigationDrawerDestination(
          icon: SizedBox(),
          label: Text("Subscribed"),
        ),
        NavigationDrawerDestination(
          icon: SizedBox(),
          label: Text("Search"),
        ),
      ],
    );
  }
}

class ForumCategoriesDrawer extends StatelessWidget {
  const ForumCategoriesDrawer({
    super.key,
    this.selected,
    required this.onChange,
  });

  final int? selected;
  final void Function(int? index) onChange;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: selected == null
          ? 0
          : allCategories.indexWhere((element) => element.id == selected) + 1,
      onDestinationSelected: (index) => index == 0
          ? onChange(null)
          : onChange(allCategories.elementAt(index - 1).id),
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Categories"),
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
    );
  }
}

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
