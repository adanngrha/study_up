import 'package:flutter/material.dart';
import 'package:study_up/model/class.dart';
import 'package:study_up/screens/class/detail_class.dart';

class ClassScreen extends StatelessWidget {
  const ClassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 600) {
        return const ClassScreenList();
      } else if (constraints.maxWidth <= 1200) {
        return const ClassScreenGrid(gridCount: 4);
      } else {
        return const ClassScreenGrid(gridCount: 6);
      }
    });
  }
}

// Class Screen Normal List View
class ClassScreenList extends StatelessWidget {
  const ClassScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Course course = courseList[index];
        return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailClass(course: course);
              }));
            },
            child: Card(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(course.imageAsset),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          course.name,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(course.day),
                      ],
                    ),
                  ),
                )
              ],
            )));
      },
      itemCount: courseList.length,
    );
  }
}

// Class Screen Grid List View
class ClassScreenGrid extends StatelessWidget {
  final int gridCount;
  const ClassScreenGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
