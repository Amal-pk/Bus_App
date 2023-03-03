import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:noviindus/app/Bus_Drivers/Model/model.dart';
import 'package:noviindus/widget/core/const.dart';
import 'package:noviindus/widget/error_handing/dio_error_handing.dart';

class DriverService {
  DriverService._instans();
  static DriverService instance = DriverService._instans();
  factory DriverService() {
    return instance;
  }

  ErrorCode errorCode = ErrorCode();

  Future<DriverDetails?> driverServide(String id, String token) async {
    final url = baseUrl + driverUrl + id + "/";
    log(url);
    try {
      Response response = await Dio().get(
        baseUrl + driverUrl + id + "/",
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      log(response.data.toString());
      if (response.statusCode == 200) {
        print(response.data);
        const SnackBar(
          content: Text("Login successfully"),
          backgroundColor: Color.fromARGB(255, 97, 98, 97),
        );
        return DriverDetails.fromJson(response.data);
      }
    } on DioError catch (e) {
      log("fjovojasdfovadfsjio;v");
      log(e.requestOptions.headers.toString());
      e.requestOptions.headers;
      return errorCode.status401(e);
    } catch (e) {
      const SnackBar(
        content: Text('Error Founded'),
        backgroundColor: Color.fromARGB(255, 47, 48, 47),
      );
    }
    return null;
  }
}
