// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:noviindus/app/Login/View/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends ChangeNotifier {
  getStart(BuildContext context) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final checked = pref.getString('Token');
    if (checked == null || checked.isEmpty) {
      await Future.delayed(const Duration(seconds: 2));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
          (route) => false);
    } else {
      await Future.delayed(const Duration(seconds: 1));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
          (route) => false);
    }
  }
}
