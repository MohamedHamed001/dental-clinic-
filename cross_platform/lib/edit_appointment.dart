import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class EditAppointmentPage extends StatefulWidget {
  final Map<String, String> appointment;

  const EditAppointmentPage({Key? key, required this.appointment})
      : super(key: key);

  @override
  _EditAppointmentPageState createState() => _EditAppointmentPageState();
}

class _EditAppointmentPageState extends State<EditAppointmentPage> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  String? _selectedTime;

  // Example time slots
  final List<String> _timeSlots = [
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '01:00 PM',
    '02:00 PM',
    '03:00 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Appointment'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            calendarFormat: CalendarFormat.month,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (selectedDay.isBefore(DateTime.now())) {
                return;
              }
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          SizedBox(height: 20),
          DropdownButton<String>(
            value: _selectedTime,
            hint: Text("Select Time Slot"),
            onChanged: (String? newValue) {
              setState(() {
                _selectedTime = newValue;
              });
            },
            items: _timeSlots.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed:
                (_selectedTime == null || _selectedDay.isBefore(DateTime.now()))
                    ? null
                    : () {
                        _confirmEdit();
                      },
            child: Text('Save Changes'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.grey;
                  }
                  return Colors.blue;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _confirmEdit() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Edit"),
          content: Text(
              "You have rescheduled your appointment to $_selectedDay at $_selectedTime."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context, {
                  'date': _selectedDay.toIso8601String().split('T').first,
                  'time': _selectedTime,
                  'service': widget.appointment['service']
                });
              },
            ),
          ],
        );
      },
    );
  }
}
