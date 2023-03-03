import 'package:flutter/material.dart';
import 'package:noviindus/app/Bus_Details/View/widget/driver_container.dart';
import 'package:noviindus/app/Bus_Details/View/widget/seat_container.dart';
import 'package:noviindus/app/Bus_Details/View/widget/seat_container3.dart';

class BusManage extends StatelessWidget {
  const BusManage({
    super.key,
    required this.seat,
  });
  final String seat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.transparent,
            expandedHeight: 90,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 27, 33, 36),
                    Color.fromARGB(255, 26, 25, 32),
                    Color.fromARGB(255, 17, 17, 18),
                  ],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Bus Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                const DriverContainer(),
                seat == 'Two Seat'
                    ? const TwoSeatContainer()
                    : const ThreeSeatContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
