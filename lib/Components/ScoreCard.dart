import 'package:flutter/material.dart';
import 'package:khel_darpan/Components/MatchScore.dart';

class ScoreCards extends StatelessWidget {
  const ScoreCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ScoreCard(
            teamName1: 'India',
            teamName2: 'Pakistan',
            logoPath1: 'assets/flags/ind.png',
            logoPath2: 'assets/flags/ind.png',
            score1: 10,
            score2: 2,
          ),
          ScoreCard(
            teamName1: 'India',
            teamName2: 'Pakistan',
            logoPath1: 'assets/flags/ind.png',
            logoPath2: 'assets/flags/ind.png',
            score1: 10,
            score2: 2,
          ),
          ScoreCard(
            teamName1: 'India',
            teamName2: 'Pakistan',
            logoPath1: 'assets/flags/ind.png',
            logoPath2: 'assets/flags/ind.png',
            score1: 10,
            score2: 2,
          ),
        ],
      ),
    );
  }
}
