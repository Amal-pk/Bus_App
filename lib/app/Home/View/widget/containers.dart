import 'package:flutter/material.dart';

class TwoContainers extends StatelessWidget {
  const TwoContainers({
    super.key,
    required this.busorDriver,
    required this.manage,
    required this.clr,
    required this.img,
  });
  final String busorDriver;
  final String manage;
  final Color clr;
  final String img;

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    final high = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(top: 16),
      width: wid / 2.6,
      height: high / 3.7,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            color: Colors.grey,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16),
            alignment: Alignment.topLeft,
            child: Text(
              busorDriver,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            alignment: Alignment.topLeft,
            child: Text(
              manage,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          Image(
            fit: BoxFit.fill,
            image: AssetImage(img),
            height: 150,
            width: 100,
          ),
        ],
      ),
    );
  }
}
