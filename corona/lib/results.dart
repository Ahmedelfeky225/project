// ignore_for_file: depend_on_referenced_packages

import 'package:corona/about.dart';
import 'package:corona/components/button.dart';
import 'package:corona/cubit/corona_cubit.dart';
import 'package:corona/first_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);
  static String id = 'Result';
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/corona2.jpg'),
            opacity: 1,
            fit: BoxFit.cover,
          ),
        ),
        //color: Color(0xFFF7CCD6),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Your Result',
                    style: TextStyle(
                      color: Color.fromARGB(255, 207, 203, 203),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  BlocBuilder<CoronaCubit, CoronaState>(
                    builder: (context, state) {
                      if (state is CoronaSuccess) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Center(
                                child: Text(
                                  state.coronaModel.data,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Button(
                    title: 'About Corona virus',
                    onTap: () {
                      Navigator.pushNamed(context, About.id);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Button(
                    title: 'Re Enter Values',
                    onTap: () {
                      Navigator.pushNamed(context, FirstInputs.id);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
