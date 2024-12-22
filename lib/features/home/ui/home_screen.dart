import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/widgets/based_screen.dart';
import 'package:weather_project/core/widgets/loading_widget.dart';
import 'package:weather_project/features/home/logic/cubit/home_cubit.dart';
import 'package:weather_project/features/home/logic/cubit/home_state.dart';
import 'package:weather_project/features/home/ui/widgets/current_weather_details.dart';
import 'package:weather_project/features/home/ui/widgets/home_tabBar.dart';
import 'package:weather_project/features/home/ui/widgets/more_weather_details.dart';
import 'package:weather_project/features/home/ui/widgets/weathe_search.dart';
import 'package:weather_project/features/home/ui/widgets/weather_hourly_details_listView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return BasedScreen(
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is GetWeatherSuccess ||
            current is GetWeatherFailure ||
            current is GetWeatherLoading,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            gteWeatherLoading: () => const LoadingWidget(),
            gteWeatherSuccess: (weatherResponse) => Column(
              children: [
                WeatheSearch(homeCubit: homeCubit),
                verticalSpacing(20),
                CurrentWeatherDetails(weatherResponse: weatherResponse),
                verticalSpacing(36),
                MoreWeatherDetails(
                  weatherResponse: weatherResponse,
                ),
                verticalSpacing(46),
                HomeTabBar(tabController: tabController),
                verticalSpacing(30),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpacing(20),
                          WeatherHourlyDetailsListView(
                            forecast: weatherResponse.forecast.forecastday[0],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpacing(20),
                          WeatherHourlyDetailsListView(
                            forecast: weatherResponse.forecast.forecastday[1],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpacing(20),
                          WeatherHourlyDetailsListView(
                            forecast: weatherResponse.forecast.forecastday[2],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

BoxDecoration boxDecoration() {
  return BoxDecoration(
    color: ColorsManager.moreLighterGray,
    borderRadius: BorderRadius.circular(20.r),
  );
}
