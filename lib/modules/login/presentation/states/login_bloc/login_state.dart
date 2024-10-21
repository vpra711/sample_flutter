part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitialState extends LoginState {}

final class LoginInProgressState extends LoginState {}

final class LoginSuccessState extends LoginState {
  final String username;

  LoginSuccessState({required this.username});
}

final class WrongPasswordState extends LoginState {}

final class NoUserFoundState extends LoginState {}

final class LoginFailuareState extends LoginState {}
