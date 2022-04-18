import 'package:flutter/material.dart';

class ClassAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ClassAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: AppBar(
        centerTitle: true,
        title: const Text('Daftar Kelas'),
        backgroundColor: Color(0xff6F73D2),
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
      backgroundColor: Color(0xff6F73D2),
      automaticallyImplyLeading: false,
      bottom: TabBar(
        tabs: [
          Tab(text: 'Ditugaskan'), 
          Tab(text: 'Dikumpulkan'),
          ]
          ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
