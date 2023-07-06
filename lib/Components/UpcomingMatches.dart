import 'package:flutter/material.dart';
import 'package:khel_darpan/Components/Constants/constants.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Team Name"),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset('assets/flags/ind.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "09:00",
                style:
                    TextStyle(color: orangeColor, fontWeight: FontWeight.bold),
              ),
              Text(
                "30 OCT",
                style: TextStyle(
                  color: greyColor,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset('assets/flags/ind.png'),
          ),
          Text("Team Name"),
        ],
      ),
    );
  }
}
