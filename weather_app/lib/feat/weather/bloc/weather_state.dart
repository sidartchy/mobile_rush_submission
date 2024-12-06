part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherLoaded extends WeatherState {
  final WeatherModel weather;

  WeatherLoaded({required this.weather}); // WeatherModel is a model class
}

final class WeatherError extends WeatherState {
  final String message;

  WeatherError(this.message);
}
