import 'package:flutter/material.dart';
import 'package:villaspot/0_SplashScreen.dart';
import 'package:villaspot/1_welcomescreen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}
