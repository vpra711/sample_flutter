import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sample/modules/login/domain/usecases/user_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserUseCase _userUseCase;
  LoginBloc(this._userUseCase) : super(LoginInitialState()) {
    on<OnLogin>(onLoginEvent);
    on<IsLoggedIn>(onIsLoggedIn);
  }

  Future<void> onLoginEvent(OnLogin event, Emitter<LoginState> emit) async {
    emit(LoginInProgressState());
    final userInfo = await _userUseCase.getUser(username: event.username);

    if (userInfo == null) {
      emit(NoUserFoundState());
      return;
    }

    if (userInfo.password == event.password) {
      emit(LoginSuccessState(username: userInfo.username));
    } else {
      emit(WrongPasswordState());
    }
  }

  Future<void> onIsLoggedIn(IsLoggedIn event, Emitter<LoginState> emit) async {}
}
