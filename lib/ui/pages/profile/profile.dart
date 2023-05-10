import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/profile/profile.graphql.dart';
import 'package:myaniapp/ui/common/back_button.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/persistent_header.dart';
import 'package:myaniapp/ui/pages/profile/overview.dart';
import 'package:myaniapp/ui/pages/profile/reviews/reviews.dart';
import 'package:myaniapp/ui/pages/profile/social/social.dart';

@RoutePage()
class ProfilePage extends HookWidget {
  const ProfilePage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$User(
      Options$Query$User(
        variables: Variables$Query$User(name: name),
      ),
    );

    return Scaffold(
      appBar: hook.result.data == null ? AppBar() : null,
      body: Graphql(
        hook: hook,
        builder: (result) => DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                expandedHeight: 150,
                toolbarHeight: 0,
                // leadingWidth: 20,
                flexibleSpace: Header(user: result.User!),
              ),
              SliverPersistentHeader(
                delegate: SliverPersistentHeaderTabBarDelegate(
                  const TabBar(
                    tabs: [
                      Tab(
                        text: 'Overview',
                      ),
                      Tab(
                        text: 'Social',
                      ),
                      Tab(
                        text: 'Reviews',
                      ),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ],
            body: TabBarView(
              children: [
                Overview(
                  user: result.User!,
                ),
                Social(userId: result.User!.id),
                Reviews(userId: result.User!.id),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key, required this.user});

  final Query$User$User user;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return FlexibleSpaceBar(
      // collapseMode: CollapseMode.pin,
      background: Stack(
        children: [
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                Colors.transparent,
                theme.colorScheme.surface.withOpacity(0.4),
                theme.colorScheme.surface.withOpacity(0.6),
                theme.colorScheme.surface.withOpacity(1),
              ],
              stops: const [0, 0.3, 0.5, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds),
            blendMode: BlendMode.srcOver,
            child: user.bannerImage != null
                ? CImage(
                    viewer: true,
                    imageUrl: user.bannerImage!,
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                  )
                : Container(
                    height: 150,
                    color: Colors.grey,
                  ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  CImage(
                    height: 110,
                    width: 110,
                    imageUrl: user.avatar!.large!,
                    viewer: true,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      user.name,
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const AppBackButton(),
        ],
      ),
    );
  }
}
