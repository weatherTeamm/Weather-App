import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';
import 'package:weather_project/features/home/data/models/weather_reponse_model.dart';
import 'package:weather_project/features/home/ui/home_screen.dart';

class WeatherDetailsListItems extends StatelessWidget {
  const WeatherDetailsListItems({
    super.key,
    required this.forecastDay,
  });
  final Hour forecastDay;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: boxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              forecastDay.time.split(' ')[1],
              style: TextStyles.font14LightGrayRegular.copyWith(
                color: ColorsManager.darkBlue,
              ),
            ),
            verticalSpacing(5),
            Image.network(
              "http:${forecastDay.condition.icon}",
              height: 40.h,
              width: 40.w,
            ),
            verticalSpacing(5),
            Text(
              '${forecastDay.temp_c}°',
              style: TextStyles.font14LightGrayRegular
                  .copyWith(color: ColorsManager.darkBlue),
            ),
          ],
        ));
  }
}
