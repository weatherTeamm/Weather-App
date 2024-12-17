import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class PrivacyAndPolicyWidget extends StatelessWidget {
  const PrivacyAndPolicyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.circleCheck,
          color: ColorsManager.primary,
          size: 18,
        ),
        horizantialSpacing(12),
        Expanded(
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'By signing up. you agree to the',
              style: TextStyles.font12DarkBlueRegular,
            ),
            TextSpan(
              text: ' Terms of service',
              style: TextStyles.font12DarkBlueRegular
                  .copyWith(color: ColorsManager.primary),
            ),
            TextSpan(
              text: ' and',
              style: TextStyles.font12DarkBlueRegular,
            ),
            TextSpan(
              text: ' Privacy policy.',
              style: TextStyles.font12DarkBlueRegular
                  .copyWith(color: ColorsManager.primary),
            ),
          ])),
        ),
      ],
    );
  }
}
