import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_globe/presentation/tabs/profile_tab/presentation/widget/customed_icon_settings.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back, size: 25.sp),
                SizedBox(width: 16.w),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            CustomedIconSettings(
              icon: Icons.person,
              title: "Profile",
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            CustomedIconSettings(
              icon: Icons.logout,
              title: "Logout",
              titleColor: Colors.red,
              onTap: () {},
            ),
            SizedBox(height: 20.h),
            Divider(),
            SizedBox(height: 20.h),
            Text(
              "General Settings",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.h),
            CustomedIconSettings(
              icon: Icons.bookmark,
              title: "Bookmarks",
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomedIconSettings(
                  icon: Icons.nightlight,
                  title: "Dark mode",
                ),
                Switch(
                  value: value,
                  onChanged: (newValue) {
                    value = newValue;
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 16.h),
            CustomedIconSettings(
              icon: Icons.card_membership_rounded,
              title: "Contact Us",
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            CustomedIconSettings(
              icon: Icons.language,
              title: "Language",
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            CustomedIconSettings(
              icon: Icons.rate_review,
              title: "Rate this app",
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            CustomedIconSettings(
              icon: Icons.check_circle,
              title: "License",
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            CustomedIconSettings(
              icon: Icons.privacy_tip,
              title: "Privacy Policy",
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            CustomedIconSettings(
              icon: Icons.error_rounded,
              title: "About Us",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
