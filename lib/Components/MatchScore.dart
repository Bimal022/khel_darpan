import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  final String teamName1;
  final String teamName2;
  final String logoPath1;
  final String logoPath2;
  final int score1;
  final int score2;

  TeamCard({
    required this.teamName1,
    required this.teamName2,
    required this.logoPath1,
    required this.logoPath2,
    required this.score1,
    required this.score2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/sports/hockey.png',
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.purple,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Hockey",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Text(
              "Week10",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  teamName1,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Text(
                  '$score1 - $score2',
                  style: TextStyle(fontSize: 48, color: Colors.white),
                ),
                Text(
                  teamName2,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
