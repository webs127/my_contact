import 'package:flutter/material.dart';
import 'package:todo/Presentation/Resources/color_manager.dart';

ThemeData appTheme() {
  return ThemeData(
    primarySwatch: Colors.grey,
    appBarTheme: AppBarTheme(
      foregroundColor: ColorManager.white,
      backgroundColor: Colors.red
    )
  );
}

class GetAppTheme {
  static ThemeData getTheme() => ThemeData(
      primarySwatch: Colors.grey,
      appBarTheme: AppBarTheme(
          foregroundColor: ColorManager.white,
          backgroundColor: Colors.red,
      )
  );

}