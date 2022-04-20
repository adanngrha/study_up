import 'package:flutter/material.dart';
import 'package:study_up/model/turned_assignment.dart';

class DetailTurnedAssignment extends StatelessWidget {
  final TurnedAssignment assignment;
  const DetailTurnedAssignment({Key? key, required this.assignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailTurnedWeb(assignment: assignment);
      } else {
        return DetailTurnedMobile(assignment: assignment);
      }
    });
  }
}

class DetailTurnedMobile extends StatelessWidget {
  final TurnedAssignment assignment;
  const DetailTurnedMobile({Key? key, required this.assignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff6F73D2),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(assignment.course + ' (' + assignment.room + ')')),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    assignment.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 40)),
                    onPressed: null,
                    child: const Text('Dikumpulkan'),
                  ),
                ],
              ),
              Container(child: Text('Deadline ' + assignment.due)),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('Instruksi',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17))),
              Container(child: Text(assignment.instructions)),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailTurnedWeb extends StatelessWidget {
  final TurnedAssignment assignment;
  const DetailTurnedWeb({Key? key, required this.assignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, size: 18),
                    label: Text("Kembali"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 40)),
                    onPressed: null,
                    child: const Text('Dikumpulkan'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                assignment.course + ' (' + assignment.room + ')',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text('Deadline ' + assignment.due)),
            Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Text('Instruksi',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17))),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(assignment.instructions)),
          ],
        ),
      ),
    );
  }
}