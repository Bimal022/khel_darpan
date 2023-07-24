import 'package:flutter/material.dart';

import '../Components/Constants/constants.dart';
import '../Components/UpcomingMatches.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 50, left: 8, right: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text(
                "Calendar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    UpcomingEvents(
                      teamName1: "India",
                      flagPath1: "assets/flags/india.png",
                      teamName2: "Australia",
                      flagPath2: "assets/flags/aus.png",
                    ),
                    UpcomingEvents(
                      teamName1: "China",
                      flagPath1: "assets/flags/china.png",
                      teamName2: "France",
                      flagPath2: "assets/flags/france.png",
                    ),
                    UpcomingEvents(
                      teamName1: "Germany",
                      flagPath1: "assets/flags/germany.png",
                      teamName2: "Australia",
                      flagPath2: "assets/flags/greatbritain.png",
                    ),
                    UpcomingEvents(
                      teamName1: "Italy",
                      flagPath1: "assets/flags/italy.png",
                      teamName2: "Australia",
                      flagPath2: "assets/flags/aus.png",
                    ),
                    UpcomingEvents(
                      teamName1: "India",
                      flagPath1: "assets/flags/india.png",
                      teamName2: "Japan",
                      flagPath2: "assets/flags/japan.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
