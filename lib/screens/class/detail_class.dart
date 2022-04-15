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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(course.imageAsset),
              // Nama
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  course.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Baris Info
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        Text(course.day),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        Text(
                          'Kelas ' + course.room,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        Text(course.time),
                      ],
                    ),
                  ],
                ),
              ),
              // Deskripsi
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  course.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ===== DetailClassWeb =====
class DetailClassWeb extends StatefulWidget {
  final Course course;
  const DetailClassWeb({Key? key, required this.course}) : super(key: key);

  @override
  State<DetailClassWeb> createState() => _DetailClassWebState();
}

class _DetailClassWebState extends State<DetailClassWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.course.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                        child: Card(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: Text(
                                widget.course.name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: <Widget>[
                                    Center(child: Text(widget.course.day))
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Center(
                                        child: Text(
                                            'Kelas ' + widget.course.room,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)))
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Center(child: Text(widget.course.time))
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                widget.course.description,
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                            Container(
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
