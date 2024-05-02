import 'package:cross_platform/login_page.dart';
import 'package:flutter/material.dart';

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
        child: ListView(
          children: [
            ListTile(
              title: Text('Login'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
