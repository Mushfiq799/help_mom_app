import 'package:flutter/material.dart';
import 'login_page.dart'; // Update this line to the correct path

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(
        backgroundColor: Colors.black,
        appbar: AppBar(),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.white, // Replace with your desired background color
      ),
      // Use LoginPage as a constructor
    );
  }
}
