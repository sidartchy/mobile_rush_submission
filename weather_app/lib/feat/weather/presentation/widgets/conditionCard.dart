import 'package:flutter/material.dart';

class ConditionCard extends StatelessWidget {
  final Icon icon;
  final String mainText;
  final String subText;
  const ConditionCard(
      {super.key,
      required this.icon,
      required this.mainText,
      required this.subText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainText,
              style: TextStyle(fontSize: 22),
            ),
            Text(
              subText,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        )
      ],
    );
  }
}
