// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:corona/components/button.dart';
import 'package:corona/components/input_titles.dart';
import 'package:corona/components/text_form_field.dart';
import 'package:corona/cubit/corona_cubit.dart';
import 'package:corona/results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondInputs extends StatefulWidget {
  const SecondInputs({Key? key}) : super(key: key);
  static String id = 'SecondInputs';
  @override
  State<SecondInputs> createState() => _SecondInputsState();
}

class _SecondInputsState extends State<SecondInputs> {
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
                      InputTitle(title: 'Headace:'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 1,
                          lowRange: 0,
                          hint: 'Value range: 0 - 1',
                          controller: CoronaCubit.get(context).head_ache),
                      const SizedBox(height: 15),
                      // texture_mean
                      InputTitle(title: 'age_60_and_above'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 1,
                          lowRange: 0,
                          hint: 'Value range: 0 - 1',
                          controller:
                              CoronaCubit.get(context).age_60_and_above),
                      const SizedBox(height: 15),
                      // concave_points_mean
                      InputTitle(title: 'Gender :'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 1,
                          lowRange: 0,
                          hint: 'Value range: 0 - 1',
                          controller: CoronaCubit.get(context).gender),
                      const SizedBox(height: 15),
                      // Symmetry Mean
                      InputTitle(title: 'Test_indication:'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 1,
                          lowRange: 0,
                          hint: 'Value range: 0 - 1',
                          controller: CoronaCubit.get(context).test_indication),
                      const SizedBox(height: 15),
                      // fractal_dimension_mean

                      Button(
                        title: 'Submit',
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            context.read<CoronaCubit>().postData();
                            Navigator.pushNamed(context, Result.id);
                          }
                        },
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
