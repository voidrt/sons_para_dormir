import 'package:flutter/material.dart';
import 'package:sons_para_dormir/theme/paddings.dart';
import 'colors.dart';
import 'text_theme.dart';

class TrackMyPetTheme {
  static final themeData = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.blue,
      secondary: AppColors.secondary,
      surface: AppColors.black,
      inverseSurface: AppColors.black,
      onSurface: AppColors.onBackground,
    ),
    textTheme: TextTheme(
      labelMedium: PetTrackTextStyle.subtitleText,
      bodyMedium: PetTrackTextStyle.bodyText,
      headlineMedium: PetTrackTextStyle.headlineText,
    ),
    scaffoldBackgroundColor: AppColors.blackVariant,

    appBarTheme: AppBarTheme(foregroundColor: AppColors.black),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    buttonTheme: const ButtonThemeData(splashColor: Colors.transparent),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30),
      ),
      border: InputBorder.none,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primary, width: 1),
        borderRadius: BorderRadius.circular(30),
      ),
      filled: true,
      fillColor: AppColors.onBackground,
      contentPadding: const EdgeInsets.symmetric(
        vertical: AppPaddings.defaultSize,
        horizontal: AppPaddings.big,
      ),
    ),
    dividerTheme: const DividerThemeData(
      indent: AppPaddings.veryBig,
      endIndent: AppPaddings.veryBig,
      thickness: 1,
    ),
  );
}
