import 'dart:ui';

import 'package:cross_platform/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

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
            ListTile(
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
            Divider(
              color: Color.fromARGB(255, 82, 191, 245),
              thickness: 4,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text(
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
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.schedule,
              ),
              title: Text(
                'My Appointments',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Services',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              tileColor: const Color.fromARGB(255, 236, 233, 233),
            ),
            ListTile(
              minVerticalPadding: 0,
              leading: Icon(
                Icons.check_circle,
              ),
              title: Text(
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
              leading: Icon(
                Icons.brush,
              ),
              title: Text(
                'Teeth cleaning',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.remove_circle,
              ),
              minVerticalPadding: 0,
              title: Text(
                'Tooth extraction',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.healing,
              ),
              title: Text(
                'Root canal treatment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.faceSmile,
              ),
              title: Text(
                'Orthodontics',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.teeth,
              ),
              title: Text(
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
