import 'package:flutter/material.dart';
import 'package:noviindus/app/Add_Drivers/Controller/add_controller.dart';
import 'package:noviindus/app/Add_Drivers/View/add_driver.dart';
import 'package:provider/provider.dart';

class BusDriversList extends StatelessWidget {
  const BusDriversList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AddDriverController>(context);
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
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    // final data = controller.addDriver[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
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
                          backgroundColor: Colors.red,
                        ),
                        title: Text(""),
                        subtitle: Text(""),
                        trailing: ElevatedButton(
                          onPressed: () {
                            // controller.addDriver.remove(data);
                          },
                          child: Text("Delete"),
                        ),
                      ),
                    );
                  },
                ),
                FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddDriver(),
                          ));
                    },
                    label: Text("ADD DRIVER"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
