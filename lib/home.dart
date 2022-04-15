import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:study_up/appbar.dart';
import 'bottom_nav.dart';
import 'screens/class/class.dart';
import 'screens/assignment/assignment.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List appBar = [ClassAppBar(), AssigmentAppBar()];

  List screens = [
    const ClassScreen(),
    const AssignmentScreen(),
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar.elementAt(selectedIndex),
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
      ),
    );
  }
}
