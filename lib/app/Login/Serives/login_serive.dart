import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:noviindus/app/Login/Model/login_model.dart';
import 'package:noviindus/widget/core/const.dart';

class LoginService {
  LoginService._instans();
  static LoginService instance = LoginService._instans();
  factory LoginService() {
    return instance;
  }

  Future<LoginModelRespo?> userLogin(LoginModel value, context) async {
    try {
      Response response = await Dio().post(
        baseUrl + loginUrl,
        data: value.toJson(),
      );

      if (response.statusCode == 200) {
        // print(response.data);
        // log(response.toString());
        const SnackBar(
          content: Text("Login successfully"),
          backgroundColor: Color.fromARGB(255, 97, 98, 97),
        );
        return LoginModelRespo.fromJson(response.data);
      }
    } on DioError catch (e) {
      // return errorCode.status401(e);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error Founded: $e'),
          backgroundColor: const Color.fromARGB(255, 47, 48, 47),
        ),
      );
    }
    return null;
    // return null;
  }
}
