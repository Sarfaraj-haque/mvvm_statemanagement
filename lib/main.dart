import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_statemanagement/constants/theme_file.dart';
// import 'package:mvvm_statemanagement/screens/fav_screen.dart';
// import 'package:mvvm_statemanagement/screens/movie_details_screen.dart';
import 'package:mvvm_statemanagement/screens/movies_screens.dart';
import 'package:mvvm_statemanagement/screens/splash_screen.dart';
import 'package:mvvm_statemanagement/services/init_get.dart';
import 'package:mvvm_statemanagement/services/navigation_service.dart';
// import 'package:mvvm_statemanagement/screens/fav_screen.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final navigationKey = NavigationService().navigatorKey;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeFile.lightTheme,
      // home: const SplashScreen(),
      home: const MoviesScreens(title: 'Flutter Demo Home Page'),
    );
  }
}
