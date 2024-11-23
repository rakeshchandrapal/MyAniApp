// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i43;
import 'package:flutter/material.dart' as _i44;
import 'package:myaniapp/app/activity/page.dart' as _i1;
import 'package:myaniapp/app/auth/page.dart' as _i3;
import 'package:myaniapp/app/calendar/page.dart' as _i4;
import 'package:myaniapp/app/character/page.dart' as _i5;
import 'package:myaniapp/app/forum/%5Btab%5D/page.dart' as _i7;
import 'package:myaniapp/app/forum/thread/comment/page.dart' as _i31;
import 'package:myaniapp/app/forum/thread/page.dart' as _i32;
import 'package:myaniapp/app/home/activities.dart' as _i8;
import 'package:myaniapp/app/home/anime.dart' as _i9;
import 'package:myaniapp/app/home/explore/page.dart' as _i6;
import 'package:myaniapp/app/home/home.dart' as _i10;
import 'package:myaniapp/app/home/page.dart' as _i11;
import 'package:myaniapp/app/login/anilist/page.dart' as _i2;
import 'package:myaniapp/app/login/page.dart' as _i12;
import 'package:myaniapp/app/login/token/page.dart' as _i33;
import 'package:myaniapp/app/media/characters.dart' as _i13;
import 'package:myaniapp/app/media/info.dart' as _i14;
import 'package:myaniapp/app/media/page.dart' as _i17;
import 'package:myaniapp/app/media/relations.dart' as _i15;
import 'package:myaniapp/app/media/reviews.dart' as _i16;
import 'package:myaniapp/app/media/similar.dart' as _i18;
import 'package:myaniapp/app/media/staff.dart' as _i19;
import 'package:myaniapp/app/media/threads.dart' as _i20;
import 'package:myaniapp/app/notifications/page.dart' as _i21;
import 'package:myaniapp/app/recommendations/page.dart' as _i22;
import 'package:myaniapp/app/review/page.dart' as _i23;
import 'package:myaniapp/app/reviews/page.dart' as _i24;
import 'package:myaniapp/app/search/media/page.dart' as _i25;
import 'package:myaniapp/app/settings/settings_screen.dart' as _i26;
import 'package:myaniapp/app/staff/page.dart' as _i28;
import 'package:myaniapp/app/staff/production_screen.dart' as _i27;
import 'package:myaniapp/app/staff/voice_screen.dart' as _i29;
import 'package:myaniapp/app/studio/page.dart' as _i30;
import 'package:myaniapp/app/user/activities.dart' as _i34;
import 'package:myaniapp/app/user/anime/page.dart' as _i35;
import 'package:myaniapp/app/user/favorites/page.dart' as _i36;
import 'package:myaniapp/app/user/info.dart' as _i37;
import 'package:myaniapp/app/user/manga/page.dart' as _i38;
import 'package:myaniapp/app/user/page.dart' as _i40;
import 'package:myaniapp/app/user/reviews.dart' as _i39;
import 'package:myaniapp/app/user/social.dart' as _i41;
import 'package:myaniapp/app/user/threads.dart' as _i42;
import 'package:myaniapp/graphql/__gen/app/media/media.graphql.dart' as _i46;
import 'package:myaniapp/graphql/__gen/app/staff/staff.graphql.dart' as _i49;
import 'package:myaniapp/graphql/__gen/app/user/user.graphql.dart' as _i52;
import 'package:myaniapp/graphql/__gen/graphql/fragments/character.graphql.dart'
    as _i45;
import 'package:myaniapp/graphql/__gen/graphql/fragments/media.graphql.dart'
    as _i47;
import 'package:myaniapp/graphql/__gen/graphql/fragments/review.graphql.dart'
    as _i48;
import 'package:myaniapp/graphql/__gen/graphql/fragments/staff.graphql.dart'
    as _i50;
import 'package:myaniapp/graphql/__gen/graphql/fragments/thread.graphql.dart'
    as _i51;
import 'package:myaniapp/graphql/__gen/graphql/fragments/user.graphql.dart'
    as _i53;

