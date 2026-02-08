import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:news_globe/data/model/onboarding_model.dart';
import 'package:news_globe/presentation/onboarding/presentation/widget/customed_onboarding.dart';
import 'package:news_globe/utils/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: _introKey,

      pages: OnboardingModel.oboardingList
          .map(
            (onboarding) => customedOnboarding(
              imageName: onboarding.imageName,
              textOne: onboarding.textOne,
              textTwo: onboarding.textTwo,
              context: context,
              onPressed: () async {
                if (currentIndex == OnboardingModel.oboardingList.length - 1) {
                  SharedPreferences sharedPref =
                      await SharedPreferences.getInstance();
                  sharedPref.setBool("onboarding", true);
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(AppRoutes.homeScreen);
                } else {
                  _introKey.currentState?.next();
                }
              },
            ),
          )
          .toList(),
      bodyPadding: EdgeInsets.zero,
      showNextButton: false,
      showDoneButton: false,
      showBottomPart: false,
      onChange: (index) {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
