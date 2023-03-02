import 'package:flutter/material.dart';
import 'package:noviindus/app/Login/Controller/login_controller.dart';
import 'package:noviindus/app/Login/View/Widget/textfield.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LoginController>(context);
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Container(
              height: 300,
              color: Colors.red,
            ),
            TextFieldWidgets(
              hint: "Email",
              validator: "",
              controller: controller.email,
              keybord: TextInputType.emailAddress,
            ),
            TextFieldWidgets(
              hint: "Password",
              validator: "",
              controller: controller.password,
              keybord: TextInputType.name,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.red,
          onPressed: () {},
          label: const Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
