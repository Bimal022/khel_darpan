import 'package:flutter/material.dart';
import 'package:khel_darpan/Components/Constants/constants.dart';

class RoundedButton extends StatefulWidget {
  final String buttonText;
  final String flagPath;

  RoundedButton(this.buttonText, this.flagPath);

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 8.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue,
          backgroundColor: isSelected ? Color(0XFFFF2882) : Colors.white,
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
                color: isSelected ? Colors.white : Color(0xffB2B2B2),
                fontSize: 16, // Increase the size of the text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
