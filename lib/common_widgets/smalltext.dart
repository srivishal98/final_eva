import 'package:flutter/material.dart';


class SmallText extends StatelessWidget {
  String? text;
  TextAlign? align;
 SmallText({required this.text,this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
      style: TextStyle(
          fontFamily: "Quicksand",
          fontSize: 12,
          fontWeight: FontWeight.bold
      ),
    textAlign: align,
    );
  }
}
