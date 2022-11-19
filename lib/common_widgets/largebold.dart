import 'package:flutter/material.dart';


class LargeBoldText extends StatelessWidget {
  String? text;
  LargeBoldText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
      style: TextStyle(
        fontFamily: "Quicksand",
        fontSize: 16,
         fontWeight: FontWeight.bold
      ),);
  }
}