import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_project/core/routing/app_router.dart';
import 'package:weather_project/core/routing/routes.dart';
import 'package:weather_project/core/theme/app_color.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManager.primary,
          canvasColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.splashScreen,
      ),
    );
  }
}
