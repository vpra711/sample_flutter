import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sample/config/DI/init.dart';
import "package:sample/modules/login/config/export.dart";

part "app.dart";
Future<void> main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await init();
	runApp(const MyApp());
}