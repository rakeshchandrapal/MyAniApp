import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/fragments/__generated__/review.data.gql.dart';
import 'package:myaniapp/ui/common/image.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.review});

  final GReview review;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Card(
      margin: EdgeInsets.zero,
      child: InkWell(
        borderRadius: imageRadius,
        onTap: () => context.push('/review/${review.id}'),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (review.media!.bannerImage != null)
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: imageRadius.topLeft,
                  topRight: imageRadius.topRight,
                ),
                child: CImage(
                  imageUrl: review.media!.bannerImage!,
                  height: 80,
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Review of ${review.media!.title!.userPreferred} by ${review.user!.name}\n',
                    ),
                    TextSpan(
                      text: review.summary,
                      style: TextStyle(
                        color: theme.hintColor,
                        fontStyle: FontStyle.italic,
                      ),
                    )
                  ],
                ),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.thumb_up,
                    color: theme.hintColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    review.rating!.toString(),
                    style: theme.textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
