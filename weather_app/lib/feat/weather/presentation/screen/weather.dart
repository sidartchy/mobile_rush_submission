import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/feat/weather/data/weather_model.dart';
import 'package:weather_app/feat/weather/presentation/widgets/placesCard.dart';
import 'package:weather_app/feat/weather/presentation/widgets/weatherCard.dart';

class WeatherScreen extends StatefulWidget {
  final WeatherModel weather;
  const WeatherScreen({super.key, required this.weather});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Sunny Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.white,
                    ),
                    Text(
                      widget.weather.city.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      widget.weather.temperature.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 48.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        width: 1, // Line thickness
                        height: 80, // Line height
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.weather.condition.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.cloud,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Text(
                          'Friday, 6 December',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      'Feels like: ${widget.weather.temperature}'),
                ),
                SizedBox(
                  height: 5,
                ),
                WeatherCard(),

                SizedBox(height: 16.0),
                RichText(
                  text: TextSpan(
                      text: 'Extremely Sunny ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 22),
                      children: [
                        TextSpan(
                            text: 'Apply Sunscreen',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ))
                      ]),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended Places:',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.black45),
                    ),
                    Icon(Icons.arrow_circle_right_rounded)
                  ],
                ),
                SizedBox(height: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [PlaceCard(), PlaceCard(), PlaceCard()],
                ),
                SizedBox(height: 16.0),
                Text('Chances of rain:'),

                // Add rain probability graph/chart here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
