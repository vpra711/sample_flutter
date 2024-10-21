import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String name;
  const Home({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(name),
    );
  }
}
