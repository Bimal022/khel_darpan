import 'package:flutter/material.dart';
import 'package:khel_darpan/Components/Constants/constants.dart';

class PredictButton extends StatefulWidget {
  @override
  State<PredictButton> createState() => _PredictButtonState();
}

class _PredictButtonState extends State<PredictButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 8.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            // Change the button color when clicked
            if (buttonColor == Colors.white) {
              buttonColor = Color(0XFFFF2882);
              countryNameTextColor = Colors.white;
            } else {
              buttonColor = Colors.white;
              countryNameTextColor = Color(0xffB2B2B2);
            }
          });
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue,
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(
          "Predict",
          style: TextStyle(
            color: countryNameTextColor,
          ),
        ),
      ),
    );
  }
}
