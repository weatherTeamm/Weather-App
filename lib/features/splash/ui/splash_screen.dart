import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/helper/extension.dart';
import 'package:weather_project/core/routing/routes.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';
import 'package:weather_project/core/utils/app_constant.dart';
import 'package:weather_project/core/utils/app_images.dart';
import 'package:weather_project/core/widgets/custom_animated_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Ensure navigation occurs after animation completes
    Future.delayed(
      const Duration(milliseconds: 3000), // Adjust based on animation duration
      () async {
        if (AppConstants.savedToken.isNotEmpty) {
          context.pushNamedAndRemoveUntil(Routes.homeScreen,
              predicate: (route) => false);
        } else {
          context.pushNamedAndRemoveUntil(Routes.onBoardingScreen,
              predicate: (route) => false);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.semiLighterGray,
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.logo, height: 200.h, width: 200.w),
              CustomAnimatedText(
                text: 'Weather Forecast',
                style: TextStyles.font24BlueBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
