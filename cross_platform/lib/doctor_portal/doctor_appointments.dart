import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cross_platform/doctor_portal/prescription.dart';

class DoctorAppointments extends StatefulWidget {
  @override
  _DoctorAppointmentsState createState() => _DoctorAppointmentsState();
}

class _DoctorAppointmentsState extends State<DoctorAppointments> {
  List<Widget> generateTiles(List<dynamic> data) {
    return data.map((item) {
      return ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Prescription()),
          );
        },
        title: Text(item['title'],
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 82, 191, 245),
            )), // replace 'title' with the actual key in your data
        subtitle: Row(
          children: [
            Text(item['subtitle'],
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                )),
            SizedBox(width: 30), // Add some space between the text widgets
            Text(
              item['scheduled_time'],
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ), // replace 'subtitle' with the actual key in your data
        // add more properties as needed
      );
    }).toList();
  }

  // Define a list of maps
  List<Map<String, dynamic>> data = [
    {
      'title': 'Appointment 1',
      'subtitle': 'Dr. Smith',
      'scheduled_time': '2024-05-15T00:24:28.923Z',
    },
    {
      'title': 'Appointment 2',
      'subtitle': 'Dr. Johnson',
      'scheduled_time': '2024-05-15T00:24:28.923Z',
    },
    // Add more maps as needed
  ];

// Function to generate tiles

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Doctor Appointments'),
        ),
        body: Flexible(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: generateTiles(
                    data), // replace 'yourData' with your actual data
              ),
            ),
          ),
        ));
  }
}
