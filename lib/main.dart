import 'package:flutter/material.dart';
import 'home.dart'; // Import the Home Page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode Scanner App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(), // Set HomePage as the initial page
    );
  }
}
