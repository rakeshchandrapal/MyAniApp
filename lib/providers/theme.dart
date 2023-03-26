import 'package:flutter/material.dart';

class Styles {
  static final DialogTheme _dialogTheme = DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
  static const BottomSheetThemeData _bottomSheetThemeData =
      BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
    ),
  );
  static ThemeData dark = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dialogTheme: _dialogTheme,
    bottomSheetTheme: _bottomSheetThemeData,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ),
  );
  static ThemeData light = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dialogTheme: _dialogTheme,
    bottomSheetTheme: _bottomSheetThemeData,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ),
  );
  // static ThemeData themeData(ThemeMode theme) {
  //   if (theme == ThemeMode.dark) {
  //     return ThemeData(
  //       useMaterial3: true,
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //       dialogTheme: DialogTheme(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(8),
  //         ),
  //       ),
  //       bottomSheetTheme: const BottomSheetThemeData(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(8),
  //             topRight: Radius.circular(8),
  //           ),
  //         ),
  //       ),
  //       colorScheme: ColorScheme.fromSeed(
  //         seedColor: Colors.grey,
  //         brightness: Brightness.dark,
  //       ),
  //     );
  //   }

  //   return ThemeData(
  //     useMaterial3: true,
  //     visualDensity: VisualDensity.adaptivePlatformDensity,
  //     dialogTheme: DialogTheme(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(8),
  //       ),
  //     ),
  //     bottomSheetTheme: const BottomSheetThemeData(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //           topLeft: Radius.circular(8),
  //           topRight: Radius.circular(8),
  //         ),
  //       ),
  //     ),
  //     colorScheme: ColorScheme.fromSeed(
  //       seedColor: Colors.white,
  //       brightness: Brightness.light,
  //     ),
  //   );
  // }
}
