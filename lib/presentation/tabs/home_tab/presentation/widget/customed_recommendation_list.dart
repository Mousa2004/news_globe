import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomedRecommendationList extends StatelessWidget {
  final String imageName;
  const CustomedRecommendationList({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            imageName,
            height: 130,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "flutter pub outdated` for more \n"
              "flutter pub outdated` for more \n"
              "flutter pub outdated` for more ",
              style: TextStyle(
                fontSize: 14.sp,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            Text(
              "flutter pub outdated` for",

              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
