import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:cross_platform/home_page/my_home_page.dart'; // Make sure this path is correct

class ReserveAppointmentPage extends StatefulWidget {
  final String serviceName;

  const ReserveAppointmentPage({Key? key, required this.serviceName})
      : super(key: key);

  @override
  _ReserveAppointmentPageState createState() => _ReserveAppointmentPageState();
}

class _ReserveAppointmentPageState extends State<ReserveAppointmentPage> {
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
        title: Text('Reserve Appointment - ${widget.serviceName}'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime
                .now(), // Sets the current day as the earliest selectable date.
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            calendarFormat: CalendarFormat.month,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (selectedDay.isBefore(DateTime.now())) {
                // Prevent selection of past dates
                return;
              }
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay; // Update `_focusedDay` here as well
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
                        // Proceed with the selected date and time
                        _proceedWithBooking();
                      },
            child: Text('Confirm Appointment'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.grey; // Disabled color
                  }
                  return Colors.blue; // Regular color
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _proceedWithBooking() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Booking"),
          content: Text(
              "You have booked an appointment on $_selectedDay at $_selectedTime."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                ); // Navigate back to home page or close the dialog
              },
            ),
          ],
        );
      },
    );
  }
}
