import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:khel_darpan/Components/Constants/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'LoginPage.dart';

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
  String name = loggedInUserName; // Default name
  String username = loggedInUserEmail.replaceAll(
      RegExp('@gmail.com'), ''); // Default username

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
        _fetchProfileDataFromFirestore();
      });
    }
  }

  // Firebase Firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Function to push profile data to Firestore
  Future<void> _pushProfileDataToFirestore() async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        // Document path for the user in Firestore
        final docPath = 'users/${currentUser.uid}';

        // Data to push to Firestore
        final userData = {
          'dp': selectedProfileIcon,
          'name': name,
          'username': username,
          'gender': selectedGender == Gender.Male ? 'Male' : 'Female',
          'bio': bio,
          'supporting_team': supportingTeam,
        };

        // Update the data in Firestore
        await _firestore.doc(docPath).set(userData);
      }
    } catch (error) {
      print('Firestore Data Push Error: $error');
    }
  }

  // Function to fetch profile data from Firestore
  Future<void> _fetchProfileDataFromFirestore() async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        // Document path for the user in Firestore
        final docPath = 'users/${currentUser.uid}';

        // Fetch the data from Firestore
        final docSnapshot = await _firestore.doc(docPath).get();

        // Update the state with the fetched data
        if (docSnapshot.exists) {
          final data = docSnapshot.data();
          setState(() {
            selectedProfileIcon = data?['dp'];
            name = data?['name'] ?? name;
            username = data?['username'] ?? username;
            selectedGender =
                data?['gender'] == 'Male' ? Gender.Male : Gender.Female;
            bio = data?['bio'] ?? bio;
            supportingTeam = data?['supporting_team'] ?? supportingTeam;
          });
        }
      }
    } catch (error) {
      print('Firestore Data Fetch Error: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchProfileDataFromFirestore();
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
                _pushProfileDataToFirestore();
                Navigator.pop(context); // Close the dialog after saving
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Function to handle logout
  Future<void> _handleLogout() async {
    try {
      await _googleSignIn.signOut(); // Sign out from Google
      await _auth.signOut(); // Sign out from Firebase Authentication

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } catch (error) {
      print('Logout Error: $error');
      // Display an error message to the user (you can use a Snackbar or showDialog).
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
                  activeColor: Color(0xFFB917D8),
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
                  activeColor: Color(0xFFB917D8),
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
              _showEditDialog('Edit Bio', bio, (value) {
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
              _showEditDialog('Edit Supporting Team', supportingTeam, (value) {
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
              _handleLogout();
            },
            child: Text('Logout'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFB917D8),
            ),
          ),
        ],
      ),
    );
  }
}
