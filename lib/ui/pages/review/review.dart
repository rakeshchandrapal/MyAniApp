import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/review/review.graphql.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class ReviewPage extends HookWidget {
  const ReviewPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Review(
      Options$Query$Review(
        variables: Variables$Query$Review(id: id),
      ),
    );
    var theme = Theme.of(context);

    return Scaffold(
      appBar:
          hook.result.isLoading && hook.result.data == null ? AppBar() : null,
      body: Graphql(
        hook: hook,
        builder: (result) => NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              // automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(Icons.arrow_back),
                ),
                onPressed: () => context.router.pop(),
              ),
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
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
                        stops: const [0, 0.3, 0.5, 0.9],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(bounds),
                      blendMode: BlendMode.srcOver,
                      child: result.Review!.media!.bannerImage != null
                          ? CImage(
                              imageUrl: result.Review!.media!.bannerImage!,
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              viewer: true,
                            )
                          : Container(
                              color: Colors.grey,
                              height: 150,
                            ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      // top: 50,
                      // left: MediaQuery.of(context)
                      //     .size
                      //     .center(const Offset(0, 0))
                      //     .dx,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              timeago.format(
                                dateFromTimestamp(result.Review!.createdAt),
                              ),
                              style: theme.textTheme.labelSmall,
                            ),
                            Text(
                              result.Review!.media!.title!.userPreferred!,
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              'a review by ${result.Review!.user!.name}',
                              style: theme.textTheme.labelMedium,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Markdown(
                    data: result.Review!.body!,
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: result.Review!.score!.toString(),
                            style: theme.textTheme.titleLarge,
                          ),
                          const TextSpan(text: '/100')
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up,
                          color: theme.colorScheme.secondary,
                        ),
                        iconSize: 32,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_down,
                          color: theme.colorScheme.secondary,
                        ),
                        iconSize: 32,
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                        '${result.Review!.rating} out of ${result.Review!.ratingAmount} liked this review'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
