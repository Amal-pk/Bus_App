import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noviindus/app/Bus_Details/View/bus_details.dart';
import 'package:noviindus/app/Home/Model/home_model.dart';
import 'package:noviindus/app/Home/Serives/homepage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageController extends ChangeNotifier {
  bool isLoading = false;
  List<dynamic> busList = [];
  busManage(BuildContext context, String seat) {
    log(seat);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BusManage(
          seat: seat,
        ),
      ),
    );
  }

  listOfBus() async {
    isLoading = true;
    SharedPreferences sp = await SharedPreferences.getInstance();
    final token = sp.getString("Token");
    final id = sp.getString("UrlID");
    BusList? busListRespo = await BusAllList.instance.busList(id!, token!);
    // log(controller.district.toString());
    if (busListRespo != null && busListRespo.status == true) {
      busList.clear();
      busList.addAll(busListRespo.busList);
    }

    isLoading = false;
    notifyListeners();
  }
}
