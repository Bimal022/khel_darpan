import 'package:flutter/material.dart';
import 'package:khel_darpan/screens/HomePage.dart';
import 'package:khel_darpan/screens/MedalsPage.dart';
import 'Components/Constants/bottomNavigationBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedalsPage(),
    );
  }
}
