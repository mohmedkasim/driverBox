import 'package:flutter/material.dart';
import 'package:trock_driver/screens/loginScreen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "almarai"),
      title: 'Truck Driver',
      home: Directionality(
          textDirection: TextDirection.rtl, child: LoginScreen()),
    );
  }
}
