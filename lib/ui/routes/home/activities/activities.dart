import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/home/activities/activities.graphql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/activity_card.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/markdown_editor.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/home/app_bar.dart';
import 'package:myaniapp/utils/require_login.dart';

class HomeActivitiesPage extends ConsumerStatefulWidget {
  const HomeActivitiesPage({super.key});

  @override
  ConsumerState<HomeActivitiesPage> createState() => _HomeActivitiesPageState();
}

class _HomeActivitiesPageState extends ConsumerState<HomeActivitiesPage> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);

    return Query$Activities$Widget(
      options: Options$Query$Activities(
        variables: Variables$Query$Activities(
          isFollowing: isFollowing,
          hasReplies: !isFollowing,
        ),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.parsedData == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else if (result.hasException) {
          return Scaffold(
            appBar: AppBar(),
            body: GraphqlError(exception: result.exception!),
          );
        }

        return Scaffold(
          appBar: HomeAppBar(
            actions: [
              IconButton(
                  onPressed: () => context.push('/forum/overview'),
                  icon: const Icon(Icons.forum)),
              if (user.value != null)
                SegmentedButton(
                  selected: {isFollowing},
                  onSelectionChanged: (v) =>
                      setState(() => isFollowing = v.first),
                  segments: const [
                    ButtonSegment(
                      value: true,
                      label: Text('Following'),
                    ),
                    ButtonSegment(
                      value: false,
                      label: Text('Global'),
                    ),
                  ],
                ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: requireLogin(
              ref,
              'post an activity',
              () => showMarkdownEditor(
                context,
                onSave: (text) {
                  if (text.isNotEmpty) {
                    client.value.mutate$SaveTextActivity(
                      Options$Mutation$SaveTextActivity(
                        variables:
                            Variables$Mutation$SaveTextActivity(text: text),
                        onCompleted: (p0, p1) {
                          setState(() => isFollowing = true);
                          refetch!();
                        },
                      ),
                    );
                  }
                },
              ),
            ),
            child: const Icon(Icons.edit),
          ),
          body: RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: Pagination(
              fetchMore: fetchMore!,
              pageInfo: result.parsedData!.Page!.pageInfo!,
              opts: FetchMoreOptions$Query$Activities(
                variables: Variables$Query$Activities(
                    page: result.parsedData!.Page!.pageInfo!.currentPage! + 1),
                updateQuery: (previousResultData, fetchMoreResultData) {
                  var has = <dynamic>{};

                  has.addAll(previousResultData!['Page']['activities']
                      .map((a) => a['id']));

                  fetchMoreResultData!['Page']['activities']
                      .removeWhere((a) => has.contains(a['id']));

                  var list = [
                    ...previousResultData['Page']['activities'],
                    ...fetchMoreResultData['Page']['activities']
                  ];

                  fetchMoreResultData['Page']['activities'] = list;
                  return fetchMoreResultData;
                },
              ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  var activity = result.parsedData!.Page!.activities![index]!;

                  return ActivityCard(
                    activity: activity,
                    showReplyCount: true,
                    onDelete: refetch,
                  );
                },
                itemCount: result.parsedData!.Page!.activities!.length,
              ),
            ),
          ),
        );
      },
    );
  }
}
