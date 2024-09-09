import 'package:flutter/material.dart';

class SPasswordField extends StatelessWidget {
  const SPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(obscureText: true, obscuringCharacter: "*",);
  }
}