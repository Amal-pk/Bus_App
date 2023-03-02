import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool obscure = false;

  isobscure() {
    obscure = !obscure;
    notifyListeners();
  }
}
