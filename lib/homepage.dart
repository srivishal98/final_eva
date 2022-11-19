import 'package:flutter/material.dart';

import 'constant/constant.dart';
import 'modal/pageview.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  PageController controller=PageController();
  final List<Widget> _list=<Widget>[
     Center(child:Pages(images: a1,)),
     Center(child:Pages(images: a2,)),
     Center(child:Pages(images: a3,)),
     Center(child:Pages(images: a4,))
  ];
  int curr=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(

          children: [
            // PageView.builder(
            //   itemCount:  _list.length,
            //
            //   scrollDirection: Axis.horizontal,
            //    reverse: true,
            //    physics: BouncingScrollPhysics(),
            //   controller: controller,
            //   onPageChanged: (num){
            //     setState(() {
            //       curr=num;
            //     });
            //   },
            //   itemBuilder: (BuildContext context, int curr){
            //     return
            //       Container(
            //       height: 20.0,
            //         width: 50.0,
            //         child: Image.network(
            //         "${Pages(images: curr)}",
            //         fit: BoxFit.cover,
            //           //Pages(images: curr)
            //         ),
            //
            //       );
            //   },
            //
            // ),


            Container(
              height: 300,
              width: double.infinity,
              color: Colors.red,
            ),

          ],
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: Column(
                children: [
                  Text("CCT/55/5501",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Quicksand',
                    ),)
                ],
              ),
            ),
        ),
      ),
    );
  }
}
