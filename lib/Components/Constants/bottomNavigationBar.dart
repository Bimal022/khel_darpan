import 'package:flutter/material.dart';

class apnabottomNavigationBar extends StatefulWidget {
  late String navBarText = "";
  @override
  State<apnabottomNavigationBar> createState() =>
      _apnabottomNavigationBarState();
}

class _apnabottomNavigationBarState extends State<apnabottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          widget.navBarText = ".";
        });
      },
      items: [
        BottomNavigationBarItem(
          label: widget.navBarText,
          icon: ImageIcon(
            AssetImage("assets/icons/navigationIcons/home.png"),
          ),
        ),
        BottomNavigationBarItem(
          label: widget.navBarText,
          icon: ImageIcon(
            AssetImage("assets/icons/navigationIcons/calendar.png"),
          ),
        ),
        BottomNavigationBarItem(
          label: widget.navBarText,
          icon: ImageIcon(
            AssetImage("assets/icons/navigationIcons/analysis.png"),
          ),
        ),
        BottomNavigationBarItem(
          label: widget.navBarText,
          icon: ImageIcon(
            AssetImage("assets/icons/navigationIcons/profile.png"),
          ),
        ),
      ],
    );
  }
}
