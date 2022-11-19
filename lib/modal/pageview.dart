import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  final images;
  Pages({this.images});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
             Image(image: AssetImage(images)),

          ]
      ),
    );
  }
}