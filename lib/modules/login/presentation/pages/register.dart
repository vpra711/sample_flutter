import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/modules/login/presentation/states/register_bloc/register_bloc.dart';
import 'package:sample/modules/login/presentation/widgets/register/page.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<RegisterBloc, RegisterState>(
        listener: _listener,
        child: const RegisterPage(),
      )
    );
  }
}

extension _RegisterListener on _RegisterState  {

  void _listener(BuildContext context, RegisterState state) {
    switch (state.runtimeType) {
      default: break;
    }
  } 
}