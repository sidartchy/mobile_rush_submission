import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/feat/weather/data/weather_model.dart';
import 'package:weather_app/feat/weather/service/weather_service.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherService weatherService;
  WeatherBloc(this.weatherService) : super(WeatherInitial()) {
    on<WeatherInitialEvent>(_onWeatherIntitialEvent);
  }

  FutureOr<void> _onWeatherIntitialEvent(
      WeatherInitialEvent event, Emitter<WeatherState> emit) async {
    emit(WeatherLoading());
    try {
      final WeatherModel response = await weatherService.fetchWeather();
      log('response ayo');
      log(response.toString());
      emit(WeatherLoaded(weather: response));
    } catch (e) {
      emit(WeatherError(e.toString()));
    }
  }
}
