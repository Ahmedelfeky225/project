// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({Key? key, required this.title, this.onTap}) : super(key: key);
  String? title;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 50,
          color:const Color.fromARGB(255, 17, 5, 0),
          child: Center(
            child: Text(
              title!,
              style: const TextStyle(
                fontSize: 22,
                color: Color.fromARGB(234, 253, 250, 251),
              ),
            ),
          )),
    );
  }
}
