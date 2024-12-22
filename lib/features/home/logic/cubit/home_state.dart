import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_project/features/home/data/models/auto_complete_response.dart';
import 'package:weather_project/features/home/data/models/weather_reponse_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.gteWeatherLoading() = GetWeatherLoading;

  const factory HomeState.gteWeatherSuccess(WeatherResponse weatherResponse) =
      GetWeatherSuccess;

  const factory HomeState.gteWeatherFailure(String error) = GetWeatherFailure;

  const factory HomeState.searchLocationLoading() = SearchLocationLoading;

  const factory HomeState.searchLocationSuccess(
      List<AutocompleteResponse> auto) = SearchLocationSuccess;

  const factory HomeState.searchLocationFailure(String error) =
      SearchLocationFailure;
}
