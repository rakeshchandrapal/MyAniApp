// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i29;
import 'package:myaniapp/ui/empty_route.dart' as _i1;
import 'package:myaniapp/ui/pages/activity/activity.dart' as _i2;
import 'package:myaniapp/ui/pages/character/character.dart' as _i3;
import 'package:myaniapp/ui/pages/home/animelist/animelist.dart' as _i4;
import 'package:myaniapp/ui/pages/home/discover/discover.dart' as _i5;
import 'package:myaniapp/ui/pages/home/home.dart' as _i6;
import 'package:myaniapp/ui/pages/home/mangalist/mangalist.dart' as _i7;
import 'package:myaniapp/ui/pages/home/overview/overview.dart' as _i8;
import 'package:myaniapp/ui/pages/home/social/social.dart' as _i9;
import 'package:myaniapp/ui/pages/login/anilist.dart' as _i10;
import 'package:myaniapp/ui/pages/login/login.dart' as _i11;
import 'package:myaniapp/ui/pages/login/token.dart' as _i12;
import 'package:myaniapp/ui/pages/media/media.dart' as _i13;
import 'package:myaniapp/ui/pages/notifications/notifications.dart' as _i14;
import 'package:myaniapp/ui/pages/profile/favorites/anime/anime.dart' as _i15;
import 'package:myaniapp/ui/pages/profile/favorites/manga/manga.dart' as _i16;
import 'package:myaniapp/ui/pages/profile/lists/anime.dart' as _i17;
import 'package:myaniapp/ui/pages/profile/lists/manga.dart' as _i18;
import 'package:myaniapp/ui/pages/profile/profile.dart' as _i19;
import 'package:myaniapp/ui/pages/review/review.dart' as _i20;
import 'package:myaniapp/ui/pages/search/search.dart' as _i21;
import 'package:myaniapp/ui/pages/settings/app.dart' as _i22;
import 'package:myaniapp/ui/pages/settings/colors.dart' as _i23;
import 'package:myaniapp/ui/pages/settings/settings.dart' as _i24;
import 'package:myaniapp/ui/pages/staff/staff.dart' as _i25;
import 'package:myaniapp/ui/pages/thread/thread.dart' as _i26;
import 'package:myaniapp/ui/pages/threads/threads.dart' as _i27;

abstract class $Router extends _i28.RootStackRouter {
  $Router({super.navigatorKey});

