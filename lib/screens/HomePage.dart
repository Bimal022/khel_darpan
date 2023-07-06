import 'package:flutter/material.dart';
import 'package:khel_darpan/Components/Constants/constants.dart';
import 'package:khel_darpan/Components/ScoreCard.dart';
import 'package:khel_darpan/Components/RoundedButton.dart';

import '../Components/UpcomingMatches.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/ring.png'),
                    ),
                    Text(
                      'Live Score',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Perform search action
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                padding: EdgeInsets.all(16.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    RoundedButton('India', 'assets/flags/ind.png'),
                    RoundedButton('Pakistan', 'assets/flags/ind.png'),
                    RoundedButton('Button 3', 'assets/flags/ind.png'),
                    RoundedButton('Button 4', 'assets/flags/ind.png'),
                    RoundedButton('Button 5', 'assets/flags/ind.png'),
                  ],
                ),
              ),
              /*Score And Prediction Card*/
              ScoreCards(),
              Container(
                height: 300,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      UpcomingEvents(),
                      UpcomingEvents(),
                      UpcomingEvents(),
                      UpcomingEvents(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
