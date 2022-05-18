import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:villaspot/0_SplashScreen.dart';
import 'package:villaspot/1_welcomescreen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
