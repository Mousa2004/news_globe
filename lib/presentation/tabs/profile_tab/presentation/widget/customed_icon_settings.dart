import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomedIconSettings extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? titleColor;
  final void Function()? onTap;
  const CustomedIconSettings({
    super.key,
    required this.icon,
    required this.title,
    this.titleColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Icon(icon, color: Colors.red, size: 28.sp),
            SizedBox(width: 16.w),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w300,
                color: titleColor ?? Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
