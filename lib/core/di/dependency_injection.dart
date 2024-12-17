import 'package:get_it/get_it.dart';
import 'package:weather_project/features/auth/data/repos/auth_repos.dart';
import 'package:weather_project/features/auth/data/services/firebase_auth_services.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Auth
  getIt.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
  getIt.registerLazySingleton<AuthRepos>(() => AuthRepos(getIt()));
  getIt.registerFactory<AuthCubit>(() => AuthCubit(getIt()));
}
