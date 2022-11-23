import 'package:flutter/material.dart';

import '../constant/constant.dart';
import 'large_text.dart';
class row2 extends StatelessWidget {
  String? t1;
  String? t2;
   row2({required this.t1,required this.t2});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 5,),
        LargeText(text: t1),
        Spacer(),
        Container(
         // margin: EdgeInsets.only(left: 50),
          height: 25 ,
          width: 44,
          color: red,
          child: Center(
            child: Text(
              t2!,
              style: TextStyle(
                  color: Colors.white,
                fontSize: 12
              ),
            ),
          ),
        ),
        SizedBox(width: 5,),
        Divider(),
      ],

    );
  }
}
