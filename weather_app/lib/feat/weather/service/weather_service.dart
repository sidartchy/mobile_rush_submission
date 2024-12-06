import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:mobile_rush/model/weather.model.dart';
import 'package:weather_app/feat/weather/data/weather_model.dart';

class WeatherService {
  final String apiUrl = 'https://mr-api-three.vercel.app/weather';

  Future<WeatherModel> fetchWeather() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      print(response.body);
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
