import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the font size as a proportion of the screen width
    double titleFontSize = screenWidth * 0.1; // 10% of the screen width

    return AppBar(
      title: Center(
        child: FittedBox(
          fit: BoxFit
              .scaleDown, // Ensures text does not overflow and scales down
          child: Text('House of Dental',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: titleFontSize, // Dynamically calculated font size
                  fontFamily: 'Serif',
                  fontWeight: FontWeight.w700)),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 249, 249, 249),
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        onPressed: Scaffold.of(context).openDrawer,
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
