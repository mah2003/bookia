import 'package:bookia/Core/Utils/Colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData LightTheme = ThemeData(
      fontFamily: 'DMSerifDisplay',
      scaffoldBackgroundColor: AppColors.Background,
      appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.Background,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: AppColors.Dark)),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.Primary,
        onSurface: AppColors.Dark,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.Background,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: AppColors.Background,
        filled: true,
        hintStyle: TextStyle(color: AppColors.Dark, fontSize: 15),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: AppColors.Primary)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: AppColors.Primary)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.red)),
      ));
}
