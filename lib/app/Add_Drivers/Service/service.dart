import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:noviindus/app/Add_Drivers/Model/model.dart';
import 'package:noviindus/app/Bus_Drivers/Model/model.dart';
import 'package:noviindus/widget/core/const.dart';
import 'package:noviindus/widget/error_handing/dio_error_handing.dart';

class BusDriverService {
  BusDriverService._instans();
  static BusDriverService instance = BusDriverService._instans();
  factory BusDriverService() {
    return instance;
  }

  ErrorCode errorCode = ErrorCode();

  Future<DriverManage?> busDriverServide(
      String id, DriverManageAdd value, String token) async {
    log(".........................$id");
    try {
      Response response = await Dio().post(
        baseUrl + driverUrl + id + "/",
        data: value.toJson(),
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );

      if (response.statusCode == 200) {
        log(response.data.toString());
        const SnackBar(
          content: Text("Login successfully"),
          backgroundColor: Color.fromARGB(255, 97, 98, 97),
        );
        return DriverManage.fromJson(response.data);
      }
    } on DioError catch (e) {
      log(e.requestOptions.headers.toString());
      return errorCode.status401(e);
    } catch (e) {
      log(e.toString());
      const SnackBar(
        content: Text('Error Founded'),
        backgroundColor: Color.fromARGB(255, 47, 48, 47),
      );
    }
    return null;
  }
}
