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
  TextEditingController? _usernameController;
  TextEditingController? _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController?.dispose();
    _passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          STextField(
            controller: _usernameController,
          ),
          const SizedBox(
            height: 20,
          ),
          SPasswordField(controller: _passwordController),
          const SizedBox(
            height: 20,
          ),
          SButton(
            name: "login",
            action: _loginButtonAction,
          ),
        ],
      ),
    );
  }

  void _loginButtonAction() {
    context.read<LoginBloc>().add(OnLogin(
        username: _usernameController?.text ?? "",
        password: _passwordController?.text ?? ""));
  }
}
