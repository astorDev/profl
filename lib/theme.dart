import 'package:flutter/material.dart';
import 'package:profl/pkg/color_invert.dart';
import 'package:profl/pkg/tracks.dart';

TrackStyleBuilder invertedBackgroundStyleBuilder = TrackStyleBuilder(
  labelStyle: (style) => style.withInvertedColor(opacity: 0.7),
  valueColor: (scheme) => scheme.primary,
);

Color accent = const Color.fromRGBO(134, 217, 0, 1);
Color greyer = const Color.fromRGBO(219, 222, 223, 1);
Color grey = const Color.fromRGBO(240, 243, 244, 1);

ThemeData dark = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
  useMaterial3: true,
);

ThemeData light = ThemeData(
  colorScheme: ColorScheme.light(
    primary: accent,
    tertiary: greyer,
    surface: grey,
    background: grey,
    secondaryContainer: Colors.white,
    shadow: accent.withOpacity(0.5),
  ),
  useMaterial3: true,
  textTheme: TextTheme(

    // Used mainly in the headline head
    displayLarge: const TextStyle(
      fontFamily: 'Source Code Pro',
      fontSize: 33,
      fontWeight: FontWeight.w900,
      letterSpacing: 6,
    ),
     displayMedium: const TextStyle(
      fontFamily: 'Source Code Pro',
      fontSize: 14,
      fontWeight: FontWeight.w900,
    ),
    displaySmall: const TextStyle(
      fontFamily: 'Source Code Pro',
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 2,
    ),

    labelMedium: const TextStyle(
      fontFamily: 'Source Code Pro',
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),

    // Used in the main
    headlineLarge: const TextStyle(
      fontFamily: 'Source Code Pro',
      fontSize: 17,
      fontWeight: FontWeight.w700,
      letterSpacing: 3,
    ),
    headlineMedium: const TextStyle(
      fontFamily: 'Source Code Pro',
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 3,
    ),


    bodyMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.6)
    ),
    bodySmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(1)
    ),

    // Used in the experience card
    titleMedium: const TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),

    // Used in the experience track label
    titleSmall: const TextStyle(
      fontFamily: 'Inter',
      fontSize: 10,
      fontWeight: FontWeight.w700,
    ),
  )
);