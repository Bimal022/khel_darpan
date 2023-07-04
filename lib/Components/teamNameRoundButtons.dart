import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final String buttonText;
  final String flagPath;

  RoundedButton(this.buttonText, this.flagPath);

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  Color buttonColor = Colors.white;
  Color countryNameTextColor = Color(0xffB2B2B2);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: ImageIcon(
                AssetImage(widget.flagPath),
                size: 24, // Increase the size of the image
              ),
            ),
            Text(
              widget.buttonText,
              style: TextStyle(
                color: countryNameTextColor,
                fontSize: 16, // Increase the size of the text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
