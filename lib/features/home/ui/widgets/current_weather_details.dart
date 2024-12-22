import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';
import 'package:weather_project/core/theme/font_weight_helper.dart';
import 'package:weather_project/features/home/data/models/weather_reponse_model.dart';
import 'package:weather_project/features/home/ui/home_screen.dart';

class CurrentWeatherDetails extends StatelessWidget {
  const CurrentWeatherDetails({super.key, required this.weatherResponse});
  final WeatherResponse weatherResponse;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        decoration: boxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  weatherResponse.forecast.forecastday[0].date,
                  style: TextStyles.font14LightGrayRegular,
                ),
                verticalSpacing(5),
                Text(
                  weatherResponse.location.name,
                  style: TextStyles.font16WhiteMedium.copyWith(
                      color: ColorsManager.darkBlue,
                      fontWeight: FontWeightHelper.semiBold),
                ),
                verticalSpacing(5),
                Text(
                  '${weatherResponse.current.temp_c}°',
                  style: TextStyles.font24BlueBold.copyWith(fontSize: 30.sp),
                )
              ],
            ),
            Image.network(
              "http:${weatherResponse.current.condition.icon}",
              height: 100.h,
              width: 100.w,
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}
