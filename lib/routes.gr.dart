// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i25;
import 'package:flutter/material.dart' as _i26;
import 'package:MyAniApp/pages/activity.dart' as _i1;
import 'package:MyAniApp/pages/character.dart' as _i2;
import 'package:MyAniApp/pages/discover.dart' as _i3;
import 'package:MyAniApp/pages/home/home.dart' as _i4;
import 'package:MyAniApp/pages/home/tabs.dart' as _i5;
import 'package:MyAniApp/pages/lists/anime.dart' as _i6;
import 'package:MyAniApp/pages/lists/manga.dart' as _i7;
import 'package:MyAniApp/pages/login.dart' as _i8;
import 'package:MyAniApp/pages/media.dart' as _i9;
import 'package:MyAniApp/pages/notifications.dart' as _i10;
import 'package:MyAniApp/pages/profile.dart' as _i11;
import 'package:MyAniApp/pages/recommendations.dart' as _i12;
import 'package:MyAniApp/pages/release_calender.dart' as _i13;
import 'package:MyAniApp/pages/search.dart' as _i14;
import 'package:MyAniApp/pages/settings/anilist.dart' as _i15;
import 'package:MyAniApp/pages/settings/app/app.dart' as _i16;
import 'package:MyAniApp/pages/settings/app/lists/anime.dart' as _i17;
import 'package:MyAniApp/pages/settings/app/lists/fallback.dart' as _i18;
import 'package:MyAniApp/pages/settings/app/lists/manga.dart' as _i19;
import 'package:MyAniApp/pages/settings/general.dart' as _i20;
import 'package:MyAniApp/pages/social.dart' as _i21;
import 'package:MyAniApp/pages/staff.dart' as _i22;
import 'package:MyAniApp/pages/thread.dart' as _i23;
import 'package:MyAniApp/routes.dart' as _i24;

