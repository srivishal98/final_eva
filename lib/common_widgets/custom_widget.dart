import 'dart:ffi';

import 'package:flutter/material.dart';

import '../constant/constant.dart';



class customWidget extends StatelessWidget {
  String? image;
  String? no;
  String? title;
  String? des;
  customWidget({required this.image,required this.no,required this.title,this.des});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bg,
        border: Border.all(
            width: 2,
            color: border
        ),
      ),
      //  foregroundDecoration: ,
      height: 128,
      width: 125,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image!,
          height: 30 ,
          width: 30,),
          RichText(
            text : TextSpan(
              children: <TextSpan>[
                TextSpan(text: no,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Quicksand",
                    fontSize: 18,
                    color: black,
                  ),
                ),

                TextSpan( text : title,
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 18,
                    color: black,
                  ),
                ),

              ],
            ),
          ),
          Text(des!,
            style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 18,
             //   fontWeight: FontWeight.bold
            ),),


        ],

      ),

    );
  }
}
