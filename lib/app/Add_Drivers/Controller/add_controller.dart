import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noviindus/app/Add_Drivers/Model/model.dart';

class AddDriverController extends ChangeNotifier {
  final TextEditingController name = TextEditingController();
  final TextEditingController number = TextEditingController();


  clear() {
    name.clear();
    number.clear();
  }
}
