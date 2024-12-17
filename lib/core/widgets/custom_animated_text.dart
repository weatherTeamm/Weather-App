import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class CustomAnimatedText extends StatelessWidget {
  const CustomAnimatedText({
    super.key,
    required this.text,
    this.style,
  });
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          text,
          textStyle: style ?? TextStyles.font24WhiteBold,
          speed: const Duration(milliseconds: 150),
        ),
      ],
      totalRepeatCount: 1,
      pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}
