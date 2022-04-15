import 'package:flutter/material.dart';

class ClassAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ClassAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: AppBar(
        centerTitle: true,
        title: const Text('Classes'),
        backgroundColor: Colors.black,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class AssigmentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AssigmentAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black,
      bottom: TabBar(
        tabs: [
          Tab(text: 'Assigned'), 
          Tab(text: 'Returned')
          ]
          ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}