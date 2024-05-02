import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class OpenHours extends StatelessWidget {
  OpenHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 280,
      color: Color.fromARGB(255, 82, 191, 245),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'OPEN HOURS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Serif',
              // fontWeight: FontWeight.w700,
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
            indent: 180,
            endIndent: 180,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: DottedBorder(
              color: Colors.white,
              strokeWidth: 2,
              borderType: BorderType.RRect,
              child: Container(
                width: 350,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Monday - Saturday',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(' 9:00 AM - 9:00 PM',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Text(
                      'Sunday',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(' Open 24 Hours',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