abstract class $AppRouter extends _i25.RootStackRouter {
  $AppRouter([_i26.GlobalKey<_i26.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i25.PageFactory> pagesMap = {
    ActivityRoute.name: (routeData) {
      final args = routeData.argsAs<ActivityRouteArgs>();
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ActivityPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CharacterRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterRouteArgs>();
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CharacterPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    DiscoveryRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DiscoveryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    HomeRouteTabs.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePageTabs(),
      );
    },
    AnimeListRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.AnimeListPage(),
      );
    },
    MangaListRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MangaListPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPage(),
      );
    },
    MediaRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MediaRouteArgs>(
          orElse: () => MediaRouteArgs(id: pathParams.getInt('id')));
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.MediaPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.NotificationsPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ProfilePage(
          key: args.key,
          username: args.username,
        ),
      );
    },
    RecommendationsRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.RecommendationsPage(),
      );
    },
    ReleaseCalenderRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ReleaseCalenderPage(),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.SearchPage(
          key: args.key,
          sort: args.sort,
          season: args.season,
          search: args.search,
          year: args.year,
          type: args.type,
          genres: args.genres,
          tags: args.tags,
          isAdult: args.isAdult,
          autofoucus: args.autofoucus,
        ),
      );
    },
    AnilistSettingsRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.AnilistSettingsPage(),
      );
    },
    AppSettingsRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.AppSettingsPage(),
      );
    },
    AnimeListSettingRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.AnimeListSettingPage(),
      );
    },
    FallbackListSettingRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.FallbackListSettingPage(),
      );
    },
    MangaListSettingRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.MangaListSettingPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SettingsPage(),
      );
    },
    SocialRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.SocialPage(),
      );
    },
    StaffRoute.name: (routeData) {
      final args = routeData.argsAs<StaffRouteArgs>();
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.StaffPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ThreadRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ThreadRouteArgs>(
          orElse: () => ThreadRouteArgs(id: pathParams.getInt('id')));
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.ThreadPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    EmptyRouterRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.EmptyRouterPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActivityPage]
class ActivityRoute extends _i25.PageRouteInfo<ActivityRouteArgs> {
  ActivityRoute({
    _i26.Key? key,
    required int id,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          ActivityRoute.name,
          args: ActivityRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ActivityRoute';

  static const _i25.PageInfo<ActivityRouteArgs> page =
      _i25.PageInfo<ActivityRouteArgs>(name);
}

class ActivityRouteArgs {
  const ActivityRouteArgs({
    this.key,
    required this.id,
  });

  final _i26.Key? key;

  final int id;

  @override
  String toString() {
    return 'ActivityRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.CharacterPage]
class CharacterRoute extends _i25.PageRouteInfo<CharacterRouteArgs> {
  CharacterRoute({
    _i26.Key? key,
    required int id,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          CharacterRoute.name,
          args: CharacterRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterRoute';

  static const _i25.PageInfo<CharacterRouteArgs> page =
      _i25.PageInfo<CharacterRouteArgs>(name);
}

class CharacterRouteArgs {
  const CharacterRouteArgs({
    this.key,
    required this.id,
  });

  final _i26.Key? key;

  final int id;

  @override
  String toString() {
    return 'CharacterRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.DiscoveryPage]
class DiscoveryRoute extends _i25.PageRouteInfo<void> {
  const DiscoveryRoute({List<_i25.PageRouteInfo>? children})
      : super(
          DiscoveryRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoveryRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i25.PageRouteInfo<void> {
  const HomeRoute({List<_i25.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePageTabs]
class HomeRouteTabs extends _i25.PageRouteInfo<void> {
  const HomeRouteTabs({List<_i25.PageRouteInfo>? children})
      : super(
          HomeRouteTabs.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteTabs';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AnimeListPage]
class AnimeListRoute extends _i25.PageRouteInfo<void> {
  const AnimeListRoute({List<_i25.PageRouteInfo>? children})
      : super(
          AnimeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnimeListRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MangaListPage]
class MangaListRoute extends _i25.PageRouteInfo<void> {
  const MangaListRoute({List<_i25.PageRouteInfo>? children})
      : super(
          MangaListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MangaListRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i25.PageRouteInfo<void> {
  const LoginRoute({List<_i25.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MediaPage]
class MediaRoute extends _i25.PageRouteInfo<MediaRouteArgs> {
  MediaRoute({
    _i26.Key? key,
    required int id,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          MediaRoute.name,
          args: MediaRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'MediaRoute';

  static const _i25.PageInfo<MediaRouteArgs> page =
      _i25.PageInfo<MediaRouteArgs>(name);
}

class MediaRouteArgs {
  const MediaRouteArgs({
    this.key,
    required this.id,
  });

  final _i26.Key? key;

  final int id;

  @override
  String toString() {
    return 'MediaRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i10.NotificationsPage]
class NotificationsRoute extends _i25.PageRouteInfo<void> {
  const NotificationsRoute({List<_i25.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ProfilePage]
class ProfileRoute extends _i25.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i26.Key? key,
    required String username,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i25.PageInfo<ProfileRouteArgs> page =
      _i25.PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.username,
  });

  final _i26.Key? key;

  final String username;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i12.RecommendationsPage]
class RecommendationsRoute extends _i25.PageRouteInfo<void> {
  const RecommendationsRoute({List<_i25.PageRouteInfo>? children})
      : super(
          RecommendationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecommendationsRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ReleaseCalenderPage]
class ReleaseCalenderRoute extends _i25.PageRouteInfo<void> {
  const ReleaseCalenderRoute({List<_i25.PageRouteInfo>? children})
      : super(
          ReleaseCalenderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReleaseCalenderRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SearchPage]
class SearchRoute extends _i25.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i26.Key? key,
    List<dynamic>? sort,
    dynamic season,
    String? search,
    int? year,
    dynamic type,
    List<String>? genres,
    List<dynamic>? tags,
    bool? isAdult,
    bool? autofoucus,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            sort: sort,
            season: season,
            search: search,
            year: year,
            type: type,
            genres: genres,
            tags: tags,
            isAdult: isAdult,
            autofoucus: autofoucus,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i25.PageInfo<SearchRouteArgs> page =
      _i25.PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.sort,
    this.season,
    this.search,
    this.year,
    this.type,
    this.genres,
    this.tags,
    this.isAdult,
    this.autofoucus,
  });

  final _i26.Key? key;

  final List<dynamic>? sort;

  final dynamic season;

  final String? search;

  final int? year;

  final dynamic type;

  final List<String>? genres;

  final List<dynamic>? tags;

  final bool? isAdult;

  final bool? autofoucus;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, sort: $sort, season: $season, search: $search, year: $year, type: $type, genres: $genres, tags: $tags, isAdult: $isAdult, autofoucus: $autofoucus}';
  }
}

/// generated route for
/// [_i15.AnilistSettingsPage]
class AnilistSettingsRoute extends _i25.PageRouteInfo<void> {
  const AnilistSettingsRoute({List<_i25.PageRouteInfo>? children})
      : super(
          AnilistSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnilistSettingsRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i16.AppSettingsPage]
class AppSettingsRoute extends _i25.PageRouteInfo<void> {
  const AppSettingsRoute({List<_i25.PageRouteInfo>? children})
      : super(
          AppSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppSettingsRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i17.AnimeListSettingPage]
class AnimeListSettingRoute extends _i25.PageRouteInfo<void> {
  const AnimeListSettingRoute({List<_i25.PageRouteInfo>? children})
      : super(
          AnimeListSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnimeListSettingRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i18.FallbackListSettingPage]
class FallbackListSettingRoute extends _i25.PageRouteInfo<void> {
  const FallbackListSettingRoute({List<_i25.PageRouteInfo>? children})
      : super(
          FallbackListSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'FallbackListSettingRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i19.MangaListSettingPage]
class MangaListSettingRoute extends _i25.PageRouteInfo<void> {
  const MangaListSettingRoute({List<_i25.PageRouteInfo>? children})
      : super(
          MangaListSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'MangaListSettingRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SettingsPage]
class SettingsRoute extends _i25.PageRouteInfo<void> {
  const SettingsRoute({List<_i25.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SocialPage]
class SocialRoute extends _i25.PageRouteInfo<void> {
  const SocialRoute({List<_i25.PageRouteInfo>? children})
      : super(
          SocialRoute.name,
          initialChildren: children,
        );

  static const String name = 'SocialRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i22.StaffPage]
class StaffRoute extends _i25.PageRouteInfo<StaffRouteArgs> {
  StaffRoute({
    _i26.Key? key,
    required int id,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          StaffRoute.name,
          args: StaffRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'StaffRoute';

  static const _i25.PageInfo<StaffRouteArgs> page =
      _i25.PageInfo<StaffRouteArgs>(name);
}

class StaffRouteArgs {
  const StaffRouteArgs({
    this.key,
    required this.id,
  });

  final _i26.Key? key;

  final int id;

  @override
  String toString() {
    return 'StaffRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i23.ThreadPage]
class ThreadRoute extends _i25.PageRouteInfo<ThreadRouteArgs> {
  ThreadRoute({
    _i26.Key? key,
    required int id,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          ThreadRoute.name,
          args: ThreadRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ThreadRoute';

  static const _i25.PageInfo<ThreadRouteArgs> page =
      _i25.PageInfo<ThreadRouteArgs>(name);
}

class ThreadRouteArgs {
  const ThreadRouteArgs({
    this.key,
    required this.id,
  });

  final _i26.Key? key;

  final int id;

  @override
  String toString() {
    return 'ThreadRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i24.EmptyRouterPage]
class EmptyRouterRoute extends _i25.PageRouteInfo<void> {
  const EmptyRouterRoute({List<_i25.PageRouteInfo>? children})
      : super(
          EmptyRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}
