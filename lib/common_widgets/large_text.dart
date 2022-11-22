import 'package:flutter/material.dart';


class LargeText extends StatelessWidget {
  String? text;
  LargeText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
      style: TextStyle(
          fontFamily: "Quicksand",
          fontSize: 14,
         // fontWeight: FontWeight.bold
      ),);
  }
}
