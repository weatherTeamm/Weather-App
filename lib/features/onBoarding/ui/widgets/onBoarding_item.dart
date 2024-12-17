import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class OnBoardingItem extends StatelessWidget {
  final String image;
  final String title;
  final String? subtitle;

  const OnBoardingItem({
    super.key,
    required this.image,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 200.h, width: 200.w),
        verticalSpacing(44),
        Text(
          title,
          style: TextStyles.font14DarkBlueMedium.copyWith(
            fontSize: 24.sp,
          ),
        ),
        verticalSpacing(12),
        SizedBox(
          width: 280.w,
          child: Text(
            subtitle ??
                "Sell houses easily with the help of Listenoryx and to make this line big I am writing more.",
            style: TextStyles.font14LightGrayRegular,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
