import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  CustomTheme._();
  static FlexScheme flexScheme = FlexScheme.money;
  static ThemeData darkTheme = FlexThemeData.dark(
    scheme: flexScheme,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.90,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 30,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.inter().fontFamily,
    keyColors: const FlexKeyColors(),
  );

  static ThemeData lightTheme = FlexThemeData.light(
    scheme: flexScheme,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 20,
    appBarOpacity: 0.95,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      blendOnColors: false,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.inter().fontFamily,
    keyColors: const FlexKeyColors(),
  );
}
