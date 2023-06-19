import 'package:corona/about.dart';
import 'package:corona/first_inputs.dart';
import 'package:corona/cubit/corona_cubit.dart';
import 'package:corona/homePage.dart';
import 'package:corona/results.dart';
import 'package:corona/second_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoronaCubit(),
      child: MaterialApp(
        routes: {
          FirstInputs.id: (context) => const FirstInputs(),
          SecondInputs.id: (context) => const SecondInputs(),
          HomePage.id: (context) => const HomePage(),
          Result.id: (context) => const Result(),
          About.id: (context) => About(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: FirstInputs.id,
      ),
    );
  }
}
