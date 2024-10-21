import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/modules/login/config/export.dart';
import 'package:sample/modules/login/presentation/states/login_bloc/login_bloc.dart';
import 'package:sample/modules/login/presentation/widgets/login/page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<LoginBloc, LoginState>(
      listener: _listener,
      child: const LoginPage(),
    ));
  }
}

extension _LoginListener on _LoginState {
  void _listener(BuildContext context, LoginState state) {
    switch (state.runtimeType) {
      case const (LoginInProgressState):
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      case const (LoginSuccessState):
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (builder) =>
                    Home(name: (state as LoginSuccessState).username)));
      default:
        break;
    }
  }
}
