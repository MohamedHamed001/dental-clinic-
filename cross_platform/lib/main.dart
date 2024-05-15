import 'package:cross_platform/login_page.dart';
// import 'package:cross_platform/my_app_bar.dart';
import 'package:cross_platform/home_page/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:cross_platform/start_page.dart';

import 'package:cross_platform/doctor_portal/doctor_drawer.dart';
import 'package:cross_platform/doctor_portal/doctor_appointments.dart';


void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // // Initialize Stripe
  // Stripe.publishableKey =
  //     "pk_test_51PGLSz08Zs9MquJ9W53Iih89ReUQikSdMhc6Acm6oIYpY6IJ538W5DbQ0ogpZnwA46oXAiri1bnhsIdicblgM64W00cQo9InG4"; // Replace with your publishable key
  // Stripe.merchantIdentifier = "Test"; // Optional

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
      // MyHomePage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/MyHomePage': (context) => MyHomePage(),
        '/DoctorDrawer': (context) => DoctorDrawer(),
        '/DocotorAppointments': (context) => DoctorAppointments(),
      },
    );
  }
}