/// generated route for
/// [_i1.ActivityPage]
class ActivityRoute extends _i43.PageRouteInfo<ActivityRouteArgs> {
  ActivityRoute({
    _i44.Key? key,
    required int id,
    dynamic placeholder,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          ActivityRoute.name,
          args: ActivityRouteArgs(
            key: key,
            id: id,
            placeholder: placeholder,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ActivityRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ActivityRouteArgs>(
          orElse: () => ActivityRouteArgs(id: pathParams.getInt('id')));
      return _i1.ActivityPage(
        key: args.key,
        id: args.id,
        placeholder: args.placeholder,
      );
    },
  );
}

class ActivityRouteArgs {
  const ActivityRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i44.Key? key;

  final int id;

  final dynamic placeholder;

  @override
  String toString() {
    return 'ActivityRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i2.AnilistLoginScreen]
class AnilistLoginRoute extends _i43.PageRouteInfo<void> {
  const AnilistLoginRoute({List<_i43.PageRouteInfo>? children})
      : super(
          AnilistLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnilistLoginRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i2.AnilistLoginScreen();
    },
  );
}

/// generated route for
/// [_i3.AuthScreen]
class AuthRoute extends _i43.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i44.Key? key,
    String? accessToken,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            accessToken: accessToken,
          ),
          rawQueryParams: {'access_token': accessToken},
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<AuthRouteArgs>(
          orElse: () => AuthRouteArgs(
              accessToken: queryParams.optString('access_token')));
      return _i3.AuthScreen(
        key: args.key,
        accessToken: args.accessToken,
      );
    },
  );
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.accessToken,
  });

  final _i44.Key? key;

  final String? accessToken;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, accessToken: $accessToken}';
  }
}

/// generated route for
/// [_i4.CalendarScreen]
class CalendarRoute extends _i43.PageRouteInfo<void> {
  const CalendarRoute({List<_i43.PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i4.CalendarScreen();
    },
  );
}

/// generated route for
/// [_i5.CharacterPage]
class CharacterRoute extends _i43.PageRouteInfo<CharacterRouteArgs> {
  CharacterRoute({
    _i44.Key? key,
    required int id,
    _i45.Fragment$CharacterFragment? placeholder,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          CharacterRoute.name,
          args: CharacterRouteArgs(
            key: key,
            id: id,
            placeholder: placeholder,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CharacterRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CharacterRouteArgs>(
          orElse: () => CharacterRouteArgs(id: pathParams.getInt('id')));
      return _i5.CharacterPage(
        key: args.key,
        id: args.id,
        placeholder: args.placeholder,
      );
    },
  );
}

class CharacterRouteArgs {
  const CharacterRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i44.Key? key;

  final int id;

  final _i45.Fragment$CharacterFragment? placeholder;

  @override
  String toString() {
    return 'CharacterRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i6.ExploreScreen]
class ExploreRoute extends _i43.PageRouteInfo<void> {
  const ExploreRoute({List<_i43.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i6.ExploreScreen();
    },
  );
}

/// generated route for
/// [_i7.ForumScreen]
class ForumRoute extends _i43.PageRouteInfo<ForumRouteArgs> {
  ForumRoute({
    _i44.Key? key,
    String? search,
    int? category,
    required String tab,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          ForumRoute.name,
          args: ForumRouteArgs(
            key: key,
            search: search,
            category: category,
            tab: tab,
          ),
          rawPathParams: {'tab': tab},
          rawQueryParams: {
            'search': search,
            'category': category,
          },
          initialChildren: children,
        );

  static const String name = 'ForumRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final queryParams = data.queryParams;
      final args = data.argsAs<ForumRouteArgs>(
          orElse: () => ForumRouteArgs(
                search: queryParams.optString('search'),
                category: queryParams.optInt('category'),
                tab: pathParams.getString('tab'),
              ));
      return _i7.ForumScreen(
        key: args.key,
        search: args.search,
        category: args.category,
        tab: args.tab,
      );
    },
  );
}

class ForumRouteArgs {
  const ForumRouteArgs({
    this.key,
    this.search,
    this.category,
    required this.tab,
  });

  final _i44.Key? key;

  final String? search;

  final int? category;

  final String tab;

  @override
  String toString() {
    return 'ForumRouteArgs{key: $key, search: $search, category: $category, tab: $tab}';
  }
}

/// generated route for
/// [_i8.HomeActivitiesScreen]
class HomeActivitiesRoute extends _i43.PageRouteInfo<void> {
  const HomeActivitiesRoute({List<_i43.PageRouteInfo>? children})
      : super(
          HomeActivitiesRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeActivitiesRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i8.HomeActivitiesScreen();
    },
  );
}

/// generated route for
/// [_i9.HomeAnimeListScreen]
class HomeAnimeListRoute extends _i43.PageRouteInfo<void> {
  const HomeAnimeListRoute({List<_i43.PageRouteInfo>? children})
      : super(
          HomeAnimeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeAnimeListRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i9.HomeAnimeListScreen();
    },
  );
}

