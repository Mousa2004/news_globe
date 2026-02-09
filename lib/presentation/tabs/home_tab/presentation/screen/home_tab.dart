import 'package:flutter/material.dart';
import 'package:news_globe/data/model/home_details_model.dart';
import 'package:news_globe/presentation/tabs/home_tab/presentation/widget/customed_icon_bottom.dart';
import 'package:news_globe/presentation/tabs/home_tab/presentation/widget/customed_news_slider_show.dart';
import 'package:news_globe/presentation/tabs/home_tab/presentation/widget/customed_recommendation_list.dart';
import 'package:news_globe/presentation/tabs/home_tab/presentation/widget/customed_title.dart';
import 'package:news_globe/utils/app_assets.dart';
import 'package:news_globe/utils/app_routes.dart';

class HomeTab extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const HomeTab({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    final List images = [
      AppAssets.generalImg,
      AppAssets.onboardingOne,
      AppAssets.onboardingTwo,
      AppAssets.onboardingThree,
      AppAssets.generalImg,
      AppAssets.onboardingOne,
      AppAssets.onboardingTwo,
      AppAssets.onboardingThree,
    ];
    String title =
        "flutter pub outdated` for more \n"
        "flutter pub outdated` for more \n"
        "flutter pub outdated` for more ";
    String subTitle = "flutter pub outdated` for";

    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          children: [
            Row(
              children: [
                Builder(
                  builder: (context) => CustomedIconBottom(
                    icon: Icons.menu,
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                ),
                Spacer(),
                CustomedIconBottom(icon: Icons.search, onPressed: () {}),
                SizedBox(width: width * 0.04),
                CustomedIconBottom(icon: Icons.notifications, onPressed: () {}),
              ],
            ),
            SizedBox(height: height * 0.02),
            CustomedTitle(title: "Breaking News", viewAllonPressed: () {}),
            SizedBox(height: height * 0.02),
            CustomedNewsSliderShow(),
            SizedBox(height: height * 0.02),
            CustomedTitle(title: "Recommendation", viewAllonPressed: () {}),
            SizedBox(height: height * 0.02),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    SizedBox(height: height * 0.02),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return CustomedRecommendationList(
                    homeDetailsModel: HomeDetailsModel(
                      title: title,
                      subTitle: subTitle,
                      imageName: images[index],
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        AppRoutes.homeTabDetails,
                        arguments: HomeDetailsModel(
                          imageName: images[index],
                          title: title,
                          subTitle: subTitle,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
