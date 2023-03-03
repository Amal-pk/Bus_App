import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:noviindus/app/Home/Model/home_model.dart';
import 'package:noviindus/widget/core/const.dart';
import 'package:noviindus/widget/error_handing/dio_error_handing.dart';

class BusAllList {
  BusAllList._instans();
  static BusAllList instance = BusAllList._instans();
  factory BusAllList() {
    return instance;
  }
  ErrorCode errorCode = ErrorCode();

  Future<BusList?> busList(String id, String token) async {
    try {
      Response response = await Dio().get(
        baseUrl +busListUrl+id ,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      if (response.statusCode == 200) {
        // print(response.data);
        const SnackBar(
          content: Text("Login successfully"),
          backgroundColor: Color.fromARGB(255, 97, 98, 97),
        );
        return BusList.fromJson(response.data);
      }
    } on DioError catch (e) {
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