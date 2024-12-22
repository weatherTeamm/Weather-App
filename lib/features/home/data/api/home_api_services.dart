import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:weather_project/features/home/data/api/home_api_constatnt.dart';
import 'package:weather_project/features/home/data/models/auto_complete_response.dart';
import 'package:weather_project/features/home/data/models/weather_reponse_model.dart';

part 'home_api_services.g.dart';

@RestApi(baseUrl: HomeApiConstatnt.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(HomeApiConstatnt.forecast)
  Future<WeatherResponse> getForecast({
    @Query("key") required String apiKey, // WeatherAPI key
    @Query("q") required String location, // Latitude, Longitude, or city name
    @Query("days") required int days, // Number of forecast days
  });

  // Search location autocomplete
  @GET(HomeApiConstatnt.search)
  Future<List<AutocompleteResponse>> searchLocations(
    @Query("key") String apiKey, // Your API key
    @Query("q") String query, // Search query (e.g., city name)
  );
}
