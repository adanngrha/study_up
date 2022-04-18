import 'package:flutter/material.dart';
import 'package:study_up/model/assigned_assignment.dart';
import 'package:study_up/model/turned_assignment.dart';
import 'package:study_up/screens/assignment/detail_assigned_assignment.dart';
import 'package:study_up/screens/assignment/detail_returned_assignment.dart';

class AssignmentScreen extends StatefulWidget {
  const AssignmentScreen({Key? key}) : super(key: key);

  @override
  State<AssignmentScreen> createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        // Assigned Tabview
        ListView.builder(
          itemBuilder: (context, index) {
            final AssignedAssignment assignment = assignedAssignmentList[index];
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailAssignedAssignment(assignment: assignment);
                  }));
                },
                child: Card(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  assignment.course +
                                      ' (' +
                                      assignment.room +
                                      ')',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  assignment.title,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text('Deadline ' + assignment.due),
                              ],
                            ),
                          ),
                        )
                      ],
                    )));
          },
          itemCount: assignedAssignmentList.length,
        ),

        // Turned Tabview
        ListView.builder(
          itemBuilder: (context, index) {
            final TurnedAssignment assignment = turnedAssignmentList[index];
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailTurnedAssignment(assignment: assignment);
                  }));
                },
                child: Card(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  assignment.course +
                                      ' (' +
                                      assignment.room +
                                      ')',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300),
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        assignment.title,
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      ElevatedButton(
                                          onPressed: null,
                                          child: Text('Dikumpulkan'))
                                    ]),
                                Text('Deadline ' + assignment.due),
                              ],
                            ),
                          ),
                        )
                      ],
                    )));
          },
          itemCount: turnedAssignmentList.length,
        ),
      ],
    );
  }
}
