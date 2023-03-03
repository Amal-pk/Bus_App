import 'package:flutter/material.dart';
import 'package:noviindus/app/Add_Drivers/Controller/add_controller.dart';
import 'package:noviindus/app/Bus_Details/Details_Controller/details_controller.dart';
import 'package:noviindus/app/Bus_Drivers/Controller/driver_controller.dart';
import 'package:noviindus/app/Home/Controller/homepage_controller.dart';
import 'package:noviindus/app/Login/Controller/login_controller.dart';
import 'package:noviindus/app/Splash/Controller/splash_controller.dart';
import 'package:noviindus/app/Splash/view/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashController(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginController(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomePageController(),
        ),
        ChangeNotifierProvider(
          create: (context) => DetailsController(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddDriverController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BusDriverController(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bus Details App',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: const Splash()),
    );
  }
}
