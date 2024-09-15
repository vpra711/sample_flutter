import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/modules/login/presentation/states/login_bloc/login_bloc.dart';
import 'package:sample/modules/login/presentation/widgets/button.dart';
import 'package:sample/modules/login/presentation/widgets/passwordfield.dart';
import 'package:sample/modules/login/presentation/widgets/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: _builder);
  }
}

extension _LoginBuilder on _LoginPageState {
  Widget _builder(BuildContext context, LoginState state) {
    List<Widget> widgets = List.empty(growable: true);

    widgets.add(const STextField());
    widgets.add(const SPasswordField());

    switch (state.runtimeType) {
      default:
        break;
    }
    return SButton(name: "Login", action: () => log("hi"));
  }
}
