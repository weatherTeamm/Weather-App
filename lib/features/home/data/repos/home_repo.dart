import 'package:weather_project/core/networking/api_error_handler.dart';
import 'package:weather_project/core/networking/api_result.dart';
import 'package:weather_project/features/home/data/api/home_api_constatnt.dart';
import 'package:weather_project/features/home/data/api/home_api_services.dart';
import 'package:weather_project/features/home/data/models/auto_complete_response.dart';
import 'package:weather_project/features/home/data/models/weather_reponse_model.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<WeatherResponse>> getWeather({
    required String location,
    required int days,
  }) async {
    try {
      final response = await _apiService.getForecast(
        apiKey: HomeApiConstatnt.apiKey,
        location: location,
        days: days,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<List<AutocompleteResponse>>> searchLocation(
      {String? search}) async {
    try {
      final response =
          await _apiService.searchLocations(HomeApiConstatnt.apiKey, search!);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
