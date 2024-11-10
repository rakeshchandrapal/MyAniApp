// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i44;
import 'package:flutter/material.dart' as _i45;
import 'package:myaniapp/app/activity/page.dart' as _i1;
import 'package:myaniapp/app/auth/page.dart' as _i3;
import 'package:myaniapp/app/calendar/page.dart' as _i4;
import 'package:myaniapp/app/character/page.dart' as _i5;
import 'package:myaniapp/app/forum/%5Btab%5D/page.dart' as _i7;
import 'package:myaniapp/app/forum/thread/comment/page.dart' as _i32;
import 'package:myaniapp/app/forum/thread/page.dart' as _i33;
import 'package:myaniapp/app/home/activities.dart' as _i8;
import 'package:myaniapp/app/home/anime.dart' as _i9;
import 'package:myaniapp/app/home/explore/page.dart' as _i6;
import 'package:myaniapp/app/home/home.dart' as _i10;
import 'package:myaniapp/app/home/manga.dart' as _i11;
import 'package:myaniapp/app/home/page.dart' as _i12;
import 'package:myaniapp/app/login/anilist/page.dart' as _i2;
import 'package:myaniapp/app/login/page.dart' as _i13;
import 'package:myaniapp/app/login/token/page.dart' as _i34;
import 'package:myaniapp/app/media/characters.dart' as _i14;
import 'package:myaniapp/app/media/info.dart' as _i15;
import 'package:myaniapp/app/media/page.dart' as _i18;
import 'package:myaniapp/app/media/relations.dart' as _i16;
import 'package:myaniapp/app/media/reviews.dart' as _i17;
import 'package:myaniapp/app/media/similar.dart' as _i19;
import 'package:myaniapp/app/media/staff.dart' as _i20;
import 'package:myaniapp/app/media/threads.dart' as _i21;
import 'package:myaniapp/app/notifications/page.dart' as _i22;
import 'package:myaniapp/app/recommendations/page.dart' as _i23;
import 'package:myaniapp/app/review/page.dart' as _i24;
import 'package:myaniapp/app/reviews/page.dart' as _i25;
import 'package:myaniapp/app/search/media/page.dart' as _i26;
import 'package:myaniapp/app/settings/settings_screen.dart' as _i27;
import 'package:myaniapp/app/staff/page.dart' as _i29;
import 'package:myaniapp/app/staff/production_screen.dart' as _i28;
import 'package:myaniapp/app/staff/voice_screen.dart' as _i30;
import 'package:myaniapp/app/studio/page.dart' as _i31;
import 'package:myaniapp/app/user/activities.dart' as _i35;
import 'package:myaniapp/app/user/anime/page.dart' as _i36;
import 'package:myaniapp/app/user/favorites/page.dart' as _i37;
import 'package:myaniapp/app/user/info.dart' as _i38;
import 'package:myaniapp/app/user/manga/page.dart' as _i39;
import 'package:myaniapp/app/user/page.dart' as _i41;
import 'package:myaniapp/app/user/reviews.dart' as _i40;
import 'package:myaniapp/app/user/social.dart' as _i42;
import 'package:myaniapp/app/user/threads.dart' as _i43;
import 'package:myaniapp/graphql/__gen/app/media/media.graphql.dart' as _i47;
import 'package:myaniapp/graphql/__gen/app/staff/staff.graphql.dart' as _i50;
import 'package:myaniapp/graphql/__gen/app/user/user.graphql.dart' as _i53;
import 'package:myaniapp/graphql/__gen/graphql/fragments/character.graphql.dart'
    as _i46;
import 'package:myaniapp/graphql/__gen/graphql/fragments/media.graphql.dart'
    as _i48;
import 'package:myaniapp/graphql/__gen/graphql/fragments/review.graphql.dart'
    as _i49;
import 'package:myaniapp/graphql/__gen/graphql/fragments/staff.graphql.dart'
    as _i51;
import 'package:myaniapp/graphql/__gen/graphql/fragments/thread.graphql.dart'
    as _i52;
import 'package:myaniapp/graphql/__gen/graphql/fragments/user.graphql.dart'
    as _i54;

