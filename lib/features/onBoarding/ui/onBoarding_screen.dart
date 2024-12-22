import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/helper/extension.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/routing/routes.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';
import 'package:weather_project/core/utils/app_images.dart';
import 'package:weather_project/features/onBoarding/data/models/onBoarding_item_model.dart';
import 'package:weather_project/features/onBoarding/ui/widgets/circular_navigation_button.dart';
import 'package:weather_project/features/onBoarding/ui/widgets/onBoarding_pageView_builder.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  final List<OnboardingItemModel> onboardingItems = [
    OnboardingItemModel(AppImages.onBoarding1, "Detailed Hourly Forecast",
        "Get in - depth weather information."),
    OnboardingItemModel(AppImages.onBoarding2, "Real-Time Weather Map",
        "Watch the progress of the precipitation to stay informed"),
    OnboardingItemModel(AppImages.onBoarding3, "Weather Around the World",
        "Add any location you want and swipe easily to chnage."),
    OnboardingItemModel(AppImages.onBoarding4, "Detailed Hourly Forecast",
        "Get in - depth weather information.")
  ];

  double _progressPercentage = 0.33;
  bool _isLastPage = false;

  double get progressIncrement => 1.0 / onboardingItems.length;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _progressPercentage = (index + 1) * progressIncrement;
      _isLastPage = index == onboardingItems.length - 1;
    });
  }

  void _onNextPressed() {
    if (!_isLastPage) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      context.pushNamedAndRemoveUntil(Routes.authScreen,
          predicate: (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.semiLighterGray,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    context.pushNamedAndRemoveUntil(Routes.authScreen,
                        predicate: (Route<dynamic> route) => false);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyles.font14LightGrayRegular,
                  ),
                ),
              ),
              verticalSpacing(61),
              Stack(
                children: [
                  OnBoardingPageViewBuilder(
                    onPageChanged: _onPageChanged,
                    pageController: _pageController,
                    onBoardingItems: onboardingItems,
                  ),
                ],
              ),
              CircularNavigationButton(
                onNextPressed: _onNextPressed,
                progressPercentage: _progressPercentage,
                isLastPage: _isLastPage,
              )
            ],
          ),
        ),
      ),
    );
  }
}
