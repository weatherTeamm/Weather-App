import 'package:flutter/material.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/features/home/data/models/weather_reponse_model.dart';
import 'package:weather_project/features/home/ui/widgets/weather_details_listItems.dart';

class WeatherHourlyDetailsListView extends StatelessWidget {
  const WeatherHourlyDetailsListView({
    super.key,
    required this.forecast,
  });
  final ForecastDay forecast;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 2.5,
      child: ListView.separated(
        itemBuilder: (context, index) => SizedBox(
          height: MediaQuery.of(context).size.width / 3,
          width: MediaQuery.of(context).size.width / 3.2,
          child: WeatherDetailsListItems(
            forecastDay: forecast.hour[index],
          ),
        ),
        separatorBuilder: (context, index) => horizantialSpacing(20),
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
