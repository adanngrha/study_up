import 'package:flutter/material.dart';

class AssignmentPage extends StatefulWidget {
  AssignmentPage({Key? key}) : super(key: key);

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Assignments'),
    );
  }
}