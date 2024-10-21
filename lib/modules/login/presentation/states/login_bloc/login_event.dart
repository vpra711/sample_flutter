part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

final class IsLoggedIn extends LoginEvent {}

final class OnLogin extends LoginEvent {
  final String username;
  final String password;
  OnLogin({required this.username, required this.password});
}