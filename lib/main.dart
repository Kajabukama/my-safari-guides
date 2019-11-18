import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tour Guides',
      theme: ThemeData(
          primarySwatch: Colors.brown,
          canvasColor: Colors.white,
          backgroundColor: Colors.white,
          fontFamily: 'Cereal'),
      home: HomePage(title: 'Tour Guides'),
    );
  }
}
