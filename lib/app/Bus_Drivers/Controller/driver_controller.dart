import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noviindus/app/Bus_Drivers/Model/model.dart';
import 'package:noviindus/app/Bus_Drivers/Service/bus_driver_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BusDriverController extends ChangeNotifier {
  List<DriverList> near = [];
  bool isLoading = false;

  detailOfDriver() async {
    isLoading = true;

    SharedPreferences sp = await SharedPreferences.getInstance();
    final id = sp.getString("UrlID");
    final token = sp.getString("Token");
    log(id.toString());

    DriverDetails? driverDetails = await DriverService.instance
        .driverServide(id.toString(), token.toString());
    log(driverDetails!.status.toString());

    if (driverDetails.status == true) {
      log(driverDetails.status.toString());
      near.clear();
      near.addAll(driverDetails.driverList);
      notifyListeners();
    }

    // isLoading = false;
    notifyListeners();
  }
}
