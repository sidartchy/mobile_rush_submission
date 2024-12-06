import 'package:flutter/material.dart';
import 'package:weather_app/feat/weather/presentation/widgets/conditionCard.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        // child: Padding(padding: EdgeInsets.all()),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  ConditionCard(
                    icon: Icon(Icons.water),
                    mainText: '27 %',
                    subText: 'Precipitation',
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  ConditionCard(
                    icon: Icon(Icons.speed),
                    mainText: '27 Km/hr',
                    subText: 'Wind Speed',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ConditionCard(
                    icon: Icon(Icons.zoom_in_map_sharp),
                    mainText: '760 mm',
                    subText: 'Atm Pressure',
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  ConditionCard(
                    icon: Icon(Icons.dew_point),
                    mainText: '35%',
                    subText: 'Humidity',
                  ),
                ],
              ),
            ],
          ),
        ),

        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 160, 153, 153)
                .withOpacity(0.1), // Shadow color
            blurRadius: 10, // Spread of shadow
            offset: Offset(0, 5), // Position of shadow (x, y)
          ),
        ]),
        height: 180,
      ),
    );
  }
}
