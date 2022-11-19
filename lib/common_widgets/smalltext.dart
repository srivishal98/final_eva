import 'package:flutter/material.dart';


class SmallText extends StatelessWidget {
  String? text;
 SmallText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
      style: TextStyle(
          fontFamily: "Quicksand",
          fontSize: 12,
          fontWeight: FontWeight.bold
      ),);
  }
}
