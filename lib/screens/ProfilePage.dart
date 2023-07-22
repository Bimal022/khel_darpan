import 'package:flutter/material.dart';
import '../Components/Constants/constants.dart';

enum Gender { Male, Female }

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Gender selectedGender = Gender.Male; // Default to Male

  List<String> profilePictureIcons = List.generate(9, (index) {
    return 'assets/defaultprofilepics/defaultDP${index + 1}.png';
  });

  String selectedProfileIcon = 'assets/defaultprofilepics/defaultDP1.png';
  String supportingTeam = "Country Name";
  String bio = "Hey there! I am usign KhelDarpan";
  String name = 'John Doe'; // Default name
  String username = 'johndoe'; // Default username

  void _showProfilePictureMenu(BuildContext context) async {
    final icon = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(0, 100, 0, 0),
      items: profilePictureIcons.map((String icon) {
        return PopupMenuItem<String>(
          value: icon,
          child: Image.asset(icon, width: 100, height: 50),
        );
      }).toList(),
    );

    if (icon != null) {
      setState(() {
        selectedProfileIcon = icon;
      });
    }
  }

  void _showEditDialog(
      String title, String initialValue, Function(String) onSaved) {
    TextEditingController textEditingController =
        TextEditingController(text: initialValue);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: TextFormField(
            controller: textEditingController,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog without saving
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                onSaved(textEditingController.text);
                Navigator.pop(context); // Close the dialog after saving
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          GestureDetector(
            onTap: () {
              _showProfilePictureMenu(context);
            },
            child: Center(
              child: Hero(
                tag: 'profile_picture', // Unique tag for the Hero widget
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(selectedProfileIcon),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              _showEditDialog('Edit Name', name, (value) {
                setState(() {
                  name = value;
                });
              });
            },
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _showEditDialog('Edit Username', username, (value) {
                setState(() {
                  username = value;
                });
              });
            },
            child: Text(
              '@$username', // Display the user's username
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Gender'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio<Gender>(
                  value: Gender.Male,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                Text('Male'),
                Radio<Gender>(
                  value: Gender.Female,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                Text('Female'),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Bio'),
            subtitle: Text(bio), // Replace with the user's bio
            onTap: () {
              _showEditDialog('Edit Bio', 'I am a passionate Flutter developer',
                  (value) {
                setState(() {
                  bio = value;
                });
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text("Supporting Team"),
            subtitle:
                Text(supportingTeam), // Replace with the supporting team name
            onTap: () {
              _showEditDialog('Edit Supporting Team', 'Enter Country Name',
                  (value) {
                setState(() {
                  supportingTeam = value;
                });
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Change Password'),
            onTap: () {
              // Handle the change password action
            },
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              // Handle the logout action
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
