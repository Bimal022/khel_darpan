import 'package:flutter/material.dart';
import '../Components/Constants/constants.dart';

class TableContent extends StatelessWidget {
  const TableContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      width: 400,
      height: 40,
      decoration: ShapeDecoration(
        color: Color(0xFFF6F6F8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 10),
            Text("1", style: medalsTableTextStyle),
            Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/flags/indcolor.png",
                    width: 40,
                    height: 40,
                  ),
                  Text("India", style: medalsTableTextStyle),
                ],
              ),
            ),
            Text("1", style: medalsTableTextStyle),
            SizedBox(width: 6),
            Text("1", style: medalsTableTextStyle),
            SizedBox(width: 6),
            Text("1", style: medalsTableTextStyle),
            SizedBox(width: 6),
            Text(
              "0",
              style: medalsTableTextStyle,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
