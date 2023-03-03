import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noviindus/app/Home/View/homepage.dart';
import 'package:noviindus/app/Login/Model/login_model.dart';
import 'package:noviindus/app/Login/Serives/login_serive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscure = false;
  bool isLoading = false;

  isobscure() {
    obscure = !obscure;
    notifyListeners();
  }

  loginUser(context) async {
    final signupControllerProvider =
        // print('----------------------heeeeeeeeeeee------------');
        isLoading = true;
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Enter valied Data'),
        ),
      );
    } else {
      LoginModel value = LoginModel(username: email, password: password);
      LoginModelRespo? loginRespoModel =
          await LoginService.instance.userLogin(value, context);
      var token = loginRespoModel!.access;
      var refreshToken = loginRespoModel.refresh;
      log('tok$token  \nref$refreshToken');
      log(loginRespoModel.urlId);
      saveToken(token, refreshToken);
      saveToSharedPref();
      if (loginRespoModel.status == true) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
        saveUserLoggedIn();
      } else if (loginRespoModel.message == null) {
        print('value is null');
      } else {
        print(loginRespoModel.message);
      }
    }
    isLoading = false;
    notifyListeners();
  }

  saveUserLoggedIn() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('userloggedin', true);
  }

  saveToken(String token, String refreshToken) async {
    SharedPreferences sT = await SharedPreferences.getInstance();
    sT.setString("Token", token);
    sT.setString("RefreshToken", refreshToken);
  }

  saveToSharedPref() async {
    final sharedPrefrence = await SharedPreferences.getInstance();
    sharedPrefrence.setString('email', emailController.text.trim());
    sharedPrefrence.setString('password', passwordController.text.trim());
  }
}