abstract class $AppRouter extends _i44.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i44.PageFactory> pagesMap = {
    ActivityRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ActivityRouteArgs>(
          orElse: () => ActivityRouteArgs(id: pathParams.getInt('id')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ActivityPage(
          key: args.key,
          id: args.id,
          placeholder: args.placeholder,
        ),
      );
    },
    AnilistLoginRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AnilistLoginScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<AuthRouteArgs>(
          orElse: () => AuthRouteArgs(
              accessToken: queryParams.optString('access_token')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AuthScreen(
          key: args.key,
          accessToken: args.accessToken,
        ),
      );
    },
    CalendarRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CalendarScreen(),
      );
    },
    CharacterRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CharacterRouteArgs>(
          orElse: () => CharacterRouteArgs(id: pathParams.getInt('id')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CharacterPage(
          key: args.key,
          id: args.id,
          placeholder: args.placeholder,
        ),
      );
    },
    ExploreRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ExploreScreen(),
      );
    },
    ForumRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ForumRouteArgs>(
          orElse: () => ForumRouteArgs(
                search: queryParams.optString('search'),
                category: queryParams.optInt('category'),
                tab: pathParams.getString('tab'),
              ));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ForumScreen(
          key: args.key,
          search: args.search,
          category: args.category,
          tab: args.tab,
        ),
      );
    },
    HomeActivitiesRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeActivitiesScreen(),
      );
    },
    HomeAnimeListRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HomeAnimeListScreen(),
      );
    },
    HomeLoggedInOverviewRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.HomeLoggedInOverviewScreen(),
      );
    },
    HomeMangaListRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.HomeMangaListPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.LoginScreen(),
      );
    },
    MediaCharactersRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MediaCharactersRouteArgs>(
          orElse: () => MediaCharactersRouteArgs());
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.MediaCharactersScreen(
          key: args.key,
          mediaId: pathParams.getInt('id'),
        ),
      );
    },
    MediaInfoRoute.name: (routeData) {
      final args = routeData.argsAs<MediaInfoRouteArgs>();
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.MediaInfoScreen(
          key: args.key,
          media: args.media,
        ),
      );
    },
    MediaRelationsRoute.name: (routeData) {
      final args = routeData.argsAs<MediaRelationsRouteArgs>();
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.MediaRelationsScreen(
          key: args.key,
          media: args.media,
        ),
      );
    },
    MediaReviewsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MediaReviewsRouteArgs>(
          orElse: () => MediaReviewsRouteArgs());
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.MediaReviewsScreen(
          key: args.key,
          mediaId: pathParams.getInt('id'),
        ),
      );
    },
    MediaRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MediaRouteArgs>(
          orElse: () => MediaRouteArgs(id: pathParams.getInt('id')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.MediaScreen(
          key: args.key,
          id: args.id,
          placeholder: args.placeholder,
        ),
      );
    },
    MediaSimilarRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MediaSimilarRouteArgs>(
          orElse: () => MediaSimilarRouteArgs());
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.MediaSimilarScreen(
          key: args.key,
          mediaId: pathParams.getInt('id'),
        ),
      );
    },
    MediaStaffRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MediaStaffRouteArgs>(
          orElse: () => MediaStaffRouteArgs());
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.MediaStaffScreen(
          key: args.key,
          mediaId: pathParams.getInt('id'),
        ),
      );
    },
    MediaThreadsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MediaThreadsRouteArgs>(
          orElse: () => MediaThreadsRouteArgs());
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.MediaThreadsScreen(
          key: args.key,
          mediaId: pathParams.getInt('id'),
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.NotificationScreen(),
      );
    },
    RecommendationsRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.RecommendationsScreen(),
      );
    },
    ReviewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ReviewRouteArgs>(
          orElse: () => ReviewRouteArgs(id: pathParams.getInt('id')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.ReviewScreen(
          key: args.key,
          id: args.id,
          placeholder: args.placeholder,
        ),
      );
    },
    ReviewsRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.ReviewsScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.SearchScreen(
          key: args.key,
          autofocus: args.autofocus,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.SettingsScreen(),
      );
    },
    StaffProductionRolesRoute.name: (routeData) {
      final args = routeData.argsAs<StaffProductionRolesRouteArgs>();
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.StaffProductionRolesScreen(
          key: args.key,
          staffRoles: args.staffRoles,
        ),
      );
    },
    StaffRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<StaffRouteArgs>(
          orElse: () => StaffRouteArgs(id: pathParams.getInt('id')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.StaffScreen(
          key: args.key,
          id: args.id,
          placeholder: args.placeholder,
        ),
      );
    },
    StaffVARolesRoute.name: (routeData) {
      final args = routeData.argsAs<StaffVARolesRouteArgs>();
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.StaffVARolesScreen(
          key: args.key,
          medias: args.medias,
        ),
      );
    },
    StudioRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<StudioRouteArgs>(
          orElse: () => StudioRouteArgs(id: pathParams.getInt('id')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i31.StudioScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ThreadCommentRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ThreadCommentRouteArgs>(
          orElse: () => ThreadCommentRouteArgs(
                commentId: pathParams.getInt('commentId'),
                id: pathParams.getInt('id'),
              ));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i32.ThreadCommentScreen(
          key: args.key,
          commentId: args.commentId,
          id: args.id,
        ),
      );
    },
    ThreadRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ThreadRouteArgs>(
          orElse: () => ThreadRouteArgs(id: pathParams.getInt('id')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i33.ThreadScreen(
          key: args.key,
          id: args.id,
          placeholder: args.placeholder,
        ),
      );
    },
    TokenLoginRoute.name: (routeData) {
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.TokenLoginPage(),
      );
    },
    UserActivityRoute.name: (routeData) {
      final args = routeData.argsAs<UserActivityRouteArgs>();
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i35.UserActivityScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    UserAnimeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserAnimeRouteArgs>(
          orElse: () => UserAnimeRouteArgs(name: pathParams.getString('name')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i36.UserAnimeScreen(
          key: args.key,
          name: args.name,
        ),
      );
    },
    UserFavoritesRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserFavoritesRouteArgs>(
          orElse: () => UserFavoritesRouteArgs(
                name: pathParams.getString('name'),
                tab: pathParams.getString('tab'),
              ));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i37.UserFavoritesScreen(
          key: args.key,
          name: args.name,
          tab: args.tab,
        ),
      );
    },
    UserInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserInfoRouteArgs>();
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i38.UserInfoScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserMangaRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserMangaRouteArgs>(
          orElse: () => UserMangaRouteArgs(name: pathParams.getString('name')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i39.UserMangaScreen(
          key: args.key,
          name: args.name,
        ),
      );
    },
    UserReviewsRoute.name: (routeData) {
      final args = routeData.argsAs<UserReviewsRouteArgs>();
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i40.UserReviewsScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    UserRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserRouteArgs>(
          orElse: () => UserRouteArgs(name: pathParams.getString('name')));
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i41.UserScreen(
          key: args.key,
          name: args.name,
          placeholder: args.placeholder,
        ),
      );
    },
    UserSocialRoute.name: (routeData) {
      final args = routeData.argsAs<UserSocialRouteArgs>();
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i42.UserSocialScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    UserThreadsRoute.name: (routeData) {
      final args = routeData.argsAs<UserThreadsRouteArgs>();
      return _i44.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i43.UserThreadsScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ActivityPage]
class ActivityRoute extends _i44.PageRouteInfo<ActivityRouteArgs> {
  ActivityRoute({
    _i45.Key? key,
    required int id,
    dynamic placeholder,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<ActivityRouteArgs> page =
      _i44.PageInfo<ActivityRouteArgs>(name);
}

class ActivityRouteArgs {
  const ActivityRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i45.Key? key;

  final int id;

  final dynamic placeholder;

  @override
  String toString() {
    return 'ActivityRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i2.AnilistLoginScreen]
class AnilistLoginRoute extends _i44.PageRouteInfo<void> {
  const AnilistLoginRoute({List<_i44.PageRouteInfo>? children})
      : super(
          AnilistLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnilistLoginRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthScreen]
class AuthRoute extends _i44.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i45.Key? key,
    String? accessToken,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<AuthRouteArgs> page =
      _i44.PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.accessToken,
  });

  final _i45.Key? key;

  final String? accessToken;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, accessToken: $accessToken}';
  }
}

/// generated route for
/// [_i4.CalendarScreen]
class CalendarRoute extends _i44.PageRouteInfo<void> {
  const CalendarRoute({List<_i44.PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CharacterPage]
class CharacterRoute extends _i44.PageRouteInfo<CharacterRouteArgs> {
  CharacterRoute({
    _i45.Key? key,
    required int id,
    _i46.Fragment$CharacterFragment? placeholder,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<CharacterRouteArgs> page =
      _i44.PageInfo<CharacterRouteArgs>(name);
}

class CharacterRouteArgs {
  const CharacterRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i45.Key? key;

  final int id;

  final _i46.Fragment$CharacterFragment? placeholder;

  @override
  String toString() {
    return 'CharacterRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i6.ExploreScreen]
class ExploreRoute extends _i44.PageRouteInfo<void> {
  const ExploreRoute({List<_i44.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ForumScreen]
class ForumRoute extends _i44.PageRouteInfo<ForumRouteArgs> {
  ForumRoute({
    _i45.Key? key,
    String? search,
    int? category,
    required String tab,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<ForumRouteArgs> page =
      _i44.PageInfo<ForumRouteArgs>(name);
}

class ForumRouteArgs {
  const ForumRouteArgs({
    this.key,
    this.search,
    this.category,
    required this.tab,
  });

  final _i45.Key? key;

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
class HomeActivitiesRoute extends _i44.PageRouteInfo<void> {
  const HomeActivitiesRoute({List<_i44.PageRouteInfo>? children})
      : super(
          HomeActivitiesRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeActivitiesRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HomeAnimeListScreen]
class HomeAnimeListRoute extends _i44.PageRouteInfo<void> {
  const HomeAnimeListRoute({List<_i44.PageRouteInfo>? children})
      : super(
          HomeAnimeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeAnimeListRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i10.HomeLoggedInOverviewScreen]
class HomeLoggedInOverviewRoute extends _i44.PageRouteInfo<void> {
  const HomeLoggedInOverviewRoute({List<_i44.PageRouteInfo>? children})
      : super(
          HomeLoggedInOverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeLoggedInOverviewRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i11.HomeMangaListPage]
class HomeMangaListRoute extends _i44.PageRouteInfo<void> {
  const HomeMangaListRoute({List<_i44.PageRouteInfo>? children})
      : super(
          HomeMangaListRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeMangaListRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i12.HomeScreen]
class HomeRoute extends _i44.PageRouteInfo<void> {
  const HomeRoute({List<_i44.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i13.LoginScreen]
class LoginRoute extends _i44.PageRouteInfo<void> {
  const LoginRoute({List<_i44.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MediaCharactersScreen]
class MediaCharactersRoute
    extends _i44.PageRouteInfo<MediaCharactersRouteArgs> {
  MediaCharactersRoute({
    _i45.Key? key,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          MediaCharactersRoute.name,
          args: MediaCharactersRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaCharactersRoute';

  static const _i44.PageInfo<MediaCharactersRouteArgs> page =
      _i44.PageInfo<MediaCharactersRouteArgs>(name);
}

class MediaCharactersRouteArgs {
  const MediaCharactersRouteArgs({this.key});

  final _i45.Key? key;

  @override
  String toString() {
    return 'MediaCharactersRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.MediaInfoScreen]
class MediaInfoRoute extends _i44.PageRouteInfo<MediaInfoRouteArgs> {
  MediaInfoRoute({
    _i45.Key? key,
    required _i47.Query$Media$Media media,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          MediaInfoRoute.name,
          args: MediaInfoRouteArgs(
            key: key,
            media: media,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaInfoRoute';

  static const _i44.PageInfo<MediaInfoRouteArgs> page =
      _i44.PageInfo<MediaInfoRouteArgs>(name);
}

class MediaInfoRouteArgs {
  const MediaInfoRouteArgs({
    this.key,
    required this.media,
  });

  final _i45.Key? key;

  final _i47.Query$Media$Media media;

  @override
  String toString() {
    return 'MediaInfoRouteArgs{key: $key, media: $media}';
  }
}

/// generated route for
/// [_i16.MediaRelationsScreen]
class MediaRelationsRoute extends _i44.PageRouteInfo<MediaRelationsRouteArgs> {
  MediaRelationsRoute({
    _i45.Key? key,
    required _i47.Query$Media$Media media,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          MediaRelationsRoute.name,
          args: MediaRelationsRouteArgs(
            key: key,
            media: media,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaRelationsRoute';

  static const _i44.PageInfo<MediaRelationsRouteArgs> page =
      _i44.PageInfo<MediaRelationsRouteArgs>(name);
}

class MediaRelationsRouteArgs {
  const MediaRelationsRouteArgs({
    this.key,
    required this.media,
  });

  final _i45.Key? key;

  final _i47.Query$Media$Media media;

  @override
  String toString() {
    return 'MediaRelationsRouteArgs{key: $key, media: $media}';
  }
}

/// generated route for
/// [_i17.MediaReviewsScreen]
class MediaReviewsRoute extends _i44.PageRouteInfo<MediaReviewsRouteArgs> {
  MediaReviewsRoute({
    _i45.Key? key,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          MediaReviewsRoute.name,
          args: MediaReviewsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaReviewsRoute';

  static const _i44.PageInfo<MediaReviewsRouteArgs> page =
      _i44.PageInfo<MediaReviewsRouteArgs>(name);
}

class MediaReviewsRouteArgs {
  const MediaReviewsRouteArgs({this.key});

  final _i45.Key? key;

  @override
  String toString() {
    return 'MediaReviewsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i18.MediaScreen]
class MediaRoute extends _i44.PageRouteInfo<MediaRouteArgs> {
  MediaRoute({
    _i45.Key? key,
    required int id,
    _i48.Fragment$MediaFragment? placeholder,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<MediaRouteArgs> page =
      _i44.PageInfo<MediaRouteArgs>(name);
}

class MediaRouteArgs {
  const MediaRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i45.Key? key;

  final int id;

  final _i48.Fragment$MediaFragment? placeholder;

  @override
  String toString() {
    return 'MediaRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i19.MediaSimilarScreen]
class MediaSimilarRoute extends _i44.PageRouteInfo<MediaSimilarRouteArgs> {
  MediaSimilarRoute({
    _i45.Key? key,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          MediaSimilarRoute.name,
          args: MediaSimilarRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaSimilarRoute';

  static const _i44.PageInfo<MediaSimilarRouteArgs> page =
      _i44.PageInfo<MediaSimilarRouteArgs>(name);
}

class MediaSimilarRouteArgs {
  const MediaSimilarRouteArgs({this.key});

  final _i45.Key? key;

  @override
  String toString() {
    return 'MediaSimilarRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i20.MediaStaffScreen]
class MediaStaffRoute extends _i44.PageRouteInfo<MediaStaffRouteArgs> {
  MediaStaffRoute({
    _i45.Key? key,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          MediaStaffRoute.name,
          args: MediaStaffRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaStaffRoute';

  static const _i44.PageInfo<MediaStaffRouteArgs> page =
      _i44.PageInfo<MediaStaffRouteArgs>(name);
}

class MediaStaffRouteArgs {
  const MediaStaffRouteArgs({this.key});

  final _i45.Key? key;

  @override
  String toString() {
    return 'MediaStaffRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i21.MediaThreadsScreen]
class MediaThreadsRoute extends _i44.PageRouteInfo<MediaThreadsRouteArgs> {
  MediaThreadsRoute({
    _i45.Key? key,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          MediaThreadsRoute.name,
          args: MediaThreadsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MediaThreadsRoute';

  static const _i44.PageInfo<MediaThreadsRouteArgs> page =
      _i44.PageInfo<MediaThreadsRouteArgs>(name);
}

class MediaThreadsRouteArgs {
  const MediaThreadsRouteArgs({this.key});

  final _i45.Key? key;

  @override
  String toString() {
    return 'MediaThreadsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i22.NotificationScreen]
class NotificationRoute extends _i44.PageRouteInfo<void> {
  const NotificationRoute({List<_i44.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i23.RecommendationsScreen]
class RecommendationsRoute extends _i44.PageRouteInfo<void> {
  const RecommendationsRoute({List<_i44.PageRouteInfo>? children})
      : super(
          RecommendationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecommendationsRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i24.ReviewScreen]
class ReviewRoute extends _i44.PageRouteInfo<ReviewRouteArgs> {
  ReviewRoute({
    _i45.Key? key,
    required int id,
    _i49.Fragment$ReviewFragment? placeholder,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<ReviewRouteArgs> page =
      _i44.PageInfo<ReviewRouteArgs>(name);
}

class ReviewRouteArgs {
  const ReviewRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i45.Key? key;

  final int id;

  final _i49.Fragment$ReviewFragment? placeholder;

  @override
  String toString() {
    return 'ReviewRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i25.ReviewsScreen]
class ReviewsRoute extends _i44.PageRouteInfo<void> {
  const ReviewsRoute({List<_i44.PageRouteInfo>? children})
      : super(
          ReviewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewsRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SearchScreen]
class SearchRoute extends _i44.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i45.Key? key,
    bool? autofocus,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            autofocus: autofocus,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i44.PageInfo<SearchRouteArgs> page =
      _i44.PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.autofocus,
  });

  final _i45.Key? key;

  final bool? autofocus;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, autofocus: $autofocus}';
  }
}

/// generated route for
/// [_i27.SettingsScreen]
class SettingsRoute extends _i44.PageRouteInfo<void> {
  const SettingsRoute({List<_i44.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i28.StaffProductionRolesScreen]
class StaffProductionRolesRoute
    extends _i44.PageRouteInfo<StaffProductionRolesRouteArgs> {
  StaffProductionRolesRoute({
    _i45.Key? key,
    required _i50.Query$Staff$Staff$staffMedia staffRoles,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          StaffProductionRolesRoute.name,
          args: StaffProductionRolesRouteArgs(
            key: key,
            staffRoles: staffRoles,
          ),
          initialChildren: children,
        );

  static const String name = 'StaffProductionRolesRoute';

  static const _i44.PageInfo<StaffProductionRolesRouteArgs> page =
      _i44.PageInfo<StaffProductionRolesRouteArgs>(name);
}

class StaffProductionRolesRouteArgs {
  const StaffProductionRolesRouteArgs({
    this.key,
    required this.staffRoles,
  });

  final _i45.Key? key;

  final _i50.Query$Staff$Staff$staffMedia staffRoles;

  @override
  String toString() {
    return 'StaffProductionRolesRouteArgs{key: $key, staffRoles: $staffRoles}';
  }
}

/// generated route for
/// [_i29.StaffScreen]
class StaffRoute extends _i44.PageRouteInfo<StaffRouteArgs> {
  StaffRoute({
    _i45.Key? key,
    required int id,
    _i51.Fragment$StaffFragment? placeholder,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<StaffRouteArgs> page =
      _i44.PageInfo<StaffRouteArgs>(name);
}

class StaffRouteArgs {
  const StaffRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i45.Key? key;

  final int id;

  final _i51.Fragment$StaffFragment? placeholder;

  @override
  String toString() {
    return 'StaffRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i30.StaffVARolesScreen]
class StaffVARolesRoute extends _i44.PageRouteInfo<StaffVARolesRouteArgs> {
  StaffVARolesRoute({
    _i45.Key? key,
    required _i50.Query$Staff$Staff$characterMedia medias,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          StaffVARolesRoute.name,
          args: StaffVARolesRouteArgs(
            key: key,
            medias: medias,
          ),
          initialChildren: children,
        );

  static const String name = 'StaffVARolesRoute';

  static const _i44.PageInfo<StaffVARolesRouteArgs> page =
      _i44.PageInfo<StaffVARolesRouteArgs>(name);
}

class StaffVARolesRouteArgs {
  const StaffVARolesRouteArgs({
    this.key,
    required this.medias,
  });

  final _i45.Key? key;

  final _i50.Query$Staff$Staff$characterMedia medias;

  @override
  String toString() {
    return 'StaffVARolesRouteArgs{key: $key, medias: $medias}';
  }
}

/// generated route for
/// [_i31.StudioScreen]
class StudioRoute extends _i44.PageRouteInfo<StudioRouteArgs> {
  StudioRoute({
    _i45.Key? key,
    required int id,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<StudioRouteArgs> page =
      _i44.PageInfo<StudioRouteArgs>(name);
}

class StudioRouteArgs {
  const StudioRouteArgs({
    this.key,
    required this.id,
  });

  final _i45.Key? key;

  final int id;

  @override
  String toString() {
    return 'StudioRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i32.ThreadCommentScreen]
class ThreadCommentRoute extends _i44.PageRouteInfo<ThreadCommentRouteArgs> {
  ThreadCommentRoute({
    _i45.Key? key,
    required int commentId,
    required int id,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<ThreadCommentRouteArgs> page =
      _i44.PageInfo<ThreadCommentRouteArgs>(name);
}

class ThreadCommentRouteArgs {
  const ThreadCommentRouteArgs({
    this.key,
    required this.commentId,
    required this.id,
  });

  final _i45.Key? key;

  final int commentId;

  final int id;

  @override
  String toString() {
    return 'ThreadCommentRouteArgs{key: $key, commentId: $commentId, id: $id}';
  }
}

/// generated route for
/// [_i33.ThreadScreen]
class ThreadRoute extends _i44.PageRouteInfo<ThreadRouteArgs> {
  ThreadRoute({
    _i45.Key? key,
    required int id,
    _i52.Fragment$ThreadFragment? placeholder,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<ThreadRouteArgs> page =
      _i44.PageInfo<ThreadRouteArgs>(name);
}

class ThreadRouteArgs {
  const ThreadRouteArgs({
    this.key,
    required this.id,
    this.placeholder,
  });

  final _i45.Key? key;

  final int id;

  final _i52.Fragment$ThreadFragment? placeholder;

  @override
  String toString() {
    return 'ThreadRouteArgs{key: $key, id: $id, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i34.TokenLoginPage]
class TokenLoginRoute extends _i44.PageRouteInfo<void> {
  const TokenLoginRoute({List<_i44.PageRouteInfo>? children})
      : super(
          TokenLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'TokenLoginRoute';

  static const _i44.PageInfo<void> page = _i44.PageInfo<void>(name);
}

/// generated route for
/// [_i35.UserActivityScreen]
class UserActivityRoute extends _i44.PageRouteInfo<UserActivityRouteArgs> {
  UserActivityRoute({
    _i45.Key? key,
    required int id,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          UserActivityRoute.name,
          args: UserActivityRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'UserActivityRoute';

  static const _i44.PageInfo<UserActivityRouteArgs> page =
      _i44.PageInfo<UserActivityRouteArgs>(name);
}

class UserActivityRouteArgs {
  const UserActivityRouteArgs({
    this.key,
    required this.id,
  });

  final _i45.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserActivityRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i36.UserAnimeScreen]
class UserAnimeRoute extends _i44.PageRouteInfo<UserAnimeRouteArgs> {
  UserAnimeRoute({
    _i45.Key? key,
    required String name,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<UserAnimeRouteArgs> page =
      _i44.PageInfo<UserAnimeRouteArgs>(name);
}

class UserAnimeRouteArgs {
  const UserAnimeRouteArgs({
    this.key,
    required this.name,
  });

  final _i45.Key? key;

  final String name;

  @override
  String toString() {
    return 'UserAnimeRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i37.UserFavoritesScreen]
class UserFavoritesRoute extends _i44.PageRouteInfo<UserFavoritesRouteArgs> {
  UserFavoritesRoute({
    _i45.Key? key,
    required String name,
    required String tab,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<UserFavoritesRouteArgs> page =
      _i44.PageInfo<UserFavoritesRouteArgs>(name);
}

class UserFavoritesRouteArgs {
  const UserFavoritesRouteArgs({
    this.key,
    required this.name,
    required this.tab,
  });

  final _i45.Key? key;

  final String name;

  final String tab;

  @override
  String toString() {
    return 'UserFavoritesRouteArgs{key: $key, name: $name, tab: $tab}';
  }
}

/// generated route for
/// [_i38.UserInfoScreen]
class UserInfoRoute extends _i44.PageRouteInfo<UserInfoRouteArgs> {
  UserInfoRoute({
    _i45.Key? key,
    required _i53.Query$User$User user,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          UserInfoRoute.name,
          args: UserInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static const _i44.PageInfo<UserInfoRouteArgs> page =
      _i44.PageInfo<UserInfoRouteArgs>(name);
}

class UserInfoRouteArgs {
  const UserInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i45.Key? key;

  final _i53.Query$User$User user;

  @override
  String toString() {
    return 'UserInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i39.UserMangaScreen]
class UserMangaRoute extends _i44.PageRouteInfo<UserMangaRouteArgs> {
  UserMangaRoute({
    _i45.Key? key,
    required String name,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<UserMangaRouteArgs> page =
      _i44.PageInfo<UserMangaRouteArgs>(name);
}

class UserMangaRouteArgs {
  const UserMangaRouteArgs({
    this.key,
    required this.name,
  });

  final _i45.Key? key;

  final String name;

  @override
  String toString() {
    return 'UserMangaRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i40.UserReviewsScreen]
class UserReviewsRoute extends _i44.PageRouteInfo<UserReviewsRouteArgs> {
  UserReviewsRoute({
    _i45.Key? key,
    required int id,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          UserReviewsRoute.name,
          args: UserReviewsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'UserReviewsRoute';

  static const _i44.PageInfo<UserReviewsRouteArgs> page =
      _i44.PageInfo<UserReviewsRouteArgs>(name);
}

class UserReviewsRouteArgs {
  const UserReviewsRouteArgs({
    this.key,
    required this.id,
  });

  final _i45.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserReviewsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i41.UserScreen]
class UserRoute extends _i44.PageRouteInfo<UserRouteArgs> {
  UserRoute({
    _i45.Key? key,
    required String name,
    _i54.Fragment$UserFragment? placeholder,
    List<_i44.PageRouteInfo>? children,
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

  static const _i44.PageInfo<UserRouteArgs> page =
      _i44.PageInfo<UserRouteArgs>(name);
}

class UserRouteArgs {
  const UserRouteArgs({
    this.key,
    required this.name,
    this.placeholder,
  });

  final _i45.Key? key;

  final String name;

  final _i54.Fragment$UserFragment? placeholder;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, name: $name, placeholder: $placeholder}';
  }
}

/// generated route for
/// [_i42.UserSocialScreen]
class UserSocialRoute extends _i44.PageRouteInfo<UserSocialRouteArgs> {
  UserSocialRoute({
    _i45.Key? key,
    required int id,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          UserSocialRoute.name,
          args: UserSocialRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'UserSocialRoute';

  static const _i44.PageInfo<UserSocialRouteArgs> page =
      _i44.PageInfo<UserSocialRouteArgs>(name);
}

class UserSocialRouteArgs {
  const UserSocialRouteArgs({
    this.key,
    required this.id,
  });

  final _i45.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserSocialRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i43.UserThreadsScreen]
class UserThreadsRoute extends _i44.PageRouteInfo<UserThreadsRouteArgs> {
  UserThreadsRoute({
    _i45.Key? key,
    required int id,
    List<_i44.PageRouteInfo>? children,
  }) : super(
          UserThreadsRoute.name,
          args: UserThreadsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'UserThreadsRoute';

  static const _i44.PageInfo<UserThreadsRouteArgs> page =
      _i44.PageInfo<UserThreadsRouteArgs>(name);
}

class UserThreadsRouteArgs {
  const UserThreadsRouteArgs({
    this.key,
    required this.id,
  });

  final _i45.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserThreadsRouteArgs{key: $key, id: $id}';
  }
}
