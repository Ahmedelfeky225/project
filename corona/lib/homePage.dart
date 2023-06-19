// ignore_for_file: file_names

import 'package:corona/first_inputs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/corona.jpg'),
            opacity: 1,
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        // color: Color(0xFFF7CCD6),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Ask your Doctor for the Special Test to Enter these values :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'cough\n'
                    'fever\n'
                    'sore_throat\n'
                    'shortness_of_breath\n'
                    'head_ache\n'
                    'age_60_and_above\n'
                    'gender\n'
                    'test_indication'
                ,    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, FirstInputs.id);
                      },
                      child: const Text(
                        'Enter Values',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFF7B3C2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
