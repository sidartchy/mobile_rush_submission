import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text('Kathmandu'),
        subtitle: Text('15 km'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.dd74c0df361f5f2590002752ac99bbf9?rik=5apOZuRBEj13Fg&pid=ImgRaw&r=0')),
        ),
      ),
    );
  }
}
