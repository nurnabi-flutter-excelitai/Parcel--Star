import 'package:flutter/material.dart';
import 'package:parcel_star/view/screens/pickup_request_screen.dart';
import 'package:parcel_star/view/screens/pickup_request_screen2.dart';

import 'view/screens/test_screen.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcel Star',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PickUpRequestScreen2(),
    );
  }
}




