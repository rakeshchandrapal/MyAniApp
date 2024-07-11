import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/activity/page.dart';
import 'package:myaniapp/app/forum/%5Btab%5D/page.dart';
import 'package:myaniapp/app/home/__generated__/activities.req.gql.dart';
import 'package:myaniapp/app/home/page.dart';
import 'package:myaniapp/common/hiding_floating_button.dart';
import 'package:myaniapp/common/markdown_editor.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class HomeActivitiesScreen extends StatefulWidget {
  const HomeActivitiesScreen({super.key});

  @override
  State<HomeActivitiesScreen> createState() => _HomeActivitiesScreenState();
}

class _HomeActivitiesScreenState extends State<HomeActivitiesScreen> {
  bool isFollowing = false;

  Icon getThumbIcon(Set<WidgetState> state) {
    if (state.contains(WidgetState.selected)) {
      return const Icon(Icons.people);
    }

    return const Icon(Icons.public);
  }

  @override
  Widget build(BuildContext context) {
    return HidingFloatingButton(
      button: FloatingActionButton(
        child: const Icon(Icons.post_add),
        onPressed: () => MarkdownEditor.show(
          context,
          onSave: (text) => client
              .request(GSaveTextActivityReq((b) => b..vars.text = text))
              .first
              .then((value) => setState(() {
                    isFollowing = !isFollowing;
                  })),
          hint: "Write a post",
        ),
      ),
      builder: (button) => Scaffold(
        appBar: AppBar(
          leading: const HomeLeadingIcon(),
          actions: [
            IconButton(
              onPressed: () => context.pushRoute(ForumRoute(
                tab: ForumTabs.overview.name,
              )),
              icon: const Icon(Icons.forum),
            ),
            Switch.adaptive(
              value: isFollowing,
              thumbIcon: WidgetStateProperty.resolveWith(getThumbIcon),
              onChanged: (value) => setState(() => isFollowing = !isFollowing),
            ),
          ],
        ),
        floatingActionButton: button,
        body: GQLRequest(
          key: Key(isFollowing.toString()),
          operationRequest: GHomeActivitiesReq(
            (b) => b
              ..requestId = "homeActivities"
              ..vars.hasReplies = !isFollowing
              ..vars.isFollowing = isFollowing,
          ),
          builder: (context, response, error, refetch) {
            return RefreshIndicator.adaptive(
              onRefresh: refetch,
              child: GraphqlPagination(
                pageInfo: response!.data!.Page!.pageInfo!,
                req: (nextPage) =>
                    (response.operationRequest as GHomeActivitiesReq).rebuild(
                  (p0) => p0
                    ..vars.page = nextPage
                    ..updateResult = (previous, result) => result?.rebuild(
                        (p0) => p0
                          ..Page.activities.insertAll(
                              0,
                              previous?.Page?.activities?.whereNot((p0) =>
                                      result.Page?.activities?.contains(p0) ??
                                      false) ??
                                  [])),
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    var activity = response.data!.Page!.activities![index]!;

                    return ActivityCard(
                      activity: activity,
                      onDeleted: refetch,
                    );
                  },
                  itemCount: response.data!.Page!.activities!.length,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
