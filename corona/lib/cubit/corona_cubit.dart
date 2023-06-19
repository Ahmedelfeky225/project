// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, unnecessary_brace_in_string_interps, avoid_print

import 'package:corona/models/corona_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
part 'corona_state.dart';
class CoronaCubit extends Cubit<CoronaState> {
  CoronaCubit() : super(CoronaInitial());
  static CoronaCubit get(context) => BlocProvider.of(context);
  TextEditingController cough = TextEditingController();
  TextEditingController fever = TextEditingController();
  TextEditingController sore_throat = TextEditingController();
  TextEditingController shortness_of_breath = TextEditingController();
  TextEditingController head_ache = TextEditingController();
  TextEditingController age_60_and_above = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController test_indication = TextEditingController();
  Future<void> postData() async {
    emit(CoronaLoading());
    try {
  final response = await Dio().post(
        'https://proj-5onb.onrender.com/predictions',
        data: {
        "values": [
          cough.text,
          fever.text,
          sore_throat.text,
          shortness_of_breath.text,
          head_ache.text,
          age_60_and_above.text,
          gender.text,
          test_indication.text,
        ]
      });
  final data = CoronaModel.fromJson(response.data);
  print('my data is ${data}');
  emit(CoronaSuccess(data));
} on DioError catch (e) {
  print('fffff${e.toString()}');
}
  }
}
