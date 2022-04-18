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
      instructions:
          'Kasd sea tempor vulputate gubergren takimata cum eirmod et nisl duis dolores justo liber duo at facilisis minim lobortis. Et accumsan et autem magna vero. Est aliquyam takimata justo dolor illum dolor augue et dolore duo. Praesent ut diam eos invidunt ex est sea lobortis consetetur suscipit ut stet dolores lorem. Consequat tempor eos feugait velit et ipsum elitr. Magna consetetur et ipsum takimata duo nonumy veniam voluptua. Et sed amet minim erat dolor et tempor kasd accumsan sed ipsum qui ea nihil kasd clita dolores. Ipsum dolores liber duis lorem gubergren consetetur eirmod sed vel no et in. Diam in augue dolor diam consetetur amet et sed velit duo nisl sed et blandit nonumy eum facilisi molestie. Nisl vero erat enim dignissim nam justo sanctus no no odio et volutpat eirmod gubergren kasd lorem sadipscing. Elitr sadipscing dolor eirmod justo sed. Magna qui lobortis sit et ea nibh. Elit et sadipscing et dolores labore at nostrud veniam in ea. Ut diam lorem facilisi diam accusam. Nonummy no sit ea. Invidunt nonumy dolore amet sit vero iriure duo feugiat consetetur nulla diam dolor consequat sadipscing accusam illum minim. Aliquam eirmod cum kasd. Hendrerit stet diam rebum praesent ipsum facilisis eu. Dolore ipsum kasd consetetur at eros.',
      due: '10 September 2022'),
  AssignedAssignment(
      course: courseList[5].name,
      title: 'Resume AI',
      room: courseList[5].room,
      instructions:
          'Consetetur dolore sea esse invidunt esse. Vel ea invidunt sadipscing. Eirmod amet eum iusto dolor dolores nibh augue eros duis odio. Ipsum minim sit tempor vero ipsum amet eleifend diam sadipscing est amet no clita sadipscing. Diam vel augue et sit diam aliquip enim consequat sit et. Iriure kasd consetetur amet sea feugait adipiscing in odio ea. Et vero ut diam sed sed feugiat sadipscing facer vero et dolore. Tempor invidunt et rebum clita ut no takimata nihil magna est lorem ea no et dolor clita stet. Luptatum ut zzril imperdiet. Consequat gubergren vero et sea et consectetuer. Erat aliquyam no in amet ut facilisis et vulputate liber cum ut. Eirmod at magna accusam esse sed molestie. Dolores sed hendrerit dolore lorem erat qui vero eum lorem wisi sed quis magna.',
      due: '17 Agustus 2022'),
  AssignedAssignment(
      course: courseList[4].name,
      title: 'Project Web',
      room: courseList[4].room,
      instructions:
          'Wisi dolor kasd laoreet sanctus. Autem clita kasd magna dolor. Duis id tempor aliquam gubergren eos augue dolor molestie dolores. Facilisi gubergren erat magna iusto eirmod consetetur sit invidunt laoreet. Nisl consequat duo sit sit iriure lorem feugiat dolor et magna ut dolor ipsum dolore. Rebum eirmod takimata et magna. Vulputate ex minim doming doming sed eos. Dignissim dolore no dolore eirmod sit aliquip zzril nam accusam tempor gubergren. Kasd gubergren vero dolore dolores sed aliquyam autem. Feugiat mazim labore lorem amet. Lorem nonumy dolor takimata lobortis aliquyam velit labore voluptua dolore kasd nibh et. Magna tempor et eirmod rebum voluptua consetetur lorem facilisis. Consequat at duo clita dolor dolores ipsum et vel vero duo praesent eos commodo dolore eos. Et duis illum sanctus. Vero ipsum diam in dolor sit sed vero est nulla. Qui facilisi in stet accumsan dolore vero labore sed consetetur lorem lorem et autem magna.',
      due: '30 November 2022')
];
