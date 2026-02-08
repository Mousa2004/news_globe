import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:news_globe/utils/app_routes.dart';

PageViewModel customedOnboarding({
  required BuildContext context,
  required void Function()? onPressed,
  required String textOne,
  required String textTwo,
  required String imageName,
}) {
  var height = MediaQuery.sizeOf(context).height;
  var width = MediaQuery.sizeOf(context).width;
  return PageViewModel(
    decoration: PageDecoration(
      pageMargin: EdgeInsets.zero,
      bodyPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.only(top: height * 0.03),
    ),
    titleWidget: Row(
      children: [
        SizedBox(width: width * 0.03),
        Text(
          "NewsGlobe",
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil(AppRoutes.homeScreen, (route) => false);
          },
          child: Text("Skip"),
        ),
      ],
    ),
    bodyWidget: Container(
      height: height * 0.83,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imageName), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(24.r),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.26),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: textOne,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: textTwo,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(
                left: width * 0.18,
                bottom: height * 0.01,
              ),
              width: width * 0.5,
              child: MaterialButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16.r),
                ),
                onPressed: onPressed,
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
