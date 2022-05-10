import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:villaspot/1_welcomescreen.dart';
import 'package:villaspot/4_Homepage.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/logo.jpg', width: 500, height: 500, fit: BoxFit.fitWidth,),
      backgroundColor: Colors.white10,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: WelcomePage(),
      durationInSeconds: 5,
    );
  }
}