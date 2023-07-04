import 'package:flutter/material.dart';

class TeamAndScoreCard extends StatelessWidget {
  const TeamAndScoreCard({
    super.key,
    required this.teamName1,
    required this.teamName2,
    required this.score1,
    required this.score2,
  });

  final String teamName1;
  final String teamName2;
  final int score1;
  final int score2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child:
                    ClipOval(child: Image.asset('assets/flags/indcolor.png')),
              ),
            ),
            Text(
              teamName1,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$score1 : $score2",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(0.3),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 12,
              ),
              child: Text(
                "30",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child:
                    ClipOval(child: Image.asset('assets/flags/indcolor.png')),
              ),
            ),
            Text(
              teamName2,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
