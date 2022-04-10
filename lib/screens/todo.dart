import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('To-Dos', style: TextStyle(fontFamily: 'Poppins', fontSize: 32.0)),
    );
  }
}