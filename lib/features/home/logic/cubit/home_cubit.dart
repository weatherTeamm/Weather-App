import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_project/features/home/data/models/auto_complete_response.dart';
import 'package:weather_project/features/home/data/repos/home_repo.dart';
import 'package:weather_project/features/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  final HomeRepo _homeRepo;

  Future<void> getWeather({required String location, required int days}) async {
    emit(const HomeState.gteWeatherLoading());
    final response = await _homeRepo.getWeather(location: location, days: days);
    response.mapOrNull(
      success: (value) => emit(HomeState.gteWeatherSuccess(value.data)),
      failure: (value) => emit(HomeState.gteWeatherFailure(
          value.errorHandler.apiErrorModel.message!)),
    );
  }

  Future<List<AutocompleteResponse>> searchWeather(String pattern,
      {required String location}) async {
    emit(const HomeState.searchLocationLoading());
    final response =
        await _homeRepo.searchLocation(search: pattern); // Using `pattern` here
    return response.mapOrNull(
      success: (value) =>
          value.data, // Assuming `data` is List<AutocompleteResponse>
      failure: (value) {
        emit(HomeState.searchLocationFailure(
            value.errorHandler.apiErrorModel.message!));
        return [];
      },
    )!;
  }

  Future<void> getCurrentLocation() async {
    emit(const HomeState.gteWeatherLoading());
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    Position position = await Geolocator.getCurrentPosition();
    await getWeather(
        location: "${position.latitude},${position.longitude}", days: 3);
  }

  TextEditingController searchController = TextEditingController();
}
