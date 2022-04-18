import 'package:flutter/material.dart';
import 'package:study_up/model/assigned_assignment.dart';

class DetailAssignedAssignment extends StatelessWidget {
  final AssignedAssignment assignment;
  const DetailAssignedAssignment({Key? key, required this.assignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailAssignedWeb(assignment: assignment);
      } else {
        return DetailAssignedMobile(assignment: assignment);
      }
    });
  }
}

class DetailAssignedMobile extends StatelessWidget {
  final AssignedAssignment assignment;
  const DetailAssignedMobile({Key? key, required this.assignment})
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
                  TurnButton(),
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

class DetailAssignedWeb extends StatefulWidget {
  final AssignedAssignment assignment;
  const DetailAssignedWeb({Key? key, required this.assignment})
      : super(key: key);

  @override
  State<DetailAssignedWeb> createState() => _DetailAssignedWebState();
}

class _DetailAssignedWebState extends State<DetailAssignedWeb> {
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
                  TurnButton(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                widget.assignment.course + ' (' + widget.assignment.room + ')',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text('Deadline ' + widget.assignment.due)),
            Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Text('Instruksi',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17))),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(widget.assignment.instructions)),
          ],
        ),
      ),
    );
  }
}

class TurnButton extends StatefulWidget {
  @override
  _TurnButtonState createState() => _TurnButtonState();
}

class _TurnButtonState extends State<TurnButton> {
  bool isNotTurned = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(fixedSize: const Size(120, 40), primary: Color(0xff6F73D2)), 
      onPressed: isNotTurned
          ? () {
              setState(() => isNotTurned = false);
            }
          : null,
      child: isNotTurned ? Text('Kumpulkan') : Text('Dikumpukan'),
    );
  }
}
