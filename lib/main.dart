import 'package:flutter/material.dart';
import 'package:immune_monk/Getting%20Started/Get%20Started.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xff8BB381),
        fontFamily: 'Ubuntu'
      ),
      home: GetStarted(),
    );
  }
}