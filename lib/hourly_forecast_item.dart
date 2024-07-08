import 'package:flutter/material.dart';

class HourlyForcecastItem extends StatelessWidget {
  const HourlyForcecastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Column(
          children: [
            Text(
              "09:00",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.cloud,
              size: 32,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "301.15",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
