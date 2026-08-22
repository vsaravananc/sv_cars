import 'package:flutter/material.dart';

final lightColorScheme = ColorScheme(
  brightness: Brightness.light,

  // Brand
  primary: Color(0xFFED1C24),
  onPrimary: Color(0xFFFFFFFF),

  primaryContainer: Color(0xFFFFEBEC),
  onPrimaryContainer: Color(0xFF680006),

  // Gold
  secondary: Color(0xFFFFC928),
  onSecondary: Color(0xFF1A1A1A),

  secondaryContainer: Color(0xFFFFF7D6),
  onSecondaryContainer: Color(0xFF4A3900),

  // Background / Surface
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF1A1A1A),

  surfaceContainerHighest: Color(0xFFF5F5F5),

  // Borders / outlines
  outline: Color(0xFFE5E5E5),
  outlineVariant: Color(0xFFEEEEEE),

  // States
  error: Color(0xFFDC2626),
  onError: Color(0xFFFFFFFF),

  // Inverse
  inverseSurface: Color(0xFF2A2A2A),
  onInverseSurface: Color(0xFFFFFFFF),
  inversePrimary: Color(0xFFFF8A8F),

);

final lightThemeData = ThemeData(
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 16,
          fontWeight: .w500
        )
      ),
      backgroundColor: WidgetStatePropertyAll(lightColorScheme.primary),
      foregroundColor: WidgetStatePropertyAll(lightColorScheme.onPrimary),
      maximumSize: WidgetStatePropertyAll(Size(360,48)),
      minimumSize: WidgetStatePropertyAll(Size(320,48)),
      shape: WidgetStatePropertyAll(
        ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
      ),
    ),
  ),
  textTheme: lightfontTheme,
);

final TextTheme lightfontTheme = TextTheme(
  // Display
  displayLarge: TextStyle(
    fontFamily: 'SFProDisplay',
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: -0.2,
  ),

  displayMedium: TextStyle(
    fontFamily: 'SFProDisplay',
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: -0.1,
  ),

  displaySmall: TextStyle(
    fontFamily: 'SFProDisplay',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.25,
  ),

  // Headlines
  headlineLarge: TextStyle(
    fontFamily: 'SFProDisplay',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.25,
  ),

  headlineMedium: TextStyle(
    fontFamily: 'SFProDisplay',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.3,
  ),

  headlineSmall: TextStyle(
    fontFamily: 'SFProDisplay',
    fontSize: 17,
    fontWeight: FontWeight.w600,
    height: 1.3,
  ),

  // Titles
  titleLarge: TextStyle(
    fontFamily: 'SFProText',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.3,
  ),

  titleMedium: TextStyle(
    fontFamily: 'SFProText',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: 0.1,
  ),

  titleSmall: TextStyle(
    fontFamily: 'SFProText',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: 0.1,
  ),

  // Body
  bodyLarge: TextStyle(
    fontFamily: 'SFProText',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.2,
  ),

  bodyMedium: TextStyle(
    fontFamily: 'SFProText',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.45,
    letterSpacing: 0.1,
  ),

  bodySmall: TextStyle(
    fontFamily: 'SFProText',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: 0.2,
  ),

  // Labels
  labelLarge: TextStyle(
    fontFamily: 'SFProText',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: 0.1,
  ),

  labelMedium: TextStyle(
    fontFamily: 'SFProText',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.35,
    letterSpacing: 0.4,
  ),

  labelSmall: TextStyle(
    fontFamily: 'SFProText',
    fontSize: 11,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: 0.4,
  ),
);
