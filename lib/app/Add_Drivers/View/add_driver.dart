import 'package:flutter/material.dart';
import 'package:noviindus/app/Add_Drivers/Controller/add_controller.dart';
import 'package:noviindus/app/Login/View/Widget/textfield.dart';
import 'package:provider/provider.dart';

class AddDriver extends StatelessWidget {
  const AddDriver({super.key});

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
                TextFieldWidgets(
                  hint: 'Enter Name',
                  validator: '',
                  controller: controller.name,
                  keybord: TextInputType.name,
                  obsc: false,
                ),
                TextFieldWidgets(
                  hint: 'Enter License Number',
                  validator: '',
                  controller: controller.number,
                  keybord: TextInputType.name,
                  obsc: false,
                ),
                ElevatedButton(
                    onPressed: () {
                      // controller.add();
                      // controller.clear();
                    },
                    child: Text("Save"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
