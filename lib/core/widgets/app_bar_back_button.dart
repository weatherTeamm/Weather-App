import 'package:flutter/material.dart';
import 'package:weather_project/core/helper/extension.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios_new,
            color: ColorsManager.darkBlue,
            size: 18,
          ),
          horizantialSpacing(5),
          Text(
            'Back',
            style: TextStyles.font16WhiteMedium,
          )
        ],
      ),
    );
  }
}
