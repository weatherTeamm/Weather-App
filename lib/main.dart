import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weather_project/core/di/dependency_injection.dart';
import 'package:weather_project/core/helper/cache_helper.dart';
import 'package:weather_project/core/routing/app_router.dart';
import 'package:weather_project/firebase_options.dart';
import 'package:weather_project/weather_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetIt();
  runApp(WeatherApp(
    appRouter: AppRouter(),
  ));
}
