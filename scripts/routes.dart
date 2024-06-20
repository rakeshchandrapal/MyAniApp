import 'dart:io';

import 'package:collection/collection.dart';

final _routeClass = RegExp(
    r"class (\w+)Page extends (?:Stateful|Stateless|Consumer|ConsumerStateful|Hook|StatefulHook)Widget");
final _pathParams = RegExp(r"\[(\w+)\]");

class DirectoryWithFiles {
  final Directory dir;
  final List<FileSystemEntity> stuufs;

  DirectoryWithFiles({required this.dir, required this.stuufs});
}

void main(List<String> args) async {
  var dir = Directory("./lib/app");
  String? homePath = args
      .firstWhere((element) => element.contains("home"))
      .split("=")
      .elementAtOrNull(1);

  // print(homePath);

  var lists = dir.listSync(recursive: true);
  List<File> topDirs = lists.whereType<File>().toList();
  List<RouteInfo> routes = [];

  for (var e in topDirs) {
    if (!e.path.endsWith("page.dart")) continue;

    // print();
    var match = _routeClass.firstMatch(File(e.path).readAsStringSync());

    if (match != null) {
      routes.add(RouteInfo(
        path: e.path,
        pageClass: match.group(1)!,
      ));
    }
  }

  // print(routes.map((e) => e.url));

  String lol = '''
import "package:go_router/go_router.dart";
${routes.indexed.map((e) => "${e.$2.import} as r${e.$1};").join("\n")}

var routes = [
${homePath != null ? "GoRoute(path: \"/\", redirect: (_, __) => \"$homePath\")," : ""}
${routes.indexed.map((e) => 'GoRoute(path: "${e.$2.url}", builder: (context, state) => r${e.$1}.${e.$2.pageClass}Page(${_pathParams.allMatches(e.$2.path).map((e) => "${e.group(1)}: state.pathParameters['${e.group(1)}']!,").join("")}),),').join("\n")}
];

var router = GoRouter(routes: routes, initialLocation: "${homePath ?? '/'}");
''';

  File("./lib/routes.dart").writeAsStringSync(lol);

  Process.run("dart", ["format"]);

  // var topDiirss =
  //     lists.where((element) => element.parent.path == "./lib/app").toList();
  // for (var e in topDiirss) {
  //   lists.removeWhere(
  //     (element) => element.path == e.path,
  //   );
  // }
  // // print(lists);
  // for (var dir in topDiirss) {
  //   var allFiles = lists.where((element) => element.path.contains(dir.path));
  //   print(allFiles.last.path.split(dir.path));
  // }
  // // print((lists.first as Directory).listSync());

  return;

  // dir.wa

//   var pages = lists.where((element) => element.path.endsWith('page.dart'));
//   var redirects = lists.where(
//     (element) => element.path.endsWith("redirect.dart"),
//   );

//   List<RoutePath> pathTree = [];

//   List<RouteInfo> routes = [];

//   for (var file in [...pages, ...redirects]) {
//     var pathSegments = file.path.replaceAll('./lib/app/', "").split("/");

//     var topRouteName = pathSegments.removeAt(0);

//     // print(pathTree.firstWhereOrNull((element) => element.path == topRouteName));
//     var topRoute =
//         pathTree.firstWhereOrNull((element) => element.path == topRouteName);
//     if (topRoute == null) {
//       // print(topRoute);
//       // } else {
//       // print(pathSegments);
//       topRoute = RoutePath(
//           path: topRouteName,ages = lists.where((element) => element.path.endsWith('page.dart'));
//   var redirects = lists.where(
//     (element) => element.path.endsWith("redirect.dart"),
//   );

//   List<RoutePath> pathTree = [];

//   List<RouteInfo> routes = [];

//   for (var file in [...pages, ...redirects]) {
//     var pathSegments = file.path.replaceAll('./lib/app/', "").split("/");

//     var topRouteName = pathSegments.removeAt(0);

//     // print(pathTree.firstWhereOrNull((element) => element.path == topRouteName));
//     var topRoute =
//         pathTree.firstWhereOrNull((element) => element.path == topRouteName);
//     if (topRoute == null) {
//       // print(topRoute);
//       // } else {
//       // print(pathSegments);
//       topRoute = RoutePath(
//           path: topRouteName,
//           subroute: RoutePath.mapPaths(pathSegments.toList()..removeLast()));
//       pathTree.add(topRoute);
//       // print(topRoute.path);

//       // print(RoutePath.mapPaths(pathSegments));
//     }

//     var route = pathSegments.length >= 2
//         ? RoutePath.findRoute(topRoute, pathSegments[pathSegments.length - 2])
//         : topRoute;

//     // print(route);

//     if (route != null) {
//       var path = "./lib/app/$topRouteName/${pathSegments.join("/")}";
//       print(path);
//       if (pathSegments.last == "redirect.dart") {
//         route.redirect = RouteInfo(path: path, pageClass: "redirect");
//       } else if (pathSegments.last == "page.dart") {
//         var match = _routeClass.firstMatch(File(path).readAsStringSync());

//         if (match != null) {
//           route.page = RouteInfo(
//             path: path,
//             pageClass: match.group(1)!,
//           );
//         }
//       }
//     }

//     // print(pathSegments);
//   }

//   List<List<String>> imports = [];

//   void sid(RoutePath route) {
//     if (route.page != null || route.redirect != null) {
//       imports
//           .add([(route.page ?? route.redirect)!.import, "r${imports.length}"]);
//     }
//     if (route.subroute != null) sid(route.subroute!);
//   }

//   for (var element in pathTree) {
//     sid(element);
//   }

//   // print(imports);

//   // print(pathTree.last.path);

//   // print([pages, redirects]);

//   // pages.forEach((element) async {
//   // });

// //   for (var element in pages) {
// //     var f = (File(element.path).readAsStringSync());
// //     // print(element.path);
// //     var match = _routeClass.firstMatch(f);
// //     // element.parent.parent.parent;
// //     if (match != null) {
// //       // print(_routeClass.allMatches(f).map((e) => e.group(1)));
// //       // print(_pathParams.allMatches(element.path).map((e) => e.group(1)));
// //       routes.add(
// //         RouteInfo(path: element.path, pageClass: "${match.group(1)!}Page"),
// //       );
// //     }
// //   }

//   String toGoRoute(RoutePath route, bool top) {
//     return '''GoRoute(
//   path: "${top == true ? "/" : ""}${route.path.replaceAll("[", ":").replaceAll("]", "")}",
// ${top == true ? "parentNavigatorKey: _navigatorKey," : ""}
// ${route.redirect != null ? "redirect: ${imports.firstWhere((element) => element[0] == route.redirect!.import).last}.redirect," : ""}
// ${route.page != null ? "  builder: (context, state) => ${imports.firstWhere((element) => element[0] == route.page!.import).last}.${route.page!.pageClass}Page(${_pathParams.allMatches(route.page!.path).map((e) => "${e.group(1)}: state.pathParameters['${e.group(1)}']!").join(",")})," : "builder: (context, state) => SizedBox(),"}
// ${route.subroute != null ? "routes: [${toGoRoute(route.subroute!, false)},]," : ""})
// ''';
//   }

// //   // print(routes);
//   var t = '''
// import "package:flutter/material.dart";
// import "package:go_router/go_router.dart";
// ${imports.map((e) => "${e.first} as ${e.last};").join("\n")}

// GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

// var routes = [${pathTree.map((e) => toGoRoute(e, true)).join(",\n")}, GoRoute(path: "/", redirect: (context, state) => "/home")];

// final router = GoRouter(routes: routes, navigatorKey: _navigatorKey, initialLocation: '/home',);
// ''';

//   // print(t);
//   File("./lib/routes2.dart").writeAsStringSy
//           subroute: RoutePath.mapPaths(pathSegments.toList()..removeLast()));
//       pathTree.add(topRoute);
//       // print(topRoute.path);

//       // print(RoutePath.mapPaths(pathSegments));
//     }

//     var route = pathSegments.length >= 2
//         ? RoutePath.findRoute(topRoute, pathSegments[pathSegments.length - 2])
//         : topRoute;

//     // print(route);

//     if (route != null) {
//       var path = "./lib/app/$topRouteName/${pathSegments.join("/")}";
//       print(path);
//       if (pathSegments.last == "redirect.dart") {
//         route.redirect = RouteInfo(path: path, pageClass: "redirect");
//       } else if (pathSegments.last == "page.dart") {
//         var match = _routeClass.firstMatch(File(path).readAsStringSync());

//         if (match != null) {
//           route.page = RouteInfo(
//             path: path,
//             pageClass: match.group(1)!,
//           );
//         }
//       }
//     }

//     // print(pathSegments);
//   }

//   List<List<String>> imports = [];

//   void sid(RoutePath route) {
//     if (route.page != null || route.redirect != null) {
//       imports
//           .add([(route.page ?? route.redirect)!.import, "r${imports.length}"]);
//     }
//     if (route.subroute != null) sid(route.subroute!);
//   }

//   for (var element in pathTree) {
//     sid(element);
//   }

//   // print(imports);

//   // print(pathTree.last.path);

//   // print([pages, redirects]);

//   // pages.forEach((element) async {
//   // });

// //   for (var element in pages) {
// //     var f = (File(element.path).readAsStringSync());
// //     // print(element.path);
// //     var match = _routeClass.firstMatch(f);
// //     // element.parent.parent.parent;
// //     if (match != null) {
// //       // print(_routeClass.allMatches(f).map((e) => e.group(1)));
// //       // print(_pathParams.allMatches(element.path).map((e) => e.group(1)));
// //       routes.add(
// //         RouteInfo(path: element.path, pageClass: "${match.group(1)!}Page"),
// //       );
// //     }
// //   }

//   String toGoRoute(RoutePath route, bool top) {
//     return '''GoRoute(
//   path: "${top == true ? "/" : ""}${route.path.replaceAll("[", ":").replaceAll("]", "")}",
// ${top == true ? "parentNavigatorKey: _navigatorKey," : ""}
// ${route.redirect != null ? "redirect: ${imports.firstWhere((element) => element[0] == route.redirect!.import).last}.redirect," : ""}
// ${route.page != null ? "  builder: (context, state) => ${imports.firstWhere((element) => element[0] == route.page!.import).last}.${route.page!.pageClass}Page(${_pathParams.allMatches(route.page!.path).map((e) => "${e.group(1)}: state.pathParameters['${e.group(1)}']!").join(",")})," : "builder: (context, state) => SizedBox(),"}
// ${route.subroute != null ? "routes: [${toGoRoute(route.subroute!, false)},]," : ""})
// ''';
//   }

// //   // print(routes);
//   var t = '''
// import "package:flutter/material.dart";
// import "package:go_router/go_router.dart";
// ${imports.map((e) => "${e.first} as ${e.last};").join("\n")}

// GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

// var routes = [${pathTree.map((e) => toGoRoute(e, true)).join(",\n")}, GoRoute(path: "/", redirect: (context, state) => "/home")];

// final router = GoRouter(routes: routes, navigatorKey: _navigatorKey, initialLocation: '/home',);
// ''';

//   // print(t);
//   File("./lib/routes2.dart").writeAsStringSync(t);
}

