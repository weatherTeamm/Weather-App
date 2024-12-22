// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_reponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
      forecast: Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
      'current': instance.current.toJson(),
      'forecast': instance.forecast.toJson(),
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      temp_c: (json['temp_c'] as num).toDouble(),
      wind_kph: (json['wind_kph'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      precip_mm: (json['precip_mm'] as num).toDouble(),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'temp_c': instance.temp_c,
      'wind_kph': instance.wind_kph,
      'humidity': instance.humidity,
      'precip_mm': instance.precip_mm,
      'condition': instance.condition,
    };

Forecast _$ForecastFromJson(Map<String, dynamic> json) => Forecast(
      forecastday: (json['forecastday'] as List<dynamic>)
          .map((e) => ForecastDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'forecastday': instance.forecastday,
    };

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) => ForecastDay(
      date: json['date'] as String,
      day: Day.fromJson(json['day'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>)
          .map((e) => Hour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastDayToJson(ForecastDay instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'hour': instance.hour,
    };

Day _$DayFromJson(Map<String, dynamic> json) => Day(
      maxtemp_c: (json['maxtemp_c'] as num).toDouble(),
      mintemp_c: (json['mintemp_c'] as num).toDouble(),
      avgtemp_c: (json['avgtemp_c'] as num).toDouble(),
      daily_chance_of_rain: (json['daily_chance_of_rain'] as num).toDouble(),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtemp_c,
      'mintemp_c': instance.mintemp_c,
      'avgtemp_c': instance.avgtemp_c,
      'daily_chance_of_rain': instance.daily_chance_of_rain,
      'condition': instance.condition,
    };

Hour _$HourFromJson(Map<String, dynamic> json) => Hour(
      time: json['time'] as String,
      temp_c: (json['temp_c'] as num).toDouble(),
      wind_kph: (json['wind_kph'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HourToJson(Hour instance) => <String, dynamic>{
      'time': instance.time,
      'temp_c': instance.temp_c,
      'wind_kph': instance.wind_kph,
      'humidity': instance.humidity,
      'condition': instance.condition,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
      text: json['text'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
    };
