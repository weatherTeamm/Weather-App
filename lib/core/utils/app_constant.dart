import 'package:weather_project/core/helper/cache_helper.dart';

abstract class AppConstants {
  static String savedToken = CacheHelper.getData(key: 'token');
}
