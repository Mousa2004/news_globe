import 'package:news_globe/utils/app_assets.dart';

class OnboardingModel {
  String textOne;
  String textTwo;
  String imageName;
  OnboardingModel({
    required this.textOne,
    required this.textTwo,
    required this.imageName,
  });

  static List<OnboardingModel> oboardingList = [
    OnboardingModel(
      textOne: "Get The Latest\nnews from",
      textTwo: "\nreliable\nsources",
      imageName: AppAssets.onboardingOne,
    ),
    OnboardingModel(
      textOne: "Still up to data\nnews from",
      textTwo: "\nall around the\nworld",
      imageName: AppAssets.onboardingTwo,
    ),
    OnboardingModel(
      textOne: "From Art to\npolitices\nanything",
      textTwo: "\nin NewsGlobe",
      imageName: AppAssets.onboardingThree,
    ),
  ];
}
