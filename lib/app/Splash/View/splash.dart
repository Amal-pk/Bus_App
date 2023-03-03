import 'package:flutter/material.dart';
import 'package:noviindus/app/Splash/Controller/splash_controller.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SplashController>(context);
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: RichText(
          text: const TextSpan(
            // style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(
                text: 'Moov',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: 'be',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          onPressed: () {
            controller.getStart(context);
          },
          label: const Text(
            "Get Started",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
