import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_globe/data/model/home_details_model.dart';

class CustomedRecommendationList extends StatelessWidget {
  final HomeDetailsModel homeDetailsModel;
  final void Function()? onTap;
  const CustomedRecommendationList({
    super.key,
    this.onTap,
    required this.homeDetailsModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              homeDetailsModel.imageName,
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
                homeDetailsModel.title,

                style: TextStyle(
                  fontSize: 14.sp,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              Text(
                homeDetailsModel.subTitle,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
