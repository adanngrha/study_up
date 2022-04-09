import 'package:flutter/material.dart';
import 'package:study_up/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Up',
      theme: ThemeData(
      ),
      home: Home(),
    );
  }
}
