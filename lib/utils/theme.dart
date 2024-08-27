import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
/*
use this builder for such a theme
https://material-foundation.github.io/material-theme-builder/
**/

TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme =
      GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme =
      GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8900a1),
      surfaceTint: Color(0xffa100bd),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbb30d5),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff884392),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfffab3ff),
      onSecondaryContainer: Color(0xff5d1a69),
      tertiary: Color(0xff9f004f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd82973),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff7fa),
      onSurface: Color(0xff221922),
      onSurfaceVariant: Color(0xff514251),
      outline: Color(0xff847183),
      outlineVariant: Color(0xffd6c0d3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372d37),
      inversePrimary: Color(0xfff8acff),
      primaryFixed: Color(0xffffd6ff),
      onPrimaryFixed: Color(0xff350040),
      primaryFixedDim: Color(0xfff8acff),
      onPrimaryFixedVariant: Color(0xff7b0090),
      secondaryFixed: Color(0xffffd6ff),
      onSecondaryFixed: Color(0xff350040),
      secondaryFixedDim: Color(0xfff8acff),
      onSecondaryFixedVariant: Color(0xff6d2a78),
      tertiaryFixed: Color(0xffffd9e1),
      onTertiaryFixed: Color(0xff3f001b),
      tertiaryFixedDim: Color(0xffffb1c6),
      onTertiaryFixedVariant: Color(0xff8e0046),
      surfaceDim: Color(0xffe6d5e3),
      surfaceBright: Color(0xfffff7fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffeffb),
      surfaceContainer: Color(0xfffae9f7),
      surfaceContainerHigh: Color(0xfff4e3f1),
      surfaceContainerHighest: Color(0xffefdeeb),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff750089),
      surfaceTint: Color(0xffa100bd),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbb30d5),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff682574),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa059aa),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff870042),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd82973),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7fa),
      onSurface: Color(0xff221922),
      onSurfaceVariant: Color(0xff4d3e4d),
      outline: Color(0xff6b5a6a),
      outlineVariant: Color(0xff877586),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372d37),
      inversePrimary: Color(0xfff8acff),
      primaryFixed: Color(0xffbc30d6),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff9d00b8),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa059aa),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff85408f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffd92a74),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xffb6005b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d5e3),
      surfaceBright: Color(0xfffff7fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffeffb),
      surfaceContainer: Color(0xfffae9f7),
      surfaceContainerHigh: Color(0xfff4e3f1),
      surfaceContainerHighest: Color(0xffefdeeb),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff40004c),
      surfaceTint: Color(0xffa100bd),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff750089),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff40004c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff682574),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4b0022),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff870042),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7fa),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2d1f2e),
      outline: Color(0xff4d3e4d),
      outlineVariant: Color(0xff4d3e4d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372d37),
      inversePrimary: Color(0xffffe4fc),
      primaryFixed: Color(0xff750089),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff510060),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff682574),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4f085c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff870042),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5e002c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d5e3),
      surfaceBright: Color(0xfffff7fa),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffeffb),
      surfaceContainer: Color(0xfffae9f7),
      surfaceContainerHigh: Color(0xfff4e3f1),
      surfaceContainerHighest: Color(0xffefdeeb),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff8acff),
      surfaceTint: Color(0xfff8acff),
      onPrimary: Color(0xff570067),
      primaryContainer: Color(0xffa000bb),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xfff8acff),
      onSecondary: Color(0xff530e60),
      secondaryContainer: Color(0xff652271),
      onSecondaryContainer: Color(0xfffcc2ff),
      tertiary: Color(0xffffb1c6),
      onTertiary: Color(0xff650030),
      tertiaryContainer: Color(0xffb8005d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff19101a),
      onSurface: Color(0xffefdeeb),
      onSurfaceVariant: Color(0xffd6c0d3),
      outline: Color(0xff9e8b9d),
      outlineVariant: Color(0xff514251),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdeeb),
      inversePrimary: Color(0xffa100bd),
      primaryFixed: Color(0xffffd6ff),
      onPrimaryFixed: Color(0xff350040),
      primaryFixedDim: Color(0xfff8acff),
      onPrimaryFixedVariant: Color(0xff7b0090),
      secondaryFixed: Color(0xffffd6ff),
      onSecondaryFixed: Color(0xff350040),
      secondaryFixedDim: Color(0xfff8acff),
      onSecondaryFixedVariant: Color(0xff6d2a78),
      tertiaryFixed: Color(0xffffd9e1),
      onTertiaryFixed: Color(0xff3f001b),
      tertiaryFixedDim: Color(0xffffb1c6),
      onTertiaryFixedVariant: Color(0xff8e0046),
      surfaceDim: Color(0xff19101a),
      surfaceBright: Color(0xff413640),
      surfaceContainerLowest: Color(0xff140b14),
      surfaceContainerLow: Color(0xff221922),
      surfaceContainer: Color(0xff261d26),
      surfaceContainerHigh: Color(0xff312731),
      surfaceContainerHighest: Color(0xff3c313c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffab2ff),
      surfaceTint: Color(0xfff8acff),
      onPrimary: Color(0xff2d0036),
      primaryContainer: Color(0xffdd53f5),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffab2ff),
      onSecondary: Color(0xff2d0036),
      secondaryContainer: Color(0xffc075c8),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb7ca),
      onTertiary: Color(0xff350016),
      tertiaryContainer: Color(0xffff4a90),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff19101a),
      onSurface: Color(0xfffff9fa),
      onSurfaceVariant: Color(0xffdac4d8),
      outline: Color(0xffb19daf),
      outlineVariant: Color(0xff907d8f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdeeb),
      inversePrimary: Color(0xff7d0093),
      primaryFixed: Color(0xffffd6ff),
      onPrimaryFixed: Color(0xff24002c),
      primaryFixedDim: Color(0xfff8acff),
      onPrimaryFixedVariant: Color(0xff600071),
      secondaryFixed: Color(0xffffd6ff),
      onSecondaryFixed: Color(0xff24002c),
      secondaryFixedDim: Color(0xfff8acff),
      onSecondaryFixedVariant: Color(0xff5a1666),
      tertiaryFixed: Color(0xffffd9e1),
      onTertiaryFixed: Color(0xff2b0011),
      tertiaryFixedDim: Color(0xffffb1c6),
      onTertiaryFixedVariant: Color(0xff700036),
      surfaceDim: Color(0xff19101a),
      surfaceBright: Color(0xff413640),
      surfaceContainerLowest: Color(0xff140b14),
      surfaceContainerLow: Color(0xff221922),
      surfaceContainer: Color(0xff261d26),
      surfaceContainerHigh: Color(0xff312731),
      surfaceContainerHighest: Color(0xff3c313c),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9fa),
      surfaceTint: Color(0xfff8acff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfffab2ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9fa),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xfffab2ff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb7ca),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff19101a),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9fa),
      outline: Color(0xffdac4d8),
      outlineVariant: Color(0xffdac4d8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdeeb),
      inversePrimary: Color(0xff4d005b),
      primaryFixed: Color(0xffffdcfd),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xfffab2ff),
      onPrimaryFixedVariant: Color(0xff2d0036),
      secondaryFixed: Color(0xffffdcfd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xfffab2ff),
      onSecondaryFixedVariant: Color(0xff2d0036),
      tertiaryFixed: Color(0xffffdfe5),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb7ca),
      onTertiaryFixedVariant: Color(0xff350016),
      surfaceDim: Color(0xff19101a),
      surfaceBright: Color(0xff413640),
      surfaceContainerLowest: Color(0xff140b14),
      surfaceContainerLow: Color(0xff221922),
      surfaceContainer: Color(0xff261d26),
      surfaceContainerHigh: Color(0xff312731),
      surfaceContainerHighest: Color(0xff3c313c),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: colorScheme.primary,
            centerTitle: true,
            titleTextStyle: const TextStyle().copyWith(
              color: colorScheme.onPrimary,
              fontSize: 18,
            ),
            iconTheme: const IconThemeData().copyWith(
              color: colorScheme.onPrimary,
            )),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
