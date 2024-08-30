// import "package:go_router/go_router.dart";
// import "app/activity/[id]/page.dart" as r0;
// import "app/calendar/page.dart" as r1;
// import "app/character/[id]/page.dart" as r2;
// import "app/explore/page.dart" as r3;
// import "app/forum/thread/[id]/comment/[commentId]/page.dart" as r4;
// import "app/forum/thread/[id]/page.dart" as r5;
// import "app/forum/[tab]/page.dart" as r6;
// import "app/home/[tab]/page.dart" as r7;
// import "app/login/anilist/page.dart" as r8;
// import "app/login/page.dart" as r9;
// import "app/login/token/page.dart" as r10;
// import "app/media/[id]/[tab]/page.dart" as r11;
import "app/notifications/page.dart" as r12;
// import "app/recommendations/page.dart" as r13;
// import "app/review/[id]/page.dart" as r14;
// import "app/reviews/page.dart" as r15;
// import "app/search/media/page.dart" as r16;
// import "app/settings/settings_page.dart" as r17;
// import "app/staff/[id]/[tab]/page.dart" as r18;
// import "app/studio/[id]/page.dart" as r19;
// import "app/user/[name]/anime/page.dart" as r20;
// import "app/user/[name]/favorites/[tab]/page.dart" as r21;
// import "app/user/[name]/manga/page.dart" as r22;
// import "app/user/[name]/[tab]/page.dart" as r23;

// var routes = [
//   GoRoute(path: "/", redirect: (_, __) => "/home/overview"),
//   GoRoute(
//     path: "/activity/:id",
//     builder: (context, state) => r0.ActivityPage(
//       id: state.pathParameters['id']!,
//     ),
//   ),
//   GoRoute(
//     path: "/calendar",
//     builder: (context, state) => r1.CalendarPage(),
//   ),
//   GoRoute(
//     path: "/character/:id",
//     builder: (context, state) => r2.CharacterPage(
//       id: state.pathParameters['id']!,
//     ),
//   ),
//   GoRoute(
//     path: "/explore",
//     builder: (context, state) => r3.ExploreScreen(),
//   ),
//   GoRoute(
//     path: "/forum/thread/:id/comment/:commentId",
//     builder: (context, state) => r4.ThreadCommentPage(
//       id: state.pathParameters['id']!,
//       commentId: state.pathParameters['commentId']!,
//     ),
//   ),
//   GoRoute(
//     path: "/forum/thread/:id",
//     builder: (context, state) => r5.ThreadsPage(
//       id: state.pathParameters['id']!,
//     ),
//   ),
//   GoRoute(
//     path: "/forum/:tab",
//     builder: (context, state) => r6.ForumPage(
//       tab: state.pathParameters['tab']!,
//     ),
//   ),
//   GoRoute(
//     path: "/home/:tab",
//     builder: (context, state) => r7.HomeOverviewPage(
//       tab: state.pathParameters['tab']!,
//     ),
//   ),
//   GoRoute(
//     path: "/login/anilist",
//     builder: (context, state) => r8.AnilistLoginPage(),
//   ),
//   GoRoute(
//     path: "/login",
//     builder: (context, state) => r9.LoginPage(),
//   ),
//   GoRoute(
//     path: "/login/token",
//     builder: (context, state) => r10.TokenLoginPage(),
//   ),
//   GoRoute(
//     path: "/media/:id/:tab",
//     builder: (context, state) => r11.MediaPage(
//       id: state.pathParameters['id']!,
//       tab: state.pathParameters['tab']!,
//     ),
//   ),
  // GoRoute(
  //   path: "/notifications",
  //   builder: (context, state) => r12.NotificationScreen(),
  // ),
//   GoRoute(
//     path: "/recommendations",
//     builder: (context, state) => r13.RecommendationsPage(),
//   ),
//   GoRoute(
//     path: "/review/:id",
//     builder: (context, state) => r14.ReviewPage(
//       id: state.pathParameters['id']!,
//     ),
//   ),
//   GoRoute(
//     path: "/reviews",
//     builder: (context, state) => r15.ReviewsPage(),
//   ),
//   GoRoute(
//     path: "/search/media",
//     builder: (context, state) => r16.SearchPage(),
//   ),
//   GoRoute(
//     path: "/settings",
//     builder: (context, state) => r17.SettingsPage(),
//   ),
//   GoRoute(
//     path: "/staff/:id/:tab",
//     builder: (context, state) => r18.StaffPage(
//       id: state.pathParameters['id']!,
//       tab: state.pathParameters['tab']!,
//     ),
//   ),
//   GoRoute(
//     path: "/studio/:id",
//     builder: (context, state) => r19.StudioPage(
//       id: state.pathParameters['id']!,
//     ),
//   ),
//   GoRoute(
//     path: "/user/:name/anime",
//     builder: (context, state) => r20.UserAnimePage(
//       name: state.pathParameters['name']!,
//     ),
//   ),
//   GoRoute(
//     path: "/user/:name/favorites/:tab",
//     builder: (context, state) => r21.FavoritesPage(
//       name: state.pathParameters['name']!,
//       tab: state.pathParameters['tab']!,
//     ),
//   ),
//   GoRoute(
//     path: "/user/:name/manga",
//     builder: (context, state) => r22.UserMangaPage(
//       name: state.pathParameters['name']!,
//     ),
//   ),
//   GoRoute(
//     path: "/user/:name/:tab",
//     builder: (context, state) => r23.UserPage(
//       name: state.pathParameters['name']!,
//       tab: state.pathParameters['tab']!,
//     ),
//   ),
// ];

// // var router = GoRouter(routes: routes, initialLocation: "/home/overview");
