import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomNavigation({Key? key, this.selectedIndex, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.class__rounded),
          label: 'Kelas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'Tugas',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: Color(0xFF6F73D2),
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
    );
  }
}
