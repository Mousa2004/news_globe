import 'package:flutter/material.dart';
import 'package:news_globe/presentation/home/presentation/screen/home_screen.dart';
import 'package:news_globe/presentation/onboarding/presentation/screen/onboarding_screen.dart';

class AppRoutes {
  static const String homeScreen = "/homeScreen";
  static const String onboardingScreen = "/onboardingScreen";
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.homeScreen: (context) => HomeScreen(),
    AppRoutes.onboardingScreen: (context) => OnboardingScreen(),
  };
}
