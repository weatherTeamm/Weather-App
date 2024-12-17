import 'package:flutter/material.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class CustomOrDivider extends StatelessWidget {
  const CustomOrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: Colors.grey,
            child: const Text(''),
          ),
        ),
        horizantialSpacing(7),
        Text(
          'or',
          style: TextStyles.font16WhiteMedium.copyWith(color: Colors.grey),
        ),
        horizantialSpacing(7),
        Expanded(
          child: Container(
            height: 1,
            color: Colors.grey,
            child: const Text(''),
          ),
        ),
      ],
    );
  }
}
