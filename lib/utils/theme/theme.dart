import 'package:d_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:d_store/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData light = ThemeData.light().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.light,
    elevatedButtonTheme: AppElevatedButtonTheme.light,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
  static ThemeData dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.black,
    textTheme: AppTextTheme.dark,
    elevatedButtonTheme: AppElevatedButtonTheme.dark,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