/// generated route for
/// [_i10.HomeLoggedInOverviewScreen]
class HomeLoggedInOverviewRoute extends _i43.PageRouteInfo<void> {
  const HomeLoggedInOverviewRoute({List<_i43.PageRouteInfo>? children})
      : super(
          HomeLoggedInOverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeLoggedInOverviewRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i10.HomeLoggedInOverviewScreen();
    },
  );
}

/// generated route for
/// [_i11.HomeScreen]
class HomeRoute extends _i43.PageRouteInfo<void> {
  const HomeRoute({List<_i43.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i11.HomeScreen();
    },
  );
}

/// generated route for
/// [_i12.LoginScreen]
class LoginRoute extends _i43.PageRouteInfo<void> {
  const LoginRoute({List<_i43.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i12.LoginScreen();
    },
  );
}

/// generated route for
/// [_i13.MediaCharactersScreen]
class MediaCharactersRoute
    extends _i43.PageRouteInfo<MediaCharactersRouteArgs> {
  MediaCharactersRoute({
    _i44.Key? key,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          MediaCharactersRoute.name,
          args: MediaCharactersRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaCharactersRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MediaCharactersRouteArgs>(
          orElse: () => MediaCharactersRouteArgs());
      return _i13.MediaCharactersScreen(
        key: args.key,
        mediaId: pathParams.getInt('id'),
      );
    },
  );
}

class MediaCharactersRouteArgs {
  const MediaCharactersRouteArgs({this.key});

  final _i44.Key? key;

