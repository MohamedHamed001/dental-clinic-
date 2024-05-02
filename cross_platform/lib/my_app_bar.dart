import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        icon: Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        onPressed: Scaffold.of(context).openDrawer, // This line is changed
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
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
