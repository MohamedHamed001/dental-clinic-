import 'package:cross_platform/my_app_bar.dart';
import 'package:cross_platform/my_drawer.dart';
import 'package:cross_platform/open_hours.dart';
import 'package:flutter/material.dart';
import 'package:cross_platform/my_app_bar.dart';
import 'package:cross_platform/animated_images.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedImages(),
            OpenHours(),
          ],
        ),
      ),
    );
  }
}
