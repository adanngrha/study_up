import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomNavigation({Key? key, this.selectedIndex, required this.onClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.class__rounded),
        label: 'Class',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assignment),
        label: 'Assignment',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.toc_outlined),
        label: 'To-Do',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month_rounded),
        label: 'Event',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.note_alt_rounded),
        label: 'Notes',
      ),
    ],
    currentIndex: selectedIndex,
    onTap: onClicked,
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.black,
    showUnselectedLabels: true,
    
    );
  }
}