  @override
  final Map<String, _i28.PageFactory> pagesMap = {
    EmptyRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyPage(),
      );
    },
    ActivityRoute.name: (routeData) {
      final args = routeData.argsAs<ActivityRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ActivityPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CharacterRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CharacterPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    AnimeListRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AnimeListPage(),
      );
    },
    DiscoverRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DiscoverPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    MangaListRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MangaListPage(),
      );
    },
    OverviewRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OverviewPage(),
      );
    },
    SocialRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SocialPage(),
      );
    },
    AniLoginRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.AniLoginPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.LoginPage(),
      );
    },
    TokenLoginRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.TokenLoginPage(),
      );
    },
    MediaRoute.name: (routeData) {
      final args = routeData.argsAs<MediaRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.MediaPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.NotificationsPage(),
      );
    },
    FavoriteAnimeRoute.name: (routeData) {
      final args = routeData.argsAs<FavoriteAnimeRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.FavoriteAnimePage(
          key: args.key,
          name: args.name,
        ),
      );
    },
    FavoriteMangaRoute.name: (routeData) {
      final args = routeData.argsAs<FavoriteMangaRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.FavoriteMangaPage(
          key: args.key,
          name: args.name,
        ),
      );
    },
    ProfileAnimeListRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileAnimeListRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.ProfileAnimeListPage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    ProfileMangaListRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileMangaListRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.ProfileMangaListPage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.ProfilePage(
          key: args.key,
          name: args.name,
        ),
      );
    },
    ReviewRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.ReviewPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.SearchPage(
          key: args.key,
          isAdult: args.isAdult,
          type: args.type,
          sort: args.sort,
          year: args.year,
          season: args.season,
          search: args.search,
          genres: args.genres,
          hideOnList: args.hideOnList,
          tags: args.tags,
        ),
      );
    },
    AppSettingsRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.AppSettingsPage(),
      );
    },
    ColorsRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.ColorsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.SettingsPage(),
      );
    },
    StaffRoute.name: (routeData) {
      final args = routeData.argsAs<StaffRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.StaffPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ThreadRoute.name: (routeData) {
      final args = routeData.argsAs<ThreadRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.ThreadPage(
          args.id,
          key: args.key,
        ),
      );
    },
    ThreadsRoute.name: (routeData) {
      final args = routeData.argsAs<ThreadsRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.ThreadsPage(
          key: args.key,
          feed: args.feed,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.EmptyPage]
class EmptyRoute extends _i28.PageRouteInfo<void> {
  const EmptyRoute({List<_i28.PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ActivityPage]
class ActivityRoute extends _i28.PageRouteInfo<ActivityRouteArgs> {
  ActivityRoute({
    _i29.Key? key,
    required int id,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ActivityRoute.name,
          args: ActivityRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ActivityRoute';

  static const _i28.PageInfo<ActivityRouteArgs> page =
      _i28.PageInfo<ActivityRouteArgs>(name);
}

class ActivityRouteArgs {
  const ActivityRouteArgs({
    this.key,
    required this.id,
  });

  final _i29.Key? key;

  final int id;

  @override
  String toString() {
    return 'ActivityRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.CharacterPage]
class CharacterRoute extends _i28.PageRouteInfo<CharacterRouteArgs> {
  CharacterRoute({
    _i29.Key? key,
    required int id,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          CharacterRoute.name,
          args: CharacterRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterRoute';

  static const _i28.PageInfo<CharacterRouteArgs> page =
      _i28.PageInfo<CharacterRouteArgs>(name);
}

class CharacterRouteArgs {
  const CharacterRouteArgs({
    this.key,
    required this.id,
  });

  final _i29.Key? key;

  final int id;

  @override
  String toString() {
    return 'CharacterRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.AnimeListPage]
class AnimeListRoute extends _i28.PageRouteInfo<void> {
  const AnimeListRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AnimeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnimeListRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DiscoverPage]
class DiscoverRoute extends _i28.PageRouteInfo<void> {
  const DiscoverRoute({List<_i28.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i28.PageRouteInfo<void> {
  const HomeRoute({List<_i28.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MangaListPage]
class MangaListRoute extends _i28.PageRouteInfo<void> {
  const MangaListRoute({List<_i28.PageRouteInfo>? children})
      : super(
          MangaListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MangaListRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OverviewPage]
class OverviewRoute extends _i28.PageRouteInfo<void> {
  const OverviewRoute({List<_i28.PageRouteInfo>? children})
      : super(
          OverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OverviewRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SocialPage]
class SocialRoute extends _i28.PageRouteInfo<void> {
  const SocialRoute({List<_i28.PageRouteInfo>? children})
      : super(
          SocialRoute.name,
          initialChildren: children,
        );

  static const String name = 'SocialRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i10.AniLoginPage]
class AniLoginRoute extends _i28.PageRouteInfo<void> {
  const AniLoginRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AniLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'AniLoginRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i11.LoginPage]
class LoginRoute extends _i28.PageRouteInfo<void> {
  const LoginRoute({List<_i28.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i12.TokenLoginPage]
class TokenLoginRoute extends _i28.PageRouteInfo<void> {
  const TokenLoginRoute({List<_i28.PageRouteInfo>? children})
      : super(
          TokenLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'TokenLoginRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i13.MediaPage]
class MediaRoute extends _i28.PageRouteInfo<MediaRouteArgs> {
  MediaRoute({
    _i29.Key? key,
    required int id,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          MediaRoute.name,
          args: MediaRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaRoute';

  static const _i28.PageInfo<MediaRouteArgs> page =
      _i28.PageInfo<MediaRouteArgs>(name);
}

class MediaRouteArgs {
  const MediaRouteArgs({
    this.key,
    required this.id,
  });

  final _i29.Key? key;

  final int id;

  @override
  String toString() {
    return 'MediaRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i14.NotificationsPage]
class NotificationsRoute extends _i28.PageRouteInfo<void> {
  const NotificationsRoute({List<_i28.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i15.FavoriteAnimePage]
class FavoriteAnimeRoute extends _i28.PageRouteInfo<FavoriteAnimeRouteArgs> {
  FavoriteAnimeRoute({
    _i29.Key? key,
    required String name,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          FavoriteAnimeRoute.name,
          args: FavoriteAnimeRouteArgs(
            key: key,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'FavoriteAnimeRoute';

  static const _i28.PageInfo<FavoriteAnimeRouteArgs> page =
      _i28.PageInfo<FavoriteAnimeRouteArgs>(name);
}

class FavoriteAnimeRouteArgs {
  const FavoriteAnimeRouteArgs({
    this.key,
    required this.name,
  });

  final _i29.Key? key;

  final String name;

  @override
  String toString() {
    return 'FavoriteAnimeRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i16.FavoriteMangaPage]
class FavoriteMangaRoute extends _i28.PageRouteInfo<FavoriteMangaRouteArgs> {
  FavoriteMangaRoute({
    _i29.Key? key,
    required String name,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          FavoriteMangaRoute.name,
          args: FavoriteMangaRouteArgs(
            key: key,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'FavoriteMangaRoute';

  static const _i28.PageInfo<FavoriteMangaRouteArgs> page =
      _i28.PageInfo<FavoriteMangaRouteArgs>(name);
}

class FavoriteMangaRouteArgs {
  const FavoriteMangaRouteArgs({
    this.key,
    required this.name,
  });

  final _i29.Key? key;

  final String name;

  @override
  String toString() {
    return 'FavoriteMangaRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i17.ProfileAnimeListPage]
class ProfileAnimeListRoute
    extends _i28.PageRouteInfo<ProfileAnimeListRouteArgs> {
  ProfileAnimeListRoute({
    _i29.Key? key,
    required int userId,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ProfileAnimeListRoute.name,
          args: ProfileAnimeListRouteArgs(
            key: key,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileAnimeListRoute';

  static const _i28.PageInfo<ProfileAnimeListRouteArgs> page =
      _i28.PageInfo<ProfileAnimeListRouteArgs>(name);
}

class ProfileAnimeListRouteArgs {
  const ProfileAnimeListRouteArgs({
    this.key,
    required this.userId,
  });

  final _i29.Key? key;

  final int userId;

  @override
  String toString() {
    return 'ProfileAnimeListRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i18.ProfileMangaListPage]
class ProfileMangaListRoute
    extends _i28.PageRouteInfo<ProfileMangaListRouteArgs> {
  ProfileMangaListRoute({
    _i29.Key? key,
    required int userId,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ProfileMangaListRoute.name,
          args: ProfileMangaListRouteArgs(
            key: key,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileMangaListRoute';

  static const _i28.PageInfo<ProfileMangaListRouteArgs> page =
      _i28.PageInfo<ProfileMangaListRouteArgs>(name);
}

class ProfileMangaListRouteArgs {
  const ProfileMangaListRouteArgs({
    this.key,
    required this.userId,
  });

  final _i29.Key? key;

  final int userId;

  @override
  String toString() {
    return 'ProfileMangaListRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i19.ProfilePage]
class ProfileRoute extends _i28.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i29.Key? key,
    required String name,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i28.PageInfo<ProfileRouteArgs> page =
      _i28.PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.name,
  });

  final _i29.Key? key;

  final String name;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i20.ReviewPage]
class ReviewRoute extends _i28.PageRouteInfo<ReviewRouteArgs> {
  ReviewRoute({
    _i29.Key? key,
    required int id,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ReviewRoute.name,
          args: ReviewRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ReviewRoute';

  static const _i28.PageInfo<ReviewRouteArgs> page =
      _i28.PageInfo<ReviewRouteArgs>(name);
}

class ReviewRouteArgs {
  const ReviewRouteArgs({
    this.key,
    required this.id,
  });

  final _i29.Key? key;

  final int id;

  @override
  String toString() {
    return 'ReviewRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i21.SearchPage]
class SearchRoute extends _i28.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i29.Key? key,
    bool? isAdult,
    dynamic type,
    List<dynamic>? sort,
    int? year,
    dynamic season,
    String? search,
    List<String>? genres,
    bool? hideOnList,
    List<dynamic>? tags,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            isAdult: isAdult,
            type: type,
            sort: sort,
            year: year,
            season: season,
            search: search,
            genres: genres,
            hideOnList: hideOnList,
            tags: tags,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i28.PageInfo<SearchRouteArgs> page =
      _i28.PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.isAdult,
    this.type,
    this.sort,
    this.year,
    this.season,
    this.search,
    this.genres,
    this.hideOnList,
    this.tags,
  });

  final _i29.Key? key;

  final bool? isAdult;

  final dynamic type;

  final List<dynamic>? sort;

  final int? year;

  final dynamic season;

  final String? search;

  final List<String>? genres;

  final bool? hideOnList;

  final List<dynamic>? tags;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, isAdult: $isAdult, type: $type, sort: $sort, year: $year, season: $season, search: $search, genres: $genres, hideOnList: $hideOnList, tags: $tags}';
  }
}

/// generated route for
/// [_i22.AppSettingsPage]
class AppSettingsRoute extends _i28.PageRouteInfo<void> {
  const AppSettingsRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AppSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppSettingsRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ColorsPage]
class ColorsRoute extends _i28.PageRouteInfo<void> {
  const ColorsRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ColorsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ColorsRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i24.SettingsPage]
class SettingsRoute extends _i28.PageRouteInfo<void> {
  const SettingsRoute({List<_i28.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i25.StaffPage]
class StaffRoute extends _i28.PageRouteInfo<StaffRouteArgs> {
  StaffRoute({
    _i29.Key? key,
    required int id,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          StaffRoute.name,
          args: StaffRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'StaffRoute';

  static const _i28.PageInfo<StaffRouteArgs> page =
      _i28.PageInfo<StaffRouteArgs>(name);
}

class StaffRouteArgs {
  const StaffRouteArgs({
    this.key,
    required this.id,
  });

  final _i29.Key? key;

  final int id;

  @override
  String toString() {
    return 'StaffRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i26.ThreadPage]
class ThreadRoute extends _i28.PageRouteInfo<ThreadRouteArgs> {
  ThreadRoute({
    required int id,
    _i29.Key? key,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ThreadRoute.name,
          args: ThreadRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ThreadRoute';

  static const _i28.PageInfo<ThreadRouteArgs> page =
      _i28.PageInfo<ThreadRouteArgs>(name);
}

class ThreadRouteArgs {
  const ThreadRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final _i29.Key? key;

  @override
  String toString() {
    return 'ThreadRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i27.ThreadsPage]
class ThreadsRoute extends _i28.PageRouteInfo<ThreadsRouteArgs> {
  ThreadsRoute({
    _i29.Key? key,
    required _i27.ThreadFeed feed,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ThreadsRoute.name,
          args: ThreadsRouteArgs(
            key: key,
            feed: feed,
          ),
          initialChildren: children,
        );

  static const String name = 'ThreadsRoute';

  static const _i28.PageInfo<ThreadsRouteArgs> page =
      _i28.PageInfo<ThreadsRouteArgs>(name);
}

class ThreadsRouteArgs {
  const ThreadsRouteArgs({
    this.key,
    required this.feed,
  });

  final _i29.Key? key;

  final _i27.ThreadFeed feed;

  @override
  String toString() {
    return 'ThreadsRouteArgs{key: $key, feed: $feed}';
  }
}
