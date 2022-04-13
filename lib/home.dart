import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:study_up/screens/profile.dart';
import 'bottom_nav.dart';
import 'screens/class/class.dart';
import 'screens/assignment.dart';
import 'screens/todo.dart';
import 'screens/notes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List screens = [
    const ClassScreen(),
    const AssignmentScreen(),
    const ToDoScreen(),
    const NotesScreen(),
    const ProfileScreen()
  ];

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
        title: const Text('Study Up'),
        backgroundColor: Colors.black,
      ),
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.note_add),
            label: 'Add a Note',
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Add a Task',
          ),
        ],
      ),
    );
  }
}
