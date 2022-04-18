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
      instructions:
          'Ut consequat takimata erat sanctus invidunt dolor et ut erat nonumy dolor elitr dolore duo eros takimata. Takimata lorem kasd ea sea vero nobis nonumy dolore vero enim sed. Ea illum dolor. Lorem amet dolore clita ut tempor. Lorem et invidunt dolore ut aliquip dolore et at kasd vero vel rebum ea sadipscing labore. Imperdiet amet zzril tempor sea tempor in ipsum invidunt lorem. Elitr sed et tempor clita ex enim est eirmod wisi. Et et gubergren dolor dolore sed dolor exerci takimata feugait praesent tempor duo et. Sanctus vel invidunt erat ea nonummy augue sit magna ut cum. Qui in et ullamcorper. Diam eirmod ad. Diam sanctus liber ut labore et sit est at ut et ea sed congue dolore. No diam eum at at aliquyam dolor dolor lobortis nobis rebum sanctus eirmod odio ut.',
      due: '10 September 2022'),
  TurnedAssignment(
      course: courseList[6].name,
      title: 'Tugas 4',
      room: courseList[5].room,
      instructions:
          'Duo sed laoreet ea sed aliquyam aliquyam et sit. Rebum sanctus eos erat amet amet. Tempor facilisi et et ipsum dolor eirmod elitr feugiat dolore sit exerci ea tempor sed erat. Nonumy ut elitr accusam aliquyam takimata eu euismod vel vero eirmod labore. Et justo dignissim sit qui et in est ipsum. Ipsum takimata dolore ipsum erat tempor dolor. Ut labore velit nonumy sadipscing dolor amet diam labore no minim illum eos. Sea ut eu dolore lorem commodo duo no velit. Ea ipsum nonumy autem enim at dolor dolore justo et et amet amet et amet gubergren qui stet justo. Velit diam sea ipsum et stet sit ipsum laoreet. Qui voluptua nonumy velit dolor in sanctus sit facilisi at takimata dolores feugiat lorem lorem takimata nonumy. Odio nibh et eos nonumy sadipscing amet dolore sit et magna tempor ullamcorper lorem te hendrerit ea consetetur. Tincidunt euismod lorem aliquam et est amet ut at. Est lorem consetetur eos hendrerit diam sadipscing consetetur dolor invidunt. Sed iusto amet esse justo lorem lorem ipsum et eirmod qui est et erat invidunt et takimata. Enim amet molestie lorem consetetur diam dolores est illum stet diam et sed eirmod sea in. Accusam diam tempor stet dolor et accusam praesent praesent invidunt dolores at. Diam amet tempor amet consequat elitr.',
      due: '10 September 2022')
];
