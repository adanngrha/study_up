import 'package:flutter/material.dart';
import 'bottom_nav.dart';
import 'screens/class.dart';
import 'screens/assignment.dart';
import 'screens/todo.dart';
import 'screens/schedule.dart';
import 'screens/notes.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List screens = [ClassPage(), AssignmentPage(), ToDoPage(), SchedulePage(), NotesPage()];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Study Up'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: screens.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
    );
  }
}
