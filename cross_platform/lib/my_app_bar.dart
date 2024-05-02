import 'package:flutter/material.dart';
import 'package:cross_platform/menu_drawer.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
          title: Center(
            child: Text(
              'Dental Clinic',
            ),
          ),
          backgroundColor: Color.fromARGB(255, 1, 158, 255),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MenuDrawer()));
            },
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_rounded),
            ),
          ]),
    );
  }
}
