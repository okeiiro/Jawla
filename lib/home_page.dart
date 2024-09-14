import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentSheetSize = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.black.withOpacity(0.5),

        child: Image.asset(
          'assets/Groupe11.png', // Replace with your image
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
