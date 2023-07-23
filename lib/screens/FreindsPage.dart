import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FriendsPage extends StatelessWidget {
  final Map<String, dynamic> userData;

  FriendsPage({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black87,
              Colors.black87.withOpacity(0.8),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(userData['dp']),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                userData['name'],
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Roboto', // Replace with your desired font family
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                '@${userData['username']}',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[300],
                  fontFamily: 'Roboto', // Replace with your desired font family
                ),
              ),
            ),
            SizedBox(height: 24),
            _buildInfoRow(
              icon: FontAwesomeIcons
                  .venusMars, // Replace with the desired Font Awesome icon
              label: 'Gender:',
              value: userData['gender'],
            ),
            _buildInfoRow(
              icon: FontAwesomeIcons
                  .infoCircle, // Replace with the desired Font Awesome icon
              label: 'Bio:',
              value: userData['bio'],
            ),
            _buildInfoRow(
              icon: FontAwesomeIcons
                  .users, // Replace with the desired Font Awesome icon
              label: 'Supporting Team:',
              value: userData['supporting_team'],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(
      {required IconData icon, required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 16,
          ),
          SizedBox(width: 8),
          Flexible(
            child: Text(
              '$label $value',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Roboto', // Replace with your desired font family
              ),
            ),
          ),
        ],
      ),
    );
  }
}
