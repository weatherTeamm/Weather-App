import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/helper/extension.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/routing/routes.dart';
import 'package:weather_project/core/utils/app_images.dart';
import 'package:weather_project/core/widgets/custom_material_button.dart';
import 'package:weather_project/core/widgets/custom_outline_button.dart';
import 'package:weather_project/features/onBoarding/ui/widgets/onBoarding_item.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 10.h),
              child: Column(children: [
                verticalSpacing(61),
                const OnBoardingItem(
                  image: AppImages.logo,
                  title: 'Welcome',
                  subtitle: 'Have a better sharing experience',
                ),
                const Spacer(),
                Expanded(
                    child: Column(
                  children: [
                    CustomMaterialButton(
                        textButton: 'Create an account',
                        onPressed: () {
                          context.pushNamed(Routes.registerScreen);
                        }),
                    verticalSpacing(20),
                    CustomOutlineButton(
                      textButton: 'Log In',
                      onPressed: () {
                        context.pushNamed(Routes.loginScreen);
                      },
                    )
                  ],
                ))
              ]))),
    );
  }
}
