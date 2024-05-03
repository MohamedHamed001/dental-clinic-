import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Features extends StatefulWidget {
  @override
  _FeaturesState createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  final gridMap = {
    'free Wifi': Icons.wifi,
    'Televison': FontAwesomeIcons.tv,
    'Clean': Icons.clean_hands,
    'Low price': Icons.price_check,
    'Fast service': Icons.fast_forward,
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
                    color: Colors.white,
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
