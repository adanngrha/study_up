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
                        fixedSize: const Size(120, 40)),
                    onPressed: () {},
                    child: const Text('Kumpulkan'),
                  ),
                ],
              ),
              Container(
                  child: Text('Deadline ' + assignment.due)),
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
        child: Container(
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
                style: ElevatedButton.styleFrom(fixedSize: const Size(120, 40)),
                onPressed: () {},
                child: const Text('Kumpulkan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
