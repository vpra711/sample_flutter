import 'package:flutter/material.dart';

class STextField extends StatelessWidget {
  final TextEditingController? controller;
  const STextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(controller: controller,);
  }
}
