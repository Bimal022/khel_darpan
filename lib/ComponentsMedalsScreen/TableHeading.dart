import 'package:flutter/material.dart';
import '../Components/Constants/constants.dart';

class TableHeading extends StatelessWidget {
  const TableHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          SizedBox(width: 8),
          Text("Position", style: tableHeadingTextStyle),
          SizedBox(width: 8),
          Text("Country", style: tableHeadingTextStyle),
          SizedBox(width: 8),
          Image.asset(
            "assets/medals/gold.png",
            width: 40,
            height: 40,
          ),
          SizedBox(width: 12),
          Image.asset(
            "assets/medals/silver.png",
            width: 40,
            height: 40,
          ),
          SizedBox(width: 8),
          Image.asset(
            "assets/medals/bronze.png",
            width: 40,
            height: 40,
          ),
          SizedBox(width: 14),
          Text(
            "Total",
            style: tableHeadingTextStyle,
          ),
        ],
      ),
    );
  }
}
