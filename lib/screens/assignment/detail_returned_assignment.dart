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

class DetailTurnedWeb extends StatefulWidget {
  final TurnedAssignment assignment;
  const DetailTurnedWeb({Key? key, required this.assignment}) : super(key: key);

  @override
  State<DetailTurnedWeb> createState() => _DetailTurnedWebState();
}

class _DetailTurnedWebState extends State<DetailTurnedWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
              widget.assignment.course + ' (' + widget.assignment.room + ')')),
    );
  }
}
