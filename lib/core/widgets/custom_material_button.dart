import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.backgroundColor,
    this.raduisBorder,
    this.height,
    this.padding,
    this.styleText,
    this.minWight,
  });
  final String textButton;
  final Function() onPressed;
  final Color? backgroundColor;
  final double? raduisBorder;
  final double? height;
  final double? minWight;
  final EdgeInsets? padding;
  final TextStyle? styleText;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor ?? ColorsManager.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(raduisBorder ?? 8),
      ),
      minWidth: minWight ?? double.infinity,
      padding: padding,
      height: height ?? 54.h,
      child: Text(
        textButton,
        style: styleText ?? TextStyles.font16WhiteMedium,
      ),
    );
  }
}
