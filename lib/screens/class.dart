import 'package:flutter/material.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({Key? key}) : super(key: key);

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Classes',
          style: TextStyle(fontFamily: 'Poppins', fontSize: 32.0)),
    );
  }
}