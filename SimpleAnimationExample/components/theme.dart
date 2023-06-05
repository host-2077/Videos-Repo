import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _primaryColorLight = Colors.greenAccent;

  static const _primaryColorDark = Colors.deepPurpleAccent;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppTheme._primaryColorLight,
          brightness: Brightness.light));

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppTheme._primaryColorDark,
    ),
  );
}
