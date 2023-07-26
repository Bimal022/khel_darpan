import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const customNavigationBar({
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
          label: "Predict",
          icon: Icon(Icons.analytics_outlined),
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
