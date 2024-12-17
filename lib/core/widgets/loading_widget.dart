import 'package:flutter/material.dart';
import 'package:weather_project/core/theme/app_color.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorsManager.primary,
      ),
    );
  }
}
