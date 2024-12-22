import 'package:json_annotation/json_annotation.dart';

part 'weather_reponse_model.g.dart';

@JsonSerializable()
class WeatherResponse {
  final Location location;
  final Current current;
  final Forecast forecast;

  WeatherResponse({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}

// Location details
@JsonSerializable()
class Location {
  final String name; // City name
  final String region;
  final String country;
  final double lat;
  final double lon;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

// Current weather details
@JsonSerializable()
class Current {
  final double temp_c; // Current temperature in Celsius
  final double wind_kph; // Wind speed in kph
  final double humidity; // Humidity percentage
  final double precip_mm; // Rain in mm
  final Condition condition; // Weather condition details

  Current({
    required this.temp_c,
    required this.wind_kph,
    required this.humidity,
    required this.precip_mm,
    required this.condition,
  });

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

// Forecast details
@JsonSerializable()
class Forecast {
  final List<ForecastDay> forecastday; // List of forecast days

  Forecast({required this.forecastday});

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}

// Forecast for a single day
@JsonSerializable()
class ForecastDay {
  final String date; // Date of forecast
  final Day day; // Day-level weather details
  final List<Hour> hour; // Hourly forecast details

  ForecastDay({
    required this.date,
    required this.day,
    required this.hour,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayToJson(this);
}

// Day-level weather details
@JsonSerializable()
class Day {
  final double maxtemp_c; // Maximum temperature
  final double mintemp_c; // Minimum temperature
  final double avgtemp_c; // Average temperature
  final double daily_chance_of_rain; // Daily chance of rain percentage
  final Condition condition; // Weather condition details

  Day({
    required this.maxtemp_c,
    required this.mintemp_c,
    required this.avgtemp_c,
    required this.daily_chance_of_rain,
    required this.condition,
  });

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);
}

// Hourly weather details
@JsonSerializable()
class Hour {
  final String time; // Time of the hour
  final double temp_c; // Temperature
  final double wind_kph; // Wind speed
  final double humidity; // Humidity percentage
  final Condition condition; // Weather condition details

  Hour({
    required this.time,
    required this.temp_c,
    required this.wind_kph,
    required this.humidity,
    required this.condition,
  });

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);

  Map<String, dynamic> toJson() => _$HourToJson(this);
}

// Weather condition details
@JsonSerializable()
class Condition {
  final String text; // Weather condition text (e.g., "Cloudy")
  final String icon; // URL to the weather icon

  Condition({
    required this.text,
    required this.icon,
  });

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}
