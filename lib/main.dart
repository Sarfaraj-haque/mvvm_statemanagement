import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/theme_file.dart';
import 'package:mvvm_statemanagement/screens/fav_screen.dart';
// import 'package:mvvm_statemanagement/screens/movie_details_screen.dart';
// import 'package:mvvm_statemanagement/screens/movies_screens.dart';
// import 'package:mvvm_statemanagement/screens/fav_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeFile.lightTheme,
      home: const FavScreen(),
      // home: const MoviesScreens(title: 'Flutter Demo Home Page'),
    );
  }
}
