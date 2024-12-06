import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/feat/weather/bloc/weather_bloc.dart';
import 'package:weather_app/feat/weather/presentation/screen/home.dart';
import 'package:weather_app/feat/weather/service/weather_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
            // bodyLarge: TextStyle(color: Colors.white),
            // bodyMedium: TextStyle(color: Colors.white),
            // bodySmall: TextStyle(color: Colors.white),
            // headlineLarge: TextStyle(color: Colors.white),
            // headlineMedium: TextStyle(color: Colors.white),
            // headlineSmall: TextStyle(color: Colors.white),
            // titleLarge: TextStyle(color: Colors.white),
            // titleMedium: TextStyle(color: Colors.white),
            // titleSmall: TextStyle(color: Colors.white),
            // labelLarge: TextStyle(color: Colors.white),
            // labelMedium: TextStyle(color: Colors.white),
            // labelSmall: TextStyle(color: Colors.white),
            ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
