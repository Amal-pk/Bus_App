import 'package:flutter/material.dart';
import 'package:noviindus/app/Login/Controller/login_controller.dart';
import 'package:noviindus/app/Login/View/Widget/textfield.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<LoginController>();
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "asset/image/WhatsApp Image 2023-03-03 at 22.24.44.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            TextFieldWidgets(
              hint: "User Name",
              validator: "",
              controller: controller.emailController,
              keybord: TextInputType.emailAddress,
              obsc: false,
            ),
            TextFieldWidgets(
              hint: "Password",
              validator: "",
              controller: controller.passwordController,
              keybord: TextInputType.visiblePassword,
              obsc: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer(
          builder: (context, value, _) {
            return FloatingActionButton.extended(
              backgroundColor: Colors.red,
              onPressed: () {
                controller.loginUser(context);
              },
              label: controller.isLoading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
