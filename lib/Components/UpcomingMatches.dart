import 'package:flutter/material.dart';
import 'package:khel_darpan/Components/Constants/constants.dart';

class UpcomingEvents extends StatelessWidget {
  UpcomingEvents({
    Key? key,
    required this.teamName1,
    required this.flagPath1,
    required this.teamName2,
    required this.flagPath2,
  }) : super(key: key);

  final String teamName1;
  final String flagPath1;
  final String teamName2;
  final String flagPath2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: _buildTeamInfo(teamName1, flagPath1),
          ),
          Flexible(
            flex: 1,
            child: _buildDateTime(),
          ),
          Flexible(
            flex: 2,
            child: _buildTeamInfo(teamName2, flagPath2),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamInfo(String teamName, String flagPath) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset(flagPath),
        ),
        Container(
          child: Text(
            teamName,
            style: TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildDateTime() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "09:00",
          style: TextStyle(
            color: orangeColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "30 OCT",
          style: TextStyle(
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
