import 'package:flutter/material.dart';

class apnabottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const apnabottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: ImageIcon(
            AssetImage("assets/icons/navigationIcons/home.png"),
          ),
        ),
        BottomNavigationBarItem(
          label: "Calender",
          icon: ImageIcon(
            AssetImage("assets/icons/navigationIcons/calendar.png"),
          ),
        ),
        BottomNavigationBarItem(
          label: "Medals",
          icon: ImageIcon(
            AssetImage("assets/icons/navigationIcons/analysis.png"),
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: ImageIcon(
            AssetImage("assets/icons/navigationIcons/profile.png"),
          ),
        ),
      ],
    );
  }
}