class RoutePath {
  final String path;
  RouteInfo? page;
  RouteInfo? redirect;
  final RoutePath? subroute;

  RoutePath({required this.path, this.subroute, this.page, this.redirect});

  static RoutePath bottomRoute(RoutePath route) {
    // print(route.path);
    if (route.subroute == null) {
      return route;
    } else {
      return bottomRoute(route.subroute!);
    }
  }

  static RoutePath? mapPaths(List<String> segments) {
    // print(segments)
    if (segments.isEmpty) return null;
    var route = segments.removeAt(0);
    return RoutePath(
        path: route,
        subroute: segments.isEmpty || route.endsWith(".dart")
            ? null
            : segments.length >= 2
                ? RoutePath(
                    path: segments.removeAt(0), subroute: mapPaths(segments))
                : RoutePath(path: segments.first));
  }
}

class RouteInfo {
  final String path;
  final String pageClass;
  final List<RouteInfo>? subRoutes;

  RouteInfo({required this.path, required this.pageClass, this.subRoutes});

  String get import => "import \"${path.replaceAll("./lib/", "")}\"";
  List<String> get pathSegments =>
      _pathParams.allMatches(path).map((e) => e.group(1)!).toList();
  String get url {
    var r = path
        .replaceAll("./lib/app", "")
        .replaceAll("[", ":")
        .replaceAll("]", "")
        .split("/");

    r.removeLast();

    return r.join("/");
  }
}
