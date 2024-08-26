import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/Controller/Home%20Bloc/home_bloc.dart';
import 'package:portfolio/View/Home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (context) => HomeBloc(),
          )
        ],
        child: MaterialApp(
          title: 'Md Rafiqul Islam',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
            fontFamily: 'Urbanist',
          ),
          debugShowCheckedModeBanner: false,
          home: const Home(),
        )
    );
  }
}