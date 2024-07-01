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

  return;
}

class RoutePath {
  final String path;
  RouteInfo? page;
  RouteInfo? redirect;
  final RoutePath? subroute;

  RoutePath({required this.path, this.subroute, this.page, this.redirect});
}

class RouteInfo {
  final String path;
  final String pageClass;
  final List<RouteInfo>? subRoutes;

  RouteInfo({required this.path, required this.pageClass, this.subRoutes});

  String get import =>
      "import \"${path.replaceAll("./lib/", "").replaceAll("\\", "/")}\"";
  List<String> get pathSegments =>
      _pathParams.allMatches(path).map((e) => e.group(1)!).toList();
  String get url {
    var r = path
        .replaceAll("./lib/app", "")
        .replaceAll("[", ":")
        .replaceAll("]", "")
        .replaceAll("\\", "/")
        .split("/");

    r.removeLast();

    return r.join("/");
  }
}
