import 'package:flutter/material.dart';
import 'package:study_up/model/class.dart';

class DetailClass extends StatelessWidget {
  final Course course;
  const DetailClass({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailClassWeb(course: course);
      } else {
        return DetailClassMobile(course: course);
      }
    });
  }
}

// ===== DetailClassMobile =====
class DetailClassMobile extends StatelessWidget {
  final Course course;
  const DetailClassMobile({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// ===== DetailClassWeb =====
class DetailClassWeb extends StatelessWidget {
  final Course course;
  const DetailClassWeb({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
