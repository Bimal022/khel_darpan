import 'package:flutter/material.dart';
import 'package:khel_darpan/screens/CalenderPage.dart';
import 'package:khel_darpan/screens/HomePage.dart';
import 'package:khel_darpan/screens/LoginPage.dart';
import 'package:khel_darpan/screens/MedalsPage.dart';
import 'package:khel_darpan/screens/ProfilePage.dart';
import 'package:khel_darpan/screens/SignUpPage.dart';
import 'Components/Constants/bottomNavigationBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    CalenderPage(),
    MedalsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: apnabottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
