import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

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
      primary: Color(4278216820),
      surfaceTint: Color(4278216820),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288606205),
      onPrimaryContainer: Color(4278198052),
      secondary: Color(4283064935),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291684332),
      onSecondaryContainer: Color(4278525731),
      tertiary: Color(4283588221),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292535039),
      onTertiaryContainer: Color(4279114551),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294310651),
      onSurface: Color(4279704862),
      onSurfaceVariant: Color(4282337354),
      outline: Color(4285495674),
      outlineVariant: Color(4290758858),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4286764000),
      primaryFixed: Color(4288606205),
      onPrimaryFixed: Color(4278198052),
      primaryFixedDim: Color(4286764000),
      onPrimaryFixedVariant: Color(4278210391),
      secondaryFixed: Color(4291684332),
      onSecondaryFixed: Color(4278525731),
      secondaryFixedDim: Color(4289842128),
      onSecondaryFixedVariant: Color(4281551695),
      tertiaryFixed: Color(4292535039),
      onTertiaryFixed: Color(4279114551),
      tertiaryFixedDim: Color(4290430698),
      onTertiaryFixedVariant: Color(4282009188),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310651),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278209107),
      surfaceTint: Color(4278216820),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280647820),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281288523),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284512637),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281811552),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285035669),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310651),
      onSurface: Color(4279704862),
      onSurfaceVariant: Color(4282074182),
      outline: Color(4283916642),
      outlineVariant: Color(4285758590),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4286764000),
      primaryFixed: Color(4280647820),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278216305),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284512637),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282933348),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285035669),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283456379),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310651),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200108),
      surfaceTint: Color(4278216820),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278209107),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278986281),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281288523),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279574846),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281811552),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310651),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280034599),
      outline: Color(4282074182),
      outlineVariant: Color(4282074182),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4290704895),
      primaryFixed: Color(4278209107),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278202936),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281288523),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279775284),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4281811552),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280298569),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310651),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4286764000),
      surfaceTint: Color(4286764000),
      onPrimary: Color(4278203965),
      primaryContainer: Color(4278210391),
      onPrimaryContainer: Color(4288606205),
      secondary: Color(4289842128),
      onSecondary: Color(4280038456),
      secondaryContainer: Color(4281551695),
      onSecondaryContainer: Color(4291684332),
      tertiary: Color(4290430698),
      onTertiary: Color(4280561741),
      tertiaryContainer: Color(4282009188),
      onTertiaryContainer: Color(4292535039),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279112725),
      onSurface: Color(4292797413),
      onSurfaceVariant: Color(4290758858),
      outline: Color(4287206036),
      outlineVariant: Color(4282337354),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278216820),
      primaryFixed: Color(4288606205),
      onPrimaryFixed: Color(4278198052),
      primaryFixedDim: Color(4286764000),
      onPrimaryFixedVariant: Color(4278210391),
      secondaryFixed: Color(4291684332),
      onSecondaryFixed: Color(4278525731),
      secondaryFixedDim: Color(4289842128),
      onSecondaryFixedVariant: Color(4281551695),
      tertiaryFixed: Color(4292535039),
      onTertiaryFixed: Color(4279114551),
      tertiaryFixedDim: Color(4290430698),
      onTertiaryFixedVariant: Color(4282009188),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4287027172),
      surfaceTint: Color(4286764000),
      onPrimary: Color(4278196765),
      primaryContainer: Color(4282948777),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290105300),
      onSecondary: Color(4278262301),
      secondaryContainer: Color(4286354842),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4290693871),
      onTertiary: Color(4278719793),
      tertiaryContainer: Color(4286877874),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112725),
      onSurface: Color(4294376701),
      onSurfaceVariant: Color(4291022030),
      outline: Color(4288390566),
      outlineVariant: Color(4286285191),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278210649),
      primaryFixed: Color(4288606205),
      onPrimaryFixed: Color(4278195223),
      primaryFixedDim: Color(4286764000),
      onPrimaryFixedVariant: Color(4278205508),
      secondaryFixed: Color(4291684332),
      onSecondaryFixed: Color(4278195223),
      secondaryFixedDim: Color(4289842128),
      onSecondaryFixedVariant: Color(4280433214),
      tertiaryFixed: Color(4292535039),
      onTertiaryFixed: Color(4278390828),
      tertiaryFixedDim: Color(4290430698),
      onTertiaryFixedVariant: Color(4280956243),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294049279),
      surfaceTint: Color(4286764000),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287027172),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294049279),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290105300),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294769407),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290693871),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112725),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294180094),
      outline: Color(4291022030),
      outlineVariant: Color(4291022030),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278202165),
      primaryFixed: Color(4289328127),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287027172),
      onPrimaryFixedVariant: Color(4278196765),
      secondaryFixed: Color(4291947760),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290105300),
      onSecondaryFixedVariant: Color(4278262301),
      tertiaryFixed: Color(4292929279),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4290693871),
      onTertiaryFixedVariant: Color(4278719793),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
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
        scaffoldBackgroundColor: colorScheme.background,
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
