import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cross_platform/reserve_appointment.dart';
import 'package:cross_platform/doctor_portal/doctor_appointments.dart';
// Adjust the import path as necessary

class DoctorDrawer extends StatelessWidget {
  DoctorDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double drawerWidth =
        screenWidth * 0.75; // Drawer covers 75% of the screen width

    return SizedBox(
      width: drawerWidth,
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const ListTile(
              title: Text(
                'WELCOME TO OUR CLINIC',
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 191, 245),
                  fontSize: 30,
                  fontFamily: 'Serif',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 82, 191, 245),
              thickness: 4,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: const Text(
                'Doctor username',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              tileColor: const Color.fromARGB(255, 236, 233, 233),
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.person,
              ),
              title: const Text(
                'My Profile ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.timeline,
              ),
              title: const Text(
                'My Appointments',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorAppointments()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  ListTile _createServiceListTile(
      BuildContext context, String serviceName, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        serviceName,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      onTap: () {
        Navigator.pop(context); // Close the drawer
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ReserveAppointmentPage(serviceName: serviceName)),
        );
      },
    );
  }
}
