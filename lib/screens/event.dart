import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:study_up/model/event.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfCalendar(
        view: CalendarView.month,
        dataSource: EventDataSource(_getDataSource()),
        monthViewSettings: const MonthViewSettings(
            showAgenda: true,
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator),
      ),
      
    );
  }

  // Event Datasource
  List<Event> _getDataSource() {
    final List<Event> events = <Event>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    events.add(Event(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));
    events.add(
        Event('Belajar', startTime, endTime, const Color(0xFF0F8644), false));
    return events;
  }
}