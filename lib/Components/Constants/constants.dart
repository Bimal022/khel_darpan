import 'package:flutter/material.dart';

late String loggedInUserName = "Jhon Doe";
late String loggedInUserEmail = "UserName";
//Buttons Color
Color buttonColor = Colors.white;
Color countryNameTextColor = Color(0xffB2B2B2);

//HomePage
Color backgroundColor = Color(0xf7dad6d6);

//Greish Color:
Color greyColor = Color(0xff909090);

//Orange Color:
Color orangeColor = Color(0xffFF7539);

//TestStyle for medals page table
const tableHeadingTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: Color(0xff909090),
);

final CustomTextStyle goldTextStyle = CustomTextStyle(color: Color(0xFFFFD700));
final CustomTextStyle silverTextStyle =
    CustomTextStyle(color: Color(0xFFBCC6CC));
final CustomTextStyle bronzeTextStyle =
    CustomTextStyle(color: Color(0xFFCD7F32));

class CustomTextStyle {
  final Color color;

  CustomTextStyle({required this.color});

  TextStyle get textStyle {
    return TextStyle(
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      // Add other properties you may need for the TextStyle
    );
  }
}
