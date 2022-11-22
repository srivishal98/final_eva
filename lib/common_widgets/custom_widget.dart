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
      // height: MediaQuery.of(context).size.height * 0.14,
      // width: MediaQuery.of(context).size.width * 0.30,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bg,
        border: Border.all(
            width: 2,
            color: border
        ),
      ),
      //  foregroundDecoration: ,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(image!,
          height: MediaQuery.of(context).size.height* 0.07 ,
          width: MediaQuery.of(context).size.width* 0.07 ,),
          RichText(
            text : TextSpan(
              children: <TextSpan>[
                TextSpan(text: no,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Quicksand",
                    fontSize: 16,
                    color: black,
                  ),
                ),

                TextSpan( text : title,
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 16,
                    color: black,
                  ),
                ),

              ],
            ),
          ),
          Text(des!,
            style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 16,
             //   fontWeight: FontWeight.bold
            ),),


        ],

      ),

    );
  }
}
