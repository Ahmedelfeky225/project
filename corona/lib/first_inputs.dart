// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:corona/components/button.dart';
import 'package:corona/components/input_titles.dart';
import 'package:corona/components/text_form_field.dart';
import 'package:corona/cubit/corona_cubit.dart';
import 'package:corona/second_inputs.dart';
import 'package:flutter/material.dart';

class FirstInputs extends StatefulWidget {
  const FirstInputs({Key? key}) : super(key: key);
  static String id = 'FirstInputs';
  @override
  State<FirstInputs> createState() => _FirstInputsState();
}

class _FirstInputsState extends State<FirstInputs> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Corona Features',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      // backgroundColor: Color(0xFFF7CCD6),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/corona2.jpg'),
            opacity: 1,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputTitle(title: 'Cough:'), //cough
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 1,
                          lowRange: 0,
                          hint: 'Value range: 0 - 1',
                          controller: CoronaCubit.get(context).cough),
                      const SizedBox(height: 15),
                      // Fever
                      InputTitle(title: 'Fever :'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 1,
                          lowRange: 0,
                          hint: 'Value range: 0 -1',
                          controller: CoronaCubit.get(context).fever),
                      const SizedBox(height: 15),
                      // Sore Throat
                      InputTitle(title: 'Sore_Throat:'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 1,
                          lowRange: 0,
                          hint: 'Value range: 0 - 1',
                          controller: CoronaCubit.get(context).sore_throat),
                      const SizedBox(height: 15),
                      // shortness of breath
                      InputTitle(title: 'Shortness_of_breath :'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 1,
                          lowRange: 0,
                          hint: 'Value range: 0 - 1',
                          controller:
                              CoronaCubit.get(context).shortness_of_breath),
                      const SizedBox(height: 15),

                      Button(
                          title: 'Next',
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, SecondInputs.id);
                            }
                          }),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
