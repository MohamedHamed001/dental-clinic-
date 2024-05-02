import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Implement build method
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
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
    );

    // Replace Container() with your desired widget
  }
}
