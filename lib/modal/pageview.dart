import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  final images;
  Pages({this.images});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,

      child: Container(

        decoration: BoxDecoration(

        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
    image: DecorationImage(

    image: AssetImage(
    images),
    fit: BoxFit.fill),



      ),
      ),
    );
  }
}