import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ErrorCode {
  status401(e) {
    if (e.response?.statusCode == 401) {
      const SnackBar(
        content: Text('Server Not Founded'),
        backgroundColor: Color.fromARGB(255, 97, 98, 97),
      );
    } else if (e.type == DioErrorType.connectionTimeout) {
      const SnackBar(
        content: Text('Connection Time out'),
      );
    } else if (e.type == DioErrorType.receiveTimeout) {
      const SnackBar(
        content: Text('Timeout Error'),
      );
    } else if (e.type == DioErrorType.badResponse) {
      const SnackBar(
        content: Text('Network Error'),
      );
    }
  }
}