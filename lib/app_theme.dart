import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static Color _iconColor = Colors.redAccent.shade200;

  static const Color _LightPrimaryColor = Colors.white;
  static const Color _LightPrimaryVariantColor = Colors.white;
  static const Color _LightSecondaryColor = Colors.grey;
  static const Color _LightOnPrimaryColor = Colors.black;

  static final ThemeData LightTheme = ThemeData(
    scaffoldBackgroundColor: _LightPrimaryVariantColor,
    appBarTheme: AppBarTheme(
      color: _LightPrimaryVariantColor,
      iconTheme: IconThemeData(color: _LightOnPrimaryColor),
    ),
    colorScheme: ColorScheme.light(
      primary: _LightPrimaryColor,
      primaryVariant: _LightPrimaryVariantColor,
      secondary: _LightSecondaryColor,
      onPrimary: _LightOnPrimaryColor,
    ),
  );
}
