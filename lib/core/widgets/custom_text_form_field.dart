import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final bool? isobscureText;
  final Color? backgroundColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsets? contentPadding;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final Widget? suffixIcon;
  final Widget? prefix;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String?)? onFieldSubmitted;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Color? borderColor;
  final Function()? onTap;
  final FocusNode? focusNode;
  final bool? autoFocus;
  const CustomTextFormField({
    super.key,
    this.isobscureText,
    this.backgroundColor,
    this.enabledBorder,
    this.focusedBorder,
    this.contentPadding,
    required this.hintText,
    this.hintStyle,
    this.style,
    this.suffixIcon,
    this.controller,
    required this.validator,
    this.prefix,
    this.onFieldSubmitted,
    this.keyboardType,
    this.readOnly,
    this.borderColor,
    this.onTap,
    this.focusNode,
    this.autoFocus,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus ?? false,
      focusNode: focusNode,
      controller: controller,
      obscureText: isobscureText ?? false,
      keyboardType: keyboardType,
      readOnly: readOnly ?? false,
      style: style ?? TextStyles.font14LightGrayRegular,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      cursorColor: ColorsManager.primary,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        isDense: true,
        filled: true,
        fillColor: backgroundColor ?? Colors.white,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        prefixIcon: prefix,
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(
                    color: borderColor ?? const Color(0xFFB8B8B8), width: 1),
                borderRadius: BorderRadius.circular(8)),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorsManager.primary, width: 1),
                borderRadius: BorderRadius.circular(8)),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: suffixIcon,
      ),
      validator: (value) {
        return validator(value);
      },
    );
  }
}
