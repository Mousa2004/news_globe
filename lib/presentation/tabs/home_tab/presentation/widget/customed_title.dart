import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomedTitle extends StatelessWidget {
  final String title;
  final void Function()? viewAllonPressed;
  const CustomedTitle({super.key, required this.title, this.viewAllonPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: viewAllonPressed,
          child: Text(
            "View all",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
              color: Colors.brown,
            ),
          ),
        ),
      ],
    );
  }
}
