
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class box extends StatelessWidget {
  String icons;
  String title;

   box({required this.icons,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      //height: MediaQuery.of(context).size.height * .50,
      width: 80,
      child: Column(
        children: [
          Image.asset(icons,
            height: 25 ,
            width: 25,),
          SizedBox(height: 10,),
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Quicksand",
              fontSize: 14,
              color: black,
            ),),
        ],
      ),
    );
  }
}
