import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noviindus/app/Bus_Details/View/bus_details.dart';

class HomePageController extends ChangeNotifier {
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
}
