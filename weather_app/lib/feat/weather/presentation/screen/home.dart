import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/feat/weather/bloc/weather_bloc.dart';
import 'package:weather_app/feat/weather/presentation/screen/weather.dart';
import 'package:weather_app/feat/weather/presentation/widgets/placesCard.dart';
import 'package:weather_app/feat/weather/presentation/widgets/weatherCard.dart';
import 'package:weather_app/feat/weather/service/weather_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late WeatherBloc weatherBloc;
  @override
  void initState() {
    // TODO: implement initState
    // super.initState();
    super.initState();
    weatherBloc = WeatherBloc(WeatherService());
    weatherBloc.add(WeatherInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    log('Home screen');
    return BlocProvider<WeatherBloc>(
      create: (context) => weatherBloc,
      child: Scaffold(
        body: SafeArea(child:
            BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
          if (state is WeatherLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoaded) {
            return WeatherScreen(weather: state.weather);
          } else if (state is WeatherError) {
            return Center(child: Text('Error:}'));
          } else {
            return const SizedBox.shrink();
          }
        })),
      ),
    );
  }
}
