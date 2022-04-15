import 'package:flutter/material.dart';

class AssignmentScreen extends StatefulWidget {
  const AssignmentScreen({Key? key}) : super(key: key);

  @override
  State<AssignmentScreen> createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(
          child: ListView(
            children: [
              Card(
                child: ListTile(
                  title: Text('Tugas 1'),
                  subtitle: Text('Pengerjaan wkwkwkw'),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Text('Screen 2'),
        ),
      ],
    );
  }
}
