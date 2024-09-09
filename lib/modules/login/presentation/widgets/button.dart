import 'package:flutter/material.dart';

class SButton extends StatelessWidget {
  const SButton({super.key, required this.name, required this.action});

  final String name;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: action, style: const ButtonStyle(), child: Text(name),);
  }
}
