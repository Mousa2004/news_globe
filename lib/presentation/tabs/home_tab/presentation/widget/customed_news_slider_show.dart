import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_globe/utils/app_assets.dart';

class CustomedNewsSliderShow extends StatefulWidget {
  const CustomedNewsSliderShow({super.key});

  @override
  State<CustomedNewsSliderShow> createState() => _CustomedNewsSliderShowState();
}

class _CustomedNewsSliderShowState extends State<CustomedNewsSliderShow> {
  final List images = [
    AppAssets.onboardingOne,
    AppAssets.onboardingTwo,
    AppAssets.onboardingThree,
    AppAssets.onboardingOne,
    AppAssets.onboardingTwo,
    AppAssets.onboardingThree,
  ];

  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 7,
            onPageChanged: (index, reason) {
              _currentIndex = index;
              setState(() {});
            },
          ),
          itemCount: images.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(images[itemIndex]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.w,
                        right: 16.w,
                        bottom: 8.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: width * 0.15,
                            padding: EdgeInsets.all(4.sp),
                            margin: EdgeInsets.symmetric(vertical: 8.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: Colors.red,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              "CNBC",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "`flutter pub outdated` for more \n"
                            "`flutter pub outdated` for more \n"
                            "`flutter pub outdated` for more ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
        ),
        SizedBox(height: height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _currentIndex == entry.key ? 18.w : 9.w,
                height: 9.h,
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: _currentIndex == entry.key
                      ? (Colors.red)
                      : Colors.grey[300],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
