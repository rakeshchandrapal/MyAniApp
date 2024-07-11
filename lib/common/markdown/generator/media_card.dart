import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart' as md;
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/markdown/generator/__generated__/media_card.req.gql.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';

md.SpanNodeGeneratorWithTag mediaCardGenerator = md.SpanNodeGeneratorWithTag(
  tag: "mediaCard",
  generator: (e, config, visitor) =>
      MediaCardNode(e.attributes, config.p, config.a),
);

class MediaCardNode extends md.ElementNode {
  final Map<String, String> attributes;
  final md.PConfig pConfig;
  final md.LinkConfig linkConfig;

  MediaCardNode(this.attributes, this.pConfig, this.linkConfig);

  @override
  TextStyle get style =>
      parentStyle?.merge(pConfig.textStyle) ?? pConfig.textStyle;

  @override
  InlineSpan build() {
    var id = int.parse(attributes['id']!);

    return WidgetSpan(
      child: GQLRequest(
        operationRequest: GEmbedMediaCardReq((b) => b
          ..requestId = "embedMediaCard$id"
          ..vars.id = id),
        builder: (context, response, error, refetch) => Card.outlined(
          child: InkWellImage(
            onTap: () => context.pushRoute(MediaRoute(
              id: id,
              placeholder: response.data!.Media,
            )),
            onLongPress: () => MediaSheet.show(context, response.data!.Media!),
            borderRadius: imageRadius,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  width: 70,
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: imageRadius.topLeft,
                        bottomLeft: imageRadius.bottomLeft,
                      ),
                      child: CachedImage(
                        response!.data!.Media!.coverImage!.extraLarge!,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          response.data!.Media!.title!.userPreferred!,
                          style: context.theme.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                          maxLines: 2,
                        ),
                        if (response.data!.Media!.format != null)
                          Text(
                            response.data!.Media!.format!.name.capitalize(),
                            maxLines: 1,
                          )
                        else
                          Text(
                            response.data!.Media!.type!.name.capitalize(),
                            maxLines: 1,
                          ),
                        if (response.data!.Media!.genres?.isNotEmpty == true)
                          Text(
                            response.data!.Media!.genres!.join(", "),
                            maxLines: 1,
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
