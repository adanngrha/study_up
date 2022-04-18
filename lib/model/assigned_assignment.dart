import 'package:flutter/material.dart';
import 'package:study_up/model/class.dart';

class AssignedAssignment {
  String course;
  String title;
  String room;
  String instructions;
  String due;

  AssignedAssignment(
      {required this.course,
      required this.title,
      required this.instructions,
      required this.due,
      required this.room});
}

var assignedAssignmentList = [
  AssignedAssignment(
      course: courseList[3].name,
      title: 'Project Java GUI',
      room: courseList[3].room,
      instructions: 'Kerjakan Semuanya',
      due: '17 September 2022'),
  AssignedAssignment(
      course: courseList[5].name,
      title: 'Resume AI',
      room: courseList[5].room,
      instructions: 'Kerjakan Semuanya',
      due: '10 Agustus 2022'),
  AssignedAssignment(
      course: courseList[4].name,
      title: 'Project Web',
      room: courseList[4].room,
      instructions: 'Kerjakan Semuanya',
      due: '30 November 2022')
];
