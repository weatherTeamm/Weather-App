import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';
import 'package:weather_project/features/home/data/models/weather_reponse_model.dart';
import 'package:weather_project/features/home/ui/home_screen.dart';

class MoreWeatherDetails extends StatelessWidget {
  const MoreWeatherDetails({super.key, required this.weatherResponse});
  final WeatherResponse weatherResponse;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: boxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStatCard('Wind', "${weatherResponse.current.wind_kph}",
              FontAwesomeIcons.wind),
          _buildStatCard('Humidity', '${weatherResponse.current.humidity}%',
              FontAwesomeIcons.droplet),
          _buildStatCard('Rain', '${weatherResponse.current.precip_mm}%',
              FontAwesomeIcons.cloudRain),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          verticalSpacing(3),
          Text(
            value,
            style: TextStyles.font16WhiteMedium
                .copyWith(color: ColorsManager.darkBlue),
          ),
          verticalSpacing(3),
          Text(title, style: TextStyles.font14LightGrayRegular),
        ],
      ),
    );
  }
}
