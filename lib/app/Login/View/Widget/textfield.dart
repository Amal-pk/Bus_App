import 'package:flutter/material.dart';
// import 'package:noviindus/app/Login/Controller/login_controller.dart';
// import 'package:provider/provider.dart';

class TextFieldWidgets extends StatelessWidget {
  const TextFieldWidgets({
    Key? key,
    required this.hint,
    required this.validator,
    required this.controller,
    required this.keybord,
    this.suffIcon,
    required this.obsc,
  }) : super(key: key);
  final TextEditingController? controller;
  final TextInputType keybord;
  final String hint;
  final String validator;
  final bool obsc;
  final Widget? suffIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 198, 192, 192),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
            color: Color.fromARGB(255, 198, 197, 197),
          )
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obsc,
        // Provider.of<LoginController>(context, listen: true).obscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          suffixIcon: suffIcon,
        ),
        keyboardType: keybord,
      ),
    );
  }
}
