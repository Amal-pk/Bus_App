import 'package:flutter/material.dart';
import 'package:noviindus/app/Login/View/login.dart';
import 'package:noviindus/app/Splash/view/splash.dart';

class SplashController extends ChangeNotifier {
  getStart(BuildContext context) {
    Navigator.pushAndRemoveUntil<void>(
      context,
      MaterialPageRoute<void>(builder: (BuildContext context) => const Login()),
      ModalRoute.withName("/"),
    );
  }
}
