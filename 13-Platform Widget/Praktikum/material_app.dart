import 'package:flutter/material.dart';
import './material_page.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 41, 40, 40)),
      home: Homepage(),
    );
  }
}