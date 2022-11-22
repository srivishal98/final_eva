import 'package:final_eva/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: HomePage(),
      title: Text('DANUBE PRODUCTS',textScaleFactor: 2,),
      loaderColor: Colors.blue,
    );
  }
}