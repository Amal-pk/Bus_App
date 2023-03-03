import 'package:flutter/material.dart';
import 'package:noviindus/app/Bus_Details/Details_Controller/details_controller.dart';
import 'package:noviindus/app/Bus_Drivers/Controller/driver_controller.dart';
import 'package:noviindus/app/Bus_Drivers/View/bus_driver.dart';
import 'package:noviindus/app/Home/Controller/homepage_controller.dart';
import 'package:noviindus/app/Home/View/widget/containers.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomePageController>(context);
    final controllerBus = Provider.of<BusDriverController>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.transparent,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.transparent,
            expandedHeight: 120,
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
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
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
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.listOfBus();
                        },
                        child: const TwoContainers(
                          busorDriver: "Bus",
                          manage: "Manage your Bus",
                          clr: Colors.red,
                          img:
                              "asset/image/png-transparent-tourist-bus-bus-cycling-tourism-removebg-preview.png",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BusDriversList(),
                            ),
                          );
                          controllerBus.detailOfDriver();
                        },
                        child: const TwoContainers(
                          busorDriver: "Driver",
                          manage: "Manage your Driver",
                          clr: Colors.black,
                          img: "asset/image/Clay_Trevenen-removebg-preview.png",
                        ),
                      )
                    ],
                  ),
                  const Text("21 Buses Found"),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 2,
                              color: Colors.black,
                            )
                          ],
                        ),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                          title: const Text("Bus"),
                          subtitle: index.isEven
                              ? const Text("Two Seat")
                              : const Text("Three Seat"),
                          trailing: ElevatedButton(
                            onPressed: () {
                              controller.busManage(
                                context,
                                index.isEven ? 'Two Seat' : 'Three Seat',
                              );
                            },
                            child: const Text("Manage"),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
