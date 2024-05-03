import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class services extends StatefulWidget {
  @override
  _servicesState createState() => _servicesState();
}

class _servicesState extends State<services> {
  final gridMap = {
    'Dental checkup': Icons.check_circle,
    'Teeth cleaning': Icons.brush,
    'Tooth extraction': Icons.remove_circle,
    'Root canal treatment': Icons.healing,
    'Orthodontics': FontAwesomeIcons.faceSmile,
    'Teeth braces': FontAwesomeIcons.teeth,
  };
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Center(
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 150,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: gridMap.length,
            itemBuilder: (__, index) {
              return Container(
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        gridMap.values.elementAt(index),
                        size: 50,
                        color: Color.fromARGB(255, 82, 191, 245),
                      ),
                      Text(
                        gridMap.keys.elementAt(index),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ));
            }),
      ),
    );
  }
}
