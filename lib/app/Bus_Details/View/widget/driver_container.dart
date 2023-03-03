import 'package:flutter/material.dart';

class DriverContainer extends StatelessWidget {
  const DriverContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    final high = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 27, 33, 36),
            Color.fromARGB(255, 26, 25, 32),
            Color.fromARGB(255, 17, 17, 18),
          ],
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Driver Name",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Driver Id",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Image(
            image: const AssetImage(
              "asset/image/Clay_Trevenen-removebg-preview.png",
            ),
            height: high / 4,
          )
        ],
      ),
    );
  }
}
