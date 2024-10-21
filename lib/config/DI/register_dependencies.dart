import 'package:get_it/get_it.dart';
import 'package:sample/modules/login/data/repository_impl/user_repository_impl.dart';
import 'package:sample/modules/login/domain/repositories/user_repository.dart';
import 'package:sample/modules/login/domain/usecases/user_use_case.dart';
import 'package:sample/modules/login/presentation/states/home_bloc/home_bloc.dart';
import 'package:sample/modules/login/presentation/states/login_bloc/login_bloc.dart';
import 'package:sample/modules/login/presentation/states/register_bloc/register_bloc.dart';

Future<void> registerDependencies() async {
  var instance = GetIt.instance;

  instance.registerSingleton<UserRepository>(UserRepositoryImpl());
  instance.registerSingleton<UserUseCase>(UserUseCase(instance()));
  instance.registerFactory<LoginBloc>(() => LoginBloc(instance()));
  instance.registerFactory<RegisterBloc>(() => RegisterBloc());
  instance.registerFactory<HomeBloc>(() => HomeBloc());
}
