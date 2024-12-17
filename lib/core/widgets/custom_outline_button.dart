import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    this.borderColor,
    this.backgroundColor,
    this.height,
    required this.onPressed,
    this.raduisBorder,
    this.textButton,
    this.child,
  });
  final Color? borderColor;
  final Color? backgroundColor;
  final int? height;
  final Function() onPressed;
  final double? raduisBorder;
  final String? textButton;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
            backgroundColor ?? Colors.white,
          ),
          side: WidgetStateProperty.all<BorderSide>(
              BorderSide(color: borderColor ?? ColorsManager.primary)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(raduisBorder ?? 8.0),
            ),
          ),
        ),
        child: child ??
            Text(
              textButton!,
              style: TextStyles.font16WhiteMedium
                  .copyWith(color: ColorsManager.primary),
            ), // The button's label
      ),
    );
  }
}
