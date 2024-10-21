import 'package:flutter/material.dart';

class SPasswordField extends StatelessWidget {
  final TextEditingController? controller;
  const SPasswordField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: true,
      obscuringCharacter: "*",
    );
  }
}
