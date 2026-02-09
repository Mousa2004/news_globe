import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomedIconBottom extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  final Color? iconColor;
  final Color? iconBackground;
  const CustomedIconBottom({
    super.key,
    this.onPressed,
    required this.icon,
    this.iconColor,
    this.iconBackground,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: iconBackground ?? Colors.grey.withAlpha(80),
        borderRadius: BorderRadius.circular(32.r),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon)),
    );
  }
}
