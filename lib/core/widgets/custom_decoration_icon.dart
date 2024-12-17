import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/theme/app_color.dart';

class CustomDecorationIcon extends StatelessWidget {
  const CustomDecorationIcon({
    super.key,
    required this.icon,
    this.backgroundColor,
  });
  final IconData icon;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34.w,
      height: 34.h,
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(6.r)),
      child: Icon(icon, color: ColorsManager.darkBlue),
    );
  }
}