  @override
  String toString() {
    return 'MediaCharactersRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.MediaInfoScreen]
class MediaInfoRoute extends _i43.PageRouteInfo<MediaInfoRouteArgs> {
  MediaInfoRoute({
    _i44.Key? key,
    required _i46.Query$Media$Media media,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          MediaInfoRoute.name,
          args: MediaInfoRouteArgs(
            key: key,
            media: media,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaInfoRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MediaInfoRouteArgs>();
      return _i14.MediaInfoScreen(
        key: args.key,
        media: args.media,
      );
    },
  );
}

class MediaInfoRouteArgs {
  const MediaInfoRouteArgs({
    this.key,
    required this.media,
  });

  final _i44.Key? key;

  final _i46.Query$Media$Media media;

  @override
  String toString() {
    return 'MediaInfoRouteArgs{key: $key, media: $media}';
  }
}

/// generated route for
/// [_i15.MediaRelationsScreen]
class MediaRelationsRoute extends _i43.PageRouteInfo<MediaRelationsRouteArgs> {
  MediaRelationsRoute({
    _i44.Key? key,
    required _i46.Query$Media$Media media,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          MediaRelationsRoute.name,
          args: MediaRelationsRouteArgs(
            key: key,
            media: media,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaRelationsRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MediaRelationsRouteArgs>();
      return _i15.MediaRelationsScreen(
        key: args.key,
        media: args.media,
      );
    },
  );
}

class MediaRelationsRouteArgs {
  const MediaRelationsRouteArgs({
    this.key,
    required this.media,
  });

  final _i44.Key? key;

  final _i46.Query$Media$Media media;

  @override
  String toString() {
    return 'MediaRelationsRouteArgs{key: $key, media: $media}';
  }
}

/// generated route for
/// [_i16.MediaReviewsScreen]
class MediaReviewsRoute extends _i43.PageRouteInfo<MediaReviewsRouteArgs> {
  MediaReviewsRoute({
    _i44.Key? key,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          MediaReviewsRoute.name,
          args: MediaReviewsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaReviewsRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MediaReviewsRouteArgs>(
          orElse: () => MediaReviewsRouteArgs());
      return _i16.MediaReviewsScreen(
        key: args.key,
        mediaId: pathParams.getInt('id'),
      );
    },
  );
}

class MediaReviewsRouteArgs {
  const MediaReviewsRouteArgs({this.key});

  final _i44.Key? key;

  @override
  String toString() {
    return 'MediaReviewsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.MediaScreen]
class MediaRoute extends _i43.PageRouteInfo<MediaRouteArgs> {
  MediaRoute({
    _i44.Key? key,
    required int id,
    _i47.Fragment$MediaFragment? placeholder,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          MediaRoute.name,
          args: MediaRouteArgs(
            key: key,
            id: id,
            placeholder: placeholder,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'MediaRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MediaRouteArgs>(
          orElse: () => MediaRouteArgs(id: pathParams.getInt('id')));
      return _i17.MediaScreen(
        key: args.key,
        id: args.id,
        placeholder: args.placeholder,
      );
    },
  );
}

class MediaRouteArgs {
  const MediaRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i44.Key? key;

  final int id;

  final _i47.Fragment$MediaFragment? placeholder;

  @override
  String toString() {
    return 'MediaRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i18.MediaSimilarScreen]
class MediaSimilarRoute extends _i43.PageRouteInfo<MediaSimilarRouteArgs> {
  MediaSimilarRoute({
    _i44.Key? key,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          MediaSimilarRoute.name,
          args: MediaSimilarRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaSimilarRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MediaSimilarRouteArgs>(
          orElse: () => MediaSimilarRouteArgs());
      return _i18.MediaSimilarScreen(
        key: args.key,
        mediaId: pathParams.getInt('id'),
      );
    },
  );
}

class MediaSimilarRouteArgs {
  const MediaSimilarRouteArgs({this.key});

  final _i44.Key? key;

  @override
  String toString() {
    return 'MediaSimilarRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i19.MediaStaffScreen]
class MediaStaffRoute extends _i43.PageRouteInfo<MediaStaffRouteArgs> {
  MediaStaffRoute({
    _i44.Key? key,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          MediaStaffRoute.name,
          args: MediaStaffRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaStaffRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args =
          data.argsAs<MediaStaffRouteArgs>(orElse: () => MediaStaffRouteArgs());
      return _i19.MediaStaffScreen(
        key: args.key,
        mediaId: pathParams.getInt('id'),
      );
    },
  );
}

class MediaStaffRouteArgs {
  const MediaStaffRouteArgs({this.key});

  final _i44.Key? key;

  @override
  String toString() {
    return 'MediaStaffRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i20.MediaThreadsScreen]
class MediaThreadsRoute extends _i43.PageRouteInfo<MediaThreadsRouteArgs> {
  MediaThreadsRoute({
    _i44.Key? key,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          MediaThreadsRoute.name,
          args: MediaThreadsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaThreadsRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MediaThreadsRouteArgs>(
          orElse: () => MediaThreadsRouteArgs());
      return _i20.MediaThreadsScreen(
        key: args.key,
        mediaId: pathParams.getInt('id'),
      );
    },
  );
}

class MediaThreadsRouteArgs {
  const MediaThreadsRouteArgs({this.key});

  final _i44.Key? key;

  @override
  String toString() {
    return 'MediaThreadsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i21.NotificationScreen]
class NotificationRoute extends _i43.PageRouteInfo<void> {
  const NotificationRoute({List<_i43.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i21.NotificationScreen();
    },
  );
}

/// generated route for
/// [_i22.RecommendationsScreen]
class RecommendationsRoute extends _i43.PageRouteInfo<void> {
  const RecommendationsRoute({List<_i43.PageRouteInfo>? children})
      : super(
          RecommendationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecommendationsRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i22.RecommendationsScreen();
    },
  );
}

/// generated route for
/// [_i23.ReviewScreen]
class ReviewRoute extends _i43.PageRouteInfo<ReviewRouteArgs> {
  ReviewRoute({
    _i44.Key? key,
    required int id,
    _i48.Fragment$ReviewFragment? placeholder,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          ReviewRoute.name,
          args: ReviewRouteArgs(
            key: key,
            id: id,
            placeholder: placeholder,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ReviewRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ReviewRouteArgs>(
          orElse: () => ReviewRouteArgs(id: pathParams.getInt('id')));
      return _i23.ReviewScreen(
        key: args.key,
        id: args.id,
        placeholder: args.placeholder,
      );
    },
  );
}

class ReviewRouteArgs {
  const ReviewRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i44.Key? key;

  final int id;

  final _i48.Fragment$ReviewFragment? placeholder;

  @override
  String toString() {
    return 'ReviewRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i24.ReviewsScreen]
class ReviewsRoute extends _i43.PageRouteInfo<void> {
  const ReviewsRoute({List<_i43.PageRouteInfo>? children})
      : super(
          ReviewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewsRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i24.ReviewsScreen();
    },
  );
}

/// generated route for
/// [_i25.SearchScreen]
class SearchRoute extends _i43.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i44.Key? key,
    bool? autofocus,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            autofocus: autofocus,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SearchRouteArgs>(orElse: () => const SearchRouteArgs());
      return _i25.SearchScreen(
        key: args.key,
        autofocus: args.autofocus,
      );
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.autofocus,
  });

  final _i44.Key? key;

  final bool? autofocus;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, autofocus: $autofocus}';
  }
}

/// generated route for
/// [_i26.SettingsScreen]
class SettingsRoute extends _i43.PageRouteInfo<void> {
  const SettingsRoute({List<_i43.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i26.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i27.StaffProductionRolesScreen]
class StaffProductionRolesRoute
    extends _i43.PageRouteInfo<StaffProductionRolesRouteArgs> {
  StaffProductionRolesRoute({
    _i44.Key? key,
    required _i49.Query$Staff$Staff$staffMedia staffRoles,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          StaffProductionRolesRoute.name,
          args: StaffProductionRolesRouteArgs(
            key: key,
            staffRoles: staffRoles,
          ),
          initialChildren: children,
        );

  static const String name = 'StaffProductionRolesRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StaffProductionRolesRouteArgs>();
      return _i27.StaffProductionRolesScreen(
        key: args.key,
        staffRoles: args.staffRoles,
      );
    },
  );
}

class StaffProductionRolesRouteArgs {
  const StaffProductionRolesRouteArgs({
    this.key,
    required this.staffRoles,
  });

  final _i44.Key? key;

  final _i49.Query$Staff$Staff$staffMedia staffRoles;

  @override
  String toString() {
    return 'StaffProductionRolesRouteArgs{key: $key, staffRoles: $staffRoles}';
  }
}

/// generated route for
/// [_i28.StaffScreen]
class StaffRoute extends _i43.PageRouteInfo<StaffRouteArgs> {
  StaffRoute({
    _i44.Key? key,
    required int id,
    _i50.Fragment$StaffFragment? placeholder,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          StaffRoute.name,
          args: StaffRouteArgs(
            key: key,
            id: id,
            placeholder: placeholder,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'StaffRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<StaffRouteArgs>(
          orElse: () => StaffRouteArgs(id: pathParams.getInt('id')));
      return _i28.StaffScreen(
        key: args.key,
        id: args.id,
        placeholder: args.placeholder,
      );
    },
  );
}

class StaffRouteArgs {
  const StaffRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i44.Key? key;

  final int id;

  final _i50.Fragment$StaffFragment? placeholder;

  @override
  String toString() {
    return 'StaffRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i29.StaffVARolesScreen]
class StaffVARolesRoute extends _i43.PageRouteInfo<StaffVARolesRouteArgs> {
  StaffVARolesRoute({
    _i44.Key? key,
    required _i49.Query$Staff$Staff$characterMedia medias,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          StaffVARolesRoute.name,
          args: StaffVARolesRouteArgs(
            key: key,
            medias: medias,
          ),
          initialChildren: children,
        );

  static const String name = 'StaffVARolesRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StaffVARolesRouteArgs>();
      return _i29.StaffVARolesScreen(
        key: args.key,
        medias: args.medias,
      );
    },
  );
}

class StaffVARolesRouteArgs {
  const StaffVARolesRouteArgs({
    this.key,
    required this.medias,
  });

  final _i44.Key? key;

  final _i49.Query$Staff$Staff$characterMedia medias;

  @override
  String toString() {
    return 'StaffVARolesRouteArgs{key: $key, medias: $medias}';
  }
}

/// generated route for
/// [_i30.StudioScreen]
class StudioRoute extends _i43.PageRouteInfo<StudioRouteArgs> {
  StudioRoute({
    _i44.Key? key,
    required int id,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          StudioRoute.name,
          args: StudioRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'StudioRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<StudioRouteArgs>(
          orElse: () => StudioRouteArgs(id: pathParams.getInt('id')));
      return _i30.StudioScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class StudioRouteArgs {
  const StudioRouteArgs({
    this.key,
    required this.id,
  });

  final _i44.Key? key;

  final int id;

  @override
  String toString() {
    return 'StudioRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i31.ThreadCommentScreen]
class ThreadCommentRoute extends _i43.PageRouteInfo<ThreadCommentRouteArgs> {
  ThreadCommentRoute({
    _i44.Key? key,
    required int commentId,
    required int id,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          ThreadCommentRoute.name,
          args: ThreadCommentRouteArgs(
            key: key,
            commentId: commentId,
            id: id,
          ),
          rawPathParams: {
            'commentId': commentId,
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'ThreadCommentRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ThreadCommentRouteArgs>(
          orElse: () => ThreadCommentRouteArgs(
                commentId: pathParams.getInt('commentId'),
                id: pathParams.getInt('id'),
              ));
      return _i31.ThreadCommentScreen(
        key: args.key,
        commentId: args.commentId,
        id: args.id,
      );
    },
  );
}

class ThreadCommentRouteArgs {
  const ThreadCommentRouteArgs({
    this.key,
    required this.commentId,
    required this.id,
  });

  final _i44.Key? key;

  final int commentId;

  final int id;

  @override
  String toString() {
    return 'ThreadCommentRouteArgs{key: $key, commentId: $commentId, id: $id}';
  }
}

/// generated route for
/// [_i32.ThreadScreen]
class ThreadRoute extends _i43.PageRouteInfo<ThreadRouteArgs> {
  ThreadRoute({
    _i44.Key? key,
    required int id,
    _i51.Fragment$ThreadFragment? placeholder,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          ThreadRoute.name,
          args: ThreadRouteArgs(
            key: key,
            id: id,
            placeholder: placeholder,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ThreadRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ThreadRouteArgs>(
          orElse: () => ThreadRouteArgs(id: pathParams.getInt('id')));
      return _i32.ThreadScreen(
        key: args.key,
        id: args.id,
        placeholder: args.placeholder,
      );
    },
  );
}

class ThreadRouteArgs {
  const ThreadRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i44.Key? key;

  final int id;

  final _i51.Fragment$ThreadFragment? placeholder;

  @override
  String toString() {
    return 'ThreadRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i33.TokenLoginPage]
class TokenLoginRoute extends _i43.PageRouteInfo<void> {
  const TokenLoginRoute({List<_i43.PageRouteInfo>? children})
      : super(
          TokenLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'TokenLoginRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      return const _i33.TokenLoginPage();
    },
  );
}

/// generated route for
/// [_i34.UserActivityScreen]
class UserActivityRoute extends _i43.PageRouteInfo<UserActivityRouteArgs> {
  UserActivityRoute({
    _i44.Key? key,
    required int id,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          UserActivityRoute.name,
          args: UserActivityRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'UserActivityRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserActivityRouteArgs>();
      return _i34.UserActivityScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class UserActivityRouteArgs {
  const UserActivityRouteArgs({
    this.key,
    required this.id,
  });

  final _i44.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserActivityRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i35.UserAnimeScreen]
class UserAnimeRoute extends _i43.PageRouteInfo<UserAnimeRouteArgs> {
  UserAnimeRoute({
    _i44.Key? key,
    required String name,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          UserAnimeRoute.name,
          args: UserAnimeRouteArgs(
            key: key,
            name: name,
          ),
          rawPathParams: {'name': name},
          initialChildren: children,
        );

  static const String name = 'UserAnimeRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserAnimeRouteArgs>(
          orElse: () => UserAnimeRouteArgs(name: pathParams.getString('name')));
      return _i35.UserAnimeScreen(
        key: args.key,
        name: args.name,
      );
    },
  );
}

class UserAnimeRouteArgs {
  const UserAnimeRouteArgs({
    this.key,
    required this.name,
  });

  final _i44.Key? key;

  final String name;

  @override
  String toString() {
    return 'UserAnimeRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i36.UserFavoritesScreen]
class UserFavoritesRoute extends _i43.PageRouteInfo<UserFavoritesRouteArgs> {
  UserFavoritesRoute({
    _i44.Key? key,
    required String name,
    required String tab,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          UserFavoritesRoute.name,
          args: UserFavoritesRouteArgs(
            key: key,
            name: name,
            tab: tab,
          ),
          rawPathParams: {
            'name': name,
            'tab': tab,
          },
          initialChildren: children,
        );

  static const String name = 'UserFavoritesRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserFavoritesRouteArgs>(
          orElse: () => UserFavoritesRouteArgs(
                name: pathParams.getString('name'),
                tab: pathParams.getString('tab'),
              ));
      return _i36.UserFavoritesScreen(
        key: args.key,
        name: args.name,
        tab: args.tab,
      );
    },
  );
}

class UserFavoritesRouteArgs {
  const UserFavoritesRouteArgs({
    this.key,
    required this.name,
    required this.tab,
  });

  final _i44.Key? key;

  final String name;

  final String tab;

  @override
  String toString() {
    return 'UserFavoritesRouteArgs{key: $key, name: $name, tab: $tab}';
  }
}

/// generated route for
/// [_i37.UserInfoScreen]
class UserInfoRoute extends _i43.PageRouteInfo<UserInfoRouteArgs> {
  UserInfoRoute({
    _i44.Key? key,
    required _i52.Query$User$User user,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          UserInfoRoute.name,
          args: UserInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserInfoRouteArgs>();
      return _i37.UserInfoScreen(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class UserInfoRouteArgs {
  const UserInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i44.Key? key;

  final _i52.Query$User$User user;

  @override
  String toString() {
    return 'UserInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i38.UserMangaScreen]
class UserMangaRoute extends _i43.PageRouteInfo<UserMangaRouteArgs> {
  UserMangaRoute({
    _i44.Key? key,
    required String name,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          UserMangaRoute.name,
          args: UserMangaRouteArgs(
            key: key,
            name: name,
          ),
          rawPathParams: {'name': name},
          initialChildren: children,
        );

  static const String name = 'UserMangaRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserMangaRouteArgs>(
          orElse: () => UserMangaRouteArgs(name: pathParams.getString('name')));
      return _i38.UserMangaScreen(
        key: args.key,
        name: args.name,
      );
    },
  );
}

class UserMangaRouteArgs {
  const UserMangaRouteArgs({
    this.key,
    required this.name,
  });

  final _i44.Key? key;

  final String name;

  @override
  String toString() {
    return 'UserMangaRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i39.UserReviewsScreen]
class UserReviewsRoute extends _i43.PageRouteInfo<UserReviewsRouteArgs> {
  UserReviewsRoute({
    _i44.Key? key,
    required int id,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          UserReviewsRoute.name,
          args: UserReviewsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'UserReviewsRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserReviewsRouteArgs>();
      return _i39.UserReviewsScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class UserReviewsRouteArgs {
  const UserReviewsRouteArgs({
    this.key,
    required this.id,
  });

  final _i44.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserReviewsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i40.UserScreen]
class UserRoute extends _i43.PageRouteInfo<UserRouteArgs> {
  UserRoute({
    _i44.Key? key,
    required String name,
    _i53.Fragment$UserFragment? placeholder,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          UserRoute.name,
          args: UserRouteArgs(
            key: key,
            name: name,
            placeholder: placeholder,
          ),
          rawPathParams: {'name': name},
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserRouteArgs>(
          orElse: () => UserRouteArgs(name: pathParams.getString('name')));
      return _i40.UserScreen(
        key: args.key,
        name: args.name,
        placeholder: args.placeholder,
      );
    },
  );
}

class UserRouteArgs {
  const UserRouteArgs({
    this.key,
    required this.name,
    this.placeholder,
  });

  final _i44.Key? key;

  final String name;

  final _i53.Fragment$UserFragment? placeholder;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, name: $name, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i41.UserSocialScreen]
class UserSocialRoute extends _i43.PageRouteInfo<UserSocialRouteArgs> {
  UserSocialRoute({
    _i44.Key? key,
    required int id,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          UserSocialRoute.name,
          args: UserSocialRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'UserSocialRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserSocialRouteArgs>();
      return _i41.UserSocialScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class UserSocialRouteArgs {
  const UserSocialRouteArgs({
    this.key,
    required this.id,
  });

  final _i44.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserSocialRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i42.UserThreadsScreen]
class UserThreadsRoute extends _i43.PageRouteInfo<UserThreadsRouteArgs> {
  UserThreadsRoute({
    _i44.Key? key,
    required int id,
    List<_i43.PageRouteInfo>? children,
  }) : super(
          UserThreadsRoute.name,
          args: UserThreadsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'UserThreadsRoute';

  static _i43.PageInfo page = _i43.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserThreadsRouteArgs>();
      return _i42.UserThreadsScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class UserThreadsRouteArgs {
  const UserThreadsRouteArgs({
    this.key,
    required this.id,
  });

  final _i44.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserThreadsRouteArgs{key: $key, id: $id}';
  }
}
