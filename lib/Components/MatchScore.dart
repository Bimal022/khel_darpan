import 'package:flutter/material.dart';
import 'package:khel_darpan/Components/predictButton.dart';
import 'TeamnameAndScoreCard.dart';

class ScoreCard extends StatelessWidget {
  final String teamName1;
  final String teamName2;
  final String logoPath1;
  final String logoPath2;
  final int score1;
  final int score2;

  ScoreCard({
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
          children: [
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hockey",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Week 10",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TeamAndScoreCard(
                teamName1: teamName1,
                teamName2: teamName2,
                score1: score1,
                score2: score2),
            PredictButton(),
          ],
        ),
      ),
    );
  }
}
