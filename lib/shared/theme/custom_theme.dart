import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  CustomTheme._();
  static FlexScheme flexScheme = FlexScheme.mango;
  static ThemeData darkTheme = FlexThemeData.dark(
    scheme: flexScheme,
    surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
    blendLevel: 13,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      useTextTheme: true,
      fabSchemeColor: SchemeColor.primaryContainer,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static ThemeData lightTheme = FlexThemeData.light(
    scheme: flexScheme,
    surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
    blendLevel: 7,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      useTextTheme: true,
      fabSchemeColor: SchemeColor.primary,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.inter().fontFamily,
  );
}
