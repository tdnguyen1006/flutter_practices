import 'package:flutter/material.dart';

class ColorPalette {
  ColorPalette._();
  static const MaterialColor coolGrey = MaterialColor(
    0xFF8e8e93,
    <int, Color>{
      50: Color(0xFFf2f2f7),
      100: Color(0xFFd9d9dd),
      200: Color(0xFFbfbfc4),
      300: Color(0xFFa6a6ad),
      400: Color(0xFF8e8e93),
      500: Color(0xFF75757d),
      600: Color(0xFF5c5c66),
      700: Color(0xFF43434f),
      800: Color(0xFF2a2a34),
      900: Color(0xFF11111e),
    },
  );

  static const MaterialColor darkColor = MaterialColor(
    0xFF1E1E1E,
    <int, Color>{
      50: Color(0xFF333333),
      100: Color(0xFF2C2C2C),
      200: Color(0xFF232323),
      300: Color(0xFF1C1C1C),
      400: Color(0xFF171717),
      500: Color(0xFF1E1E1E), // dark color
      600: Color(0xFF181818),
      700: Color(0xFF131313),
      800: Color(0xFF0D0D0D),
      900: Color(0xFF080808),
    },
  );

  static const MaterialColor goldColor = MaterialColor(
    0xFFDAA520,
    <int, Color>{
      50: Color(0xFFFFF9E6),
      100: Color(0xFFFFEFB3),
      200: Color(0xFFFFE082),
      300: Color(0xFFFFD54F),
      400: Color(0xFFFFCA28),
      500: Color(0xFFDAA520), // primary color
      600: Color(0xFFB38600),
      700: Color(0xFF8D6F00),
      800: Color(0xFF665200),
      900: Color(0xFF443400),
    },
  );

  static const MaterialColor successColor = MaterialColor(
    0xFF00C853,
    <int, Color>{
      50: Color(0xFFE5F5E5),
      100: Color(0xFFB8E8B8),
      200: Color(0xFF87DB87),
      300: Color(0xFF55CD55),
      400: Color(0xFF30C030),
      500: Color(0xFF00C853), // success color
      600: Color(0xFF00C046),
      700: Color(0xFF00B83D),
      800: Color(0xFF00AF35),
      900: Color(0xFF009926),
    },
  );

  static const MaterialColor darkerGreen = MaterialColor(
    0xFF008000,
    <int, Color>{
      50: Color(0xFFE8F5E9),
      100: Color(0xFFC8E6C9),
      200: Color(0xFFA5D6A7),
      300: Color(0xFF81C784),
      400: Color(0xFF66BB6A),
      500: Color(0xFF4CAF50),
      600: Color(0xFF43A047),
      700: Color(0xFF388E3C),
      800: Color(0xFF2E7D32),
      900: Color(0xFF1B5E20),
    },
  );

  static const MaterialColor errorColor = MaterialColor(
    0xFFFF1744,
    <int, Color>{
      50: Color(0xFFFFE5E6),
      100: Color(0xFFFFB8BA),
      200: Color(0xFFFF8790),
      300: Color(0xFFFF555B),
      400: Color(0xFFFF3038),
      500: Color(0xFFFF1744), // error color
      600: Color(0xFFE50032),
      700: Color(0xFFBF002E),
      800: Color(0xFF990028),
      900: Color(0xFF70001F),
    },
  );

  static const MaterialColor warningColor = MaterialColor(
    0xFFFF9100,
    <int, Color>{
      50: Color(0xFFFFF4E5),
      100: Color(0xFFFFDEB8),
      200: Color(0xFFFFC487),
      300: Color(0xFFFFA755),
      400: Color(0xFFFF9030),
      500: Color(0xFFFF9100), // warning color
      600: Color(0xFFFF8300),
      700: Color(0xFFFF7500),
      800: Color(0xFFFF6700),
      900: Color(0xFFFF4B00),
    },
  );
}
