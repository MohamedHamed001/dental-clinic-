import 'dart:ui';

import 'package:cross_platform/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PatientDrawer extends StatelessWidget {
  PatientDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double drawerWidth =
        screenWidth * 0.75; // Drawer covers 75% of the screen width

    return SizedBox(
      width: drawerWidth, // Control the width of the drawer
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
                'My Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              onTap: () {},
              tileColor: const Color.fromARGB(255, 236, 233, 233),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: const Text(
                'Edit Profile',
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
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.prescriptionBottleMedical,
              ),
              title: const Text(
                'My Prescriptions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.fileInvoiceDollar,
              ),
              title: const Text(
                'Billing Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            const ListTile(
              title: Text(
                'Services',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              tileColor: Color.fromARGB(255, 236, 233, 233),
            ),
            ListTile(
              minVerticalPadding: 0,
              leading: const Icon(
                Icons.check_circle,
              ),
              title: const Text(
                'Dental checkup',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              minVerticalPadding: 0,
              leading: const Icon(
                Icons.brush,
              ),
              title: const Text(
                'Teeth cleaning',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.remove_circle,
              ),
              minVerticalPadding: 0,
              title: const Text(
                'Tooth extraction',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.healing,
              ),
              title: const Text(
                'Root canal treatment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.faceSmile,
              ),
              title: const Text(
                'Orthodontics',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.teeth,
              ),
              title: const Text(
                'Teeth braces',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
