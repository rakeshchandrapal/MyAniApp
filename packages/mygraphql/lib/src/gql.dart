import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:normalize/utils.dart';

DocumentNode transformGQL(String gql) => transform(
      parseString(gql),
      [AddTypenameVisitor()],
    );
