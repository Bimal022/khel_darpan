import 'package:flutter/material.dart';
import 'package:khel_darpan/Components/Constants/constants.dart';
import 'package:khel_darpan/Components/ScoreCard.dart';
import 'package:khel_darpan/Components/RoundedButton.dart';
import 'package:khel_darpan/screens/CalenderPage.dart';
import 'package:khel_darpan/screens/SearchPage.dart';
import '../Components/Constants/bottomNavigationBar.dart';
import '../Components/UpcomingMatches.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/ring.png'),
                    ),
                    const Text(
                      'Live Score',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchPage()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.all(16.0),
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
              const ScoreCards(),
              Container(
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Matches",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: greyColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: orangeColor,
                        ),
                      ),
                    ),
                  ],
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
      ),
    );
  }
}
