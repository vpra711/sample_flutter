part of "main.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (context) => GetIt.instance()),
        BlocProvider<RegisterBloc>(create: (context) => GetIt.instance()),
        BlocProvider<HomeBloc>(create: (context) => GetIt.instance())
      ],
      child: MaterialApp(
        title: "sample project",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Login(),
      ),
    );
  }
}