import 'package:cross_platform/my_drawer.dart';
import 'package:flutter/material.dart';
// import 'package:cross_platform/menu_drawer.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        // elevation: 100,
        title: Center(
          child: Text('Dental Clinic',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700)),
        ),
        backgroundColor: Color.fromARGB(255, 249, 249, 249),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
        ]);
  }
}
