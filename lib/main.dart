import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:khel_darpan/screens/LoginPage.dart';
import 'package:khel_darpan/routesPage.dart'; // Import your MyHomePage

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print("Initialized");
  await Firebase.initializeApp();
  print("Initialized222222222");
  bool isUserLoggedIn =
      await checkUserLoggedIn(); // Check if the user is already signed in
  print("UserChecked");
  runApp(MyApp(isUserLoggedIn: isUserLoggedIn));
}

Future<bool> checkUserLoggedIn() async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? user = _auth.currentUser;
  return user != null; // Return true if the user is logged in, otherwise false
}

class MyApp extends StatelessWidget {
  final bool isUserLoggedIn;

  MyApp({required this.isUserLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isUserLoggedIn ? RoutesPage() : LoginPage(),
    );
  }
}
