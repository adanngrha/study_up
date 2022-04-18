import 'package:flutter/material.dart';
import 'package:study_up/model/class.dart';

class TurnedAssignment {
  String course;
  String title;
  String room;
  String instructions;
  String due;

  TurnedAssignment(
      {required this.course,
      required this.title,
      required this.room,
      required this.instructions,
      required this.due});
}

var turnedAssignmentList = [
  TurnedAssignment(
      course: courseList[9].name,
      title: 'Tugas 3',
      room: courseList[5].room,
      instructions: 'Kerjakan Semuanya',
      due: '10 September 2022'),
  TurnedAssignment(
      course: courseList[6].name,
      title: 'Tugas 4',
      room: courseList[5].room,
      instructions: 'Kerjakan Semuanya',
      due: '10 September 2022')
];
