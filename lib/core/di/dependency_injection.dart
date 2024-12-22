import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_project/core/networking/dio_factory.dart';
import 'package:weather_project/features/auth/data/repos/auth_repos.dart';
import 'package:weather_project/features/auth/data/services/firebase_auth_services.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_cubit.dart';
import 'package:weather_project/features/home/data/api/home_api_services.dart';
import 'package:weather_project/features/home/data/repos/home_repo.dart';
import 'package:weather_project/features/home/logic/cubit/home_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Auth
  getIt.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
  getIt.registerLazySingleton<AuthRepos>(() => AuthRepos(getIt()));
  getIt.registerFactory<AuthCubit>(() => AuthCubit(getIt()));

  //Home
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
