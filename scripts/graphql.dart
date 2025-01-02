import 'dart:io';

import 'package:collection/collection.dart';

var queryRegex = RegExp(r"(?:query|mutation) (\w+)[^]+?{[^]+?\n}");
var fragmentRegex = RegExp(r"fragment (\w+)[^]+?{[^]+?\n}");
var inlineFragment = RegExp(r"\.\.\.(\w+)");

void main(List<String> args) {
  var dir = Directory(Platform.isWindows ? r".\lib\graphql" : "./lib/graphql");
  var fragmentDir = Directory(Platform.isWindows
      ? r".\lib\graphql\fragments"
      : "./lib/graphql/fragments");

  List<File> graphqlQueriesFiles = dir
      .listSync()
      .whereType<File>()
      .where(
        (element) => element.path.endsWith(".graphql"),
      )
      .whereNot((element) => element.path.endsWith("schema.graphql"))
      .toList();
  // List
  List<File> fragmentFiles = fragmentDir
      .listSync(recursive: true)
      .whereType<File>()
      .where(
        (element) => element.path.endsWith(".graphql"),
      )
      .toList();

  var queryFile = "import \"./util.dart\";";

  for (var file in graphqlQueriesFiles) {
    var str = File(file.path).readAsStringSync();

    for (var match in queryRegex.allMatches(str)) {
      var query = match.group(0)!;

      var e = query;

      for (var inlineFragmentMatch in inlineFragment.allMatches(query)) {
        e += "\n\n\n"
            '""""\$${toLowerCamelCase(inlineFragmentMatch.group(1)!)}""""';
        // }
      }

      // var e = query.replaceAllMapped(
      //   inlineFragment,
      //   (match) =>
      //       "...\"\"\" + \"\${${toLowerCamelCase(match.group(1)!)}}\" + r\"\"\"",
      // );

      queryFile +=
          "\nvar ${toLowerCamelCase(match.group(1)!)}Query = removeFragmentDups(r\"\"\"$e\"\"\");";
    }

    for (var match in fragmentRegex.allMatches(str)) {
      var fragment = match.group(0)!;

      var e = fragment;

      for (var inlineFragmentMatch in inlineFragment.allMatches(fragment)) {
        e += "\n\n\n"
            '""""\$${toLowerCamelCase(inlineFragmentMatch.group(1)!)}""""';
        // }
      }

      queryFile +=
          "\nvar ${toLowerCamelCase(match.group(1)!)} = r\"\"\"$e\"\"\";";
    }
  }

  for (var file in fragmentFiles) {
    var str = File(file.path).readAsStringSync();

    for (var match in fragmentRegex.allMatches(str)) {
      var fragment = match.group(0)!;

      var e = fragment;

      for (var inlineFragmentMatch in inlineFragment.allMatches(fragment)) {
        e += "\n\n\n"
            '""""\$${toLowerCamelCase(inlineFragmentMatch.group(1)!)}""""';
        // e +=
        //     "\"\"\"\n\"\$${toLowerCamelCase(inlineFragmentMatch.group(1)!)}\"\nr\"\"\"";
        // }
      }

      queryFile +=
          "\nvar ${toLowerCamelCase(match.group(1)!)} = r\"\"\"$e\"\"\";";
    }
  }

  // print(queryFile);
  File("./lib/graphql/queries.dart").writeAsString(queryFile.trim());
}

String toLowerCamelCase(String s) {
  if (s.length < 2) return s.toLowerCase();
  return s[0].toLowerCase() + s.substring(1);
}
