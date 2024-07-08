import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:weather/hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Weather App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Refresh");
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main container
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "300.65° F",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 32,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Rain",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // child: const Text("Container"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Weather Forecast",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            //Weather forecast cards
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForcecastItem(),
                  HourlyForcecastItem(),
                  HourlyForcecastItem(),
                  HourlyForcecastItem(),
                  HourlyForcecastItem(),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            const Text(
              "Additional Information",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // Additional Information
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    // width: 100,
                    child: Column(
                      children: [
                        Icon(
                          Icons.water_drop,
                          size: 38,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Humidity",
                          style: TextStyle(
                            fontSize: 24,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "94",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    // width: 100,
                    child: Column(
                      children: [
                        Icon(
                          Icons.air,
                          size: 38,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Wind Speed",
                          style: TextStyle(
                            fontSize: 24,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "7.76",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    // width: 100,
                    child: Column(
                      children: [
                        Icon(
                          Icons.beach_access,
                          size: 38,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Pressure",
                          style: TextStyle(
                            fontSize: 24,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1006",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
