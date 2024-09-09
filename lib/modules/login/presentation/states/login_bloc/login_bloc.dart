import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>(onLoginEvent);
    on<IsLoggedIn>(onIsLoggedIn);
  }

  Future<void> onLoginEvent(LoginEvent event, Emitter<LoginState> emit) async {
  }

  Future<void> onIsLoggedIn(IsLoggedIn event, Emitter<LoginState> emit) async {
  }
}
