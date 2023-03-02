import 'package:flutter/material.dart';
import 'package:noviindus/app/Home/Controller/homepage_controller.dart';
import 'package:noviindus/app/Home/View/homepage.dart';
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
          create: (context) => HomePageController(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bus Details App',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: const HomePage()),
    );
  }
}
