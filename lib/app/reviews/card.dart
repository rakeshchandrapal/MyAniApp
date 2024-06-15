import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/fragments/__generated__/review.data.gql.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.review});

  final GReviewFragment review;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: InkWellImage(
        borderRadius: imageRadius,
        onTap: () =>
            context.push("/review/${review.id}", extra: {"review": review}),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (review.media!.bannerImage != null)
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(imageRadius.topLeft.x),
                  topRight: Radius.circular(imageRadius.topRight.x),
                ),
                child: CachedImage(
                  review.media!.bannerImage!,
                  height: 70,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text:
                            "Review of ${review.media!.title!.userPreferred!} by ${review.user!.name}\n"),
                    TextSpan(text: review.summary!)
                  ],
                ),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Text("Review of ${review.media!.title!.userPreferred!}"),
            // Text(
            //   review.summary!,
            //   maxLines: 2,
            // )
          ],
        ),
      ),
    );
  }
}
