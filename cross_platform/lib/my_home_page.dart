import 'package:cross_platform/my_app_bar.dart';
import 'package:cross_platform/my_drawer.dart';
import 'package:cross_platform/open_hours.dart';
import 'package:flutter/material.dart';
import 'package:cross_platform/my_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          // Container(
          //   height: 230,
          //   child: ListView(scrollDirection: Axis.horizontal, children: [
          //     Padding(
          //       padding: const EdgeInsets.all(16.0),
          //       child: InkWell(
          //         onTap: () {},
          //         child: Container(
          //           width: 200,
          //           decoration: BoxDecoration(
          //             color: Colors.blue,
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //           child: Center(child: Text('listview item 1')),
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(16.0),
          //       child: InkWell(
          //         onTap: () {},
          //         child: Container(
          //           width: 200,
          //           decoration: BoxDecoration(
          //             color: Colors.blue,
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //           child: Center(child: Text('listview item 2')),
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(16.0),
          //       child: InkWell(
          //         onTap: () {},
          //         child: Container(
          //           width: 200,
          //           decoration: BoxDecoration(
          //             color: Colors.blue,
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //           child: Center(child: Text('listview item 3')),
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(16.0),
          //       child: InkWell(
          //         onTap: () {},
          //         child: Container(
          //           width: 200,
          //           decoration: BoxDecoration(
          //             color: Colors.blue,
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //           child: Center(child: Text('listview item 4')),
          //         ),
          //       ),
          //     ),
          //   ]),
          // ),
          OpenHours(),
          // HorizontalHomePagescroll(),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
          Text('listview item 4'),
        ],
      ),
    );
  }
}
