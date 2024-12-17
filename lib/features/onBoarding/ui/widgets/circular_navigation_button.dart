import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class CircularNavigationButton extends StatelessWidget {
  const CircularNavigationButton(
      {super.key,
      required this.onNextPressed,
      required this.progressPercentage,
      required this.isLastPage});
  final Function() onNextPressed;
  final double progressPercentage;
  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        onPressed: onNextPressed,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 70.h,
              width: 70.w,
              child: CircularProgressIndicator(
                value: progressPercentage,
                backgroundColor: ColorsManager.lighterGray,
                valueColor: const AlwaysStoppedAnimation(ColorsManager.primary),
              ),
            ),
            CircleAvatar(
              radius: 30.r,
              backgroundColor: ColorsManager.primary,
              child: isLastPage
                  ? Text(
                      'Go',
                      style: TextStyles.font16WhiteMedium,
                    )
                  : const Icon(
                      Icons.arrow_forward,
                      color: ColorsManager.lighterGray,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
