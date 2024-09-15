import 'package:bookia/Core/Utils/theme.dart';
import 'package:bookia/Feature/Intro/splashview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppThemes.LightTheme,
        debugShowCheckedModeBanner: false,
        home: SplashView());
  }
}
