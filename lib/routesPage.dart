import 'package:flutter/material.dart';
import 'Components/Constants/bottomNavigationBar.dart';
import 'screens/CalenderPage.dart';
import 'screens/HomePage.dart';
import 'screens/MedalsPage.dart';
import 'screens/ProfilePage.dart';

class RoutesPage extends StatefulWidget {
  @override
  _RoutesPageState createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
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
