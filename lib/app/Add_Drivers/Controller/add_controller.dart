import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noviindus/app/Add_Drivers/Model/model.dart';
import 'package:noviindus/app/Add_Drivers/Service/service.dart';
import 'package:noviindus/app/Bus_Drivers/Controller/driver_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddDriverController extends ChangeNotifier {
  final TextEditingController name = TextEditingController();
  final TextEditingController mobile = TextEditingController();
  final TextEditingController license = TextEditingController();
  BusDriverController add = BusDriverController();
  bool isLoading = false;

  detailOfDriver(BuildContext context) async {
    isLoading = true;
    final drvName = name.text.trim();
    final drvMobile = mobile.text.trim();
    final drvLicense = license.text.trim();

    print('xfkmvnjzdnvn');

    DriverManageAdd value = DriverManageAdd(
      name: drvName,
      mobile: drvMobile,
      licenseNo: drvLicense,
    );
    log(value.licenseNo);
    SharedPreferences sp = await SharedPreferences.getInstance();
    final id = sp.getString("UrlID");
    final token = sp.getString("Token");
    log(id.toString());
    DriverManage? driverManage = await BusDriverService.instance
        .busDriverServide(id.toString(), value, token.toString());
    log(value.mobile);
    if (driverManage?.status == true) {
      Navigator.pop(context);
      add.detailOfDriver();
      notifyListeners();
    }
    // log(driverManage?.status?.toString());
    isLoading = false;
    notifyListeners();
  }

  clear() {
    name.clear();
    mobile.clear();
    license.clear();
  }
}
