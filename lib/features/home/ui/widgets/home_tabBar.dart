import 'package:flutter/material.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(
          child: Text('Today',
              style: TextStyles.font14LightGrayRegular
                  .copyWith(color: ColorsManager.darkBlue)),
        ),
        Tab(
          child: Text('Tomorrow',
              style: TextStyles.font14LightGrayRegular
                  .copyWith(color: ColorsManager.darkBlue)),
        ),
        Tab(
          child: Text('Next 3 Days',
              style: TextStyles.font14LightGrayRegular
                  .copyWith(color: ColorsManager.darkBlue)),
        ),
      ],
      controller: tabController,
      indicatorColor: ColorsManager.primary,
      labelColor: ColorsManager.primary,
      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
      unselectedLabelColor: ColorsManager.darkBlue,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }
}
