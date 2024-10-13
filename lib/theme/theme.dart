import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff656015),
      surfaceTint: Color(0xff656015),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffede68c),
      onPrimaryContainer: Color(0xff1e1c00),
      secondary: Color(0xff625f42),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe9e4be),
      onSecondaryContainer: Color(0xff1e1c05),
      tertiary: Color(0xff3f6654),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc1ecd5),
      onTertiaryContainer: Color(0xff002115),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffef9eb),
      onSurface: Color(0xff1d1c14),
      onSurfaceVariant: Color(0xff49473a),
      outline: Color(0xff7a7768),
      outlineVariant: Color(0xffcbc7b5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff323128),
      inversePrimary: Color(0xffd1c973),
      primaryFixed: Color(0xffede68c),
      onPrimaryFixed: Color(0xff1e1c00),
      primaryFixedDim: Color(0xffd1c973),
      onPrimaryFixedVariant: Color(0xff4d4800),
      secondaryFixed: Color(0xffe9e4be),
      onSecondaryFixed: Color(0xff1e1c05),
      secondaryFixedDim: Color(0xffccc8a3),
      onSecondaryFixedVariant: Color(0xff4a482c),
      tertiaryFixed: Color(0xffc1ecd5),
      onTertiaryFixed: Color(0xff002115),
      tertiaryFixedDim: Color(0xffa5d0ba),
      onTertiaryFixedVariant: Color(0xff274e3d),
      surfaceDim: Color(0xffdedacd),
      surfaceBright: Color(0xfffef9eb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff8f3e6),
      surfaceContainer: Color(0xfff2eee0),
      surfaceContainerHigh: Color(0xffece8da),
      surfaceContainerHighest: Color(0xffe7e2d5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff494400),
      surfaceTint: Color(0xff656015),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff7c772a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff464428),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff797656),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff234a39),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff557d6a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffef9eb),
      onSurface: Color(0xff1d1c14),
      onSurfaceVariant: Color(0xff454336),
      outline: Color(0xff625f51),
      outlineVariant: Color(0xff7e7b6c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff323128),
      inversePrimary: Color(0xffd1c973),
      primaryFixed: Color(0xff7c772a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff635e12),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff797656),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff605d3f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff557d6a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3d6452),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdedacd),
      surfaceBright: Color(0xfffef9eb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff8f3e6),
      surfaceContainer: Color(0xfff2eee0),
      surfaceContainerHigh: Color(0xffece8da),
      surfaceContainerHighest: Color(0xffe7e2d5),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff262300),
      surfaceTint: Color(0xff656015),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff494400),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff25230a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff464428),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00281a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff234a39),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffef9eb),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff262419),
      outline: Color(0xff454336),
      outlineVariant: Color(0xff454336),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff323128),
      inversePrimary: Color(0xfff7ef95),
      primaryFixed: Color(0xff494400),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff312e00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff464428),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff302d14),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff234a39),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff093324),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdedacd),
      surfaceBright: Color(0xfffef9eb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff8f3e6),
      surfaceContainer: Color(0xfff2eee0),
      surfaceContainerHigh: Color(0xffece8da),
      surfaceContainerHighest: Color(0xffe7e2d5),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd1c973),
      surfaceTint: Color(0xffd1c973),
      onPrimary: Color(0xff353100),
      primaryContainer: Color(0xff4d4800),
      onPrimaryContainer: Color(0xffede68c),
      secondary: Color(0xffccc8a3),
      onSecondary: Color(0xff333117),
      secondaryContainer: Color(0xff4a482c),
      onSecondaryContainer: Color(0xffe9e4be),
      tertiary: Color(0xffa5d0ba),
      onTertiary: Color(0xff0e3727),
      tertiaryContainer: Color(0xff274e3d),
      onTertiaryContainer: Color(0xffc1ecd5),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff14140c),
      onSurface: Color(0xffe7e2d5),
      onSurfaceVariant: Color(0xffcbc7b5),
      outline: Color(0xff949181),
      outlineVariant: Color(0xff49473a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e2d5),
      inversePrimary: Color(0xff656015),
      primaryFixed: Color(0xffede68c),
      onPrimaryFixed: Color(0xff1e1c00),
      primaryFixedDim: Color(0xffd1c973),
      onPrimaryFixedVariant: Color(0xff4d4800),
      secondaryFixed: Color(0xffe9e4be),
      onSecondaryFixed: Color(0xff1e1c05),
      secondaryFixedDim: Color(0xffccc8a3),
      onSecondaryFixedVariant: Color(0xff4a482c),
      tertiaryFixed: Color(0xffc1ecd5),
      onTertiaryFixed: Color(0xff002115),
      tertiaryFixedDim: Color(0xffa5d0ba),
      onTertiaryFixedVariant: Color(0xff274e3d),
      surfaceDim: Color(0xff14140c),
      surfaceBright: Color(0xff3b3930),
      surfaceContainerLowest: Color(0xff0f0e07),
      surfaceContainerLow: Color(0xff1d1c14),
      surfaceContainer: Color(0xff212017),
      surfaceContainerHigh: Color(0xff2b2a21),
      surfaceContainerHighest: Color(0xff36352c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd5ce77),
      surfaceTint: Color(0xffd1c973),
      onPrimary: Color(0xff191700),
      primaryContainer: Color(0xff999343),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd1cca7),
      onSecondary: Color(0xff191702),
      secondaryContainer: Color(0xff969271),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffaad4be),
      onTertiary: Color(0xff001b10),
      tertiaryContainer: Color(0xff719985),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff14140c),
      onSurface: Color(0xfffffaf0),
      onSurfaceVariant: Color(0xffcfcbb9),
      outline: Color(0xffa7a393),
      outlineVariant: Color(0xff868374),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e2d5),
      inversePrimary: Color(0xff4e4900),
      primaryFixed: Color(0xffede68c),
      onPrimaryFixed: Color(0xff131200),
      primaryFixedDim: Color(0xffd1c973),
      onPrimaryFixedVariant: Color(0xff3b3700),
      secondaryFixed: Color(0xffe9e4be),
      onSecondaryFixed: Color(0xff131201),
      secondaryFixedDim: Color(0xffccc8a3),
      onSecondaryFixedVariant: Color(0xff39371d),
      tertiaryFixed: Color(0xffc1ecd5),
      onTertiaryFixed: Color(0xff00150c),
      tertiaryFixedDim: Color(0xffa5d0ba),
      onTertiaryFixedVariant: Color(0xff153d2d),
      surfaceDim: Color(0xff14140c),
      surfaceBright: Color(0xff3b3930),
      surfaceContainerLowest: Color(0xff0f0e07),
      surfaceContainerLow: Color(0xff1d1c14),
      surfaceContainer: Color(0xff212017),
      surfaceContainerHigh: Color(0xff2b2a21),
      surfaceContainerHighest: Color(0xff36352c),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffffaf0),
      surfaceTint: Color(0xffd1c973),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffd5ce77),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf0),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd1cca7),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffeefff3),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffaad4be),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff14140c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffffaf0),
      outline: Color(0xffcfcbb9),
      outlineVariant: Color(0xffcfcbb9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e2d5),
      inversePrimary: Color(0xff2e2b00),
      primaryFixed: Color(0xfff2ea90),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffd5ce77),
      onPrimaryFixedVariant: Color(0xff191700),
      secondaryFixed: Color(0xffede8c2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffd1cca7),
      onSecondaryFixedVariant: Color(0xff191702),
      tertiaryFixed: Color(0xffc5f1d9),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffaad4be),
      onTertiaryFixedVariant: Color(0xff001b10),
      surfaceDim: Color(0xff14140c),
      surfaceBright: Color(0xff3b3930),
      surfaceContainerLowest: Color(0xff0f0e07),
      surfaceContainerLow: Color(0xff1d1c14),
      surfaceContainer: Color(0xff212017),
      surfaceContainerHigh: Color(0xff2b2a21),
      surfaceContainerHighest: Color(0xff36352c),
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
