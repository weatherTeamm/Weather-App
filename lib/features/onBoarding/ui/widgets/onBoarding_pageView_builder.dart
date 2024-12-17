import 'package:flutter/material.dart';
import 'package:weather_project/features/onBoarding/data/models/onBoarding_item_model.dart';
import 'package:weather_project/features/onBoarding/ui/widgets/onBoarding_item.dart';

class OnBoardingPageViewBuilder extends StatelessWidget {
  const OnBoardingPageViewBuilder(
      {super.key,
      required this.onPageChanged,
      required this.pageController,
      required this.onBoardingItems});
  final Function(int) onPageChanged;
  final PageController pageController;
  final List<OnboardingItemModel> onBoardingItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: PageView.builder(
        controller: pageController,
        itemCount: onBoardingItems.length,
        physics: const BouncingScrollPhysics(),
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return OnBoardingItem(
            image: onBoardingItems[index].image,
            title: onBoardingItems[index].title,
            subtitle: onBoardingItems[index].subtitle,
          );
        },
      ),
    );
  }
}
