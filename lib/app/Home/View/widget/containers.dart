import 'package:flutter/material.dart';

class TwoContainers extends StatelessWidget {
  const TwoContainers({
    super.key,
    required this.busorDriver,
    required this.manage,
    required this.clr,
  });
  final String busorDriver;
  final String manage;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              color: Colors.grey,
            )
          ]),
      child: Column(
        children: [
          Text(
            busorDriver,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            manage,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
