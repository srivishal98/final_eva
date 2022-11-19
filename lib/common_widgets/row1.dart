import 'package:flutter/material.dart';

import 'large_text.dart';
import 'largebold.dart';
class row1 extends StatelessWidget {
  String? title1;
  String title2;
  row1({
   required this.title1,required this.title2
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LargeBoldText(text: title1),
        LargeText(text: title2)
      ],
    );
  }
}
