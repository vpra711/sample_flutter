import 'package:get_it/get_it.dart';
import 'package:sample/modules/login/presentation/states/home_bloc/home_bloc.dart';
import 'package:sample/modules/login/presentation/states/login_bloc/login_bloc.dart';
import 'package:sample/modules/login/presentation/states/register_bloc/register_bloc.dart';

Future<void> registerDependencies() async {
  var instance = GetIt.instance;

  instance.registerFactory(() => LoginBloc());
  instance.registerFactory(() => RegisterBloc());
  instance.registerFactory(() => HomeBloc());
}