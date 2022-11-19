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
               child: Center(
                 child: CircularProgressIndicator(),
               ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(

                margin: EdgeInsets.only(left: 20,right: 20,top: 320),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("CCT/55/5501",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                        ),),
                      SizedBox(height: 10,),
                      Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           Image(
                               image: AssetImage("assets/icon/1.png"),
                             width: 20,
                             height: 20,
                           ),
                          SizedBox(width: 5,),
                          Text("Residential Apartments",
                          style: TextStyle(
                            fontFamily: "Quicksand",
                            fontSize: 14
                          ),),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: grey,
                            ),
                            height: 10,
                            width: 10,
                          ),
                          SizedBox(width: 5,),
                          Text("Premium Sea View",
                            style: TextStyle(
                                fontFamily: "Quicksand",
                                fontSize: 14
                            ),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("AED 850,000",
                        style: TextStyle(
                            fontFamily: "Quicksand",
                            fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 10,),
                      Text("Discover \"SKYZ by Danube\" Living",
                        style: TextStyle(
                            fontFamily: "Quicksand",
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: rec_color,
                        ),
                      //  foregroundDecoration: ,
                        height: 128,
                        width: 125,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/icon/icon_bed.png"),
                            width: 50,
                            height: 50,),
                            RichText(
                              text : TextSpan(
                              children: const <TextSpan>[
                                TextSpan(text: '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    fontFamily: "Quicksand",
                                    fontSize: 18,
                                    color: black,
                                  ),
                                ),
                                TextSpan(text: ' Bedroom',
                                  style: TextStyle(
                                    fontFamily: "Quicksand",
                                    fontSize: 18,
                                    color: black,
                                  ),
                                ),

                              ],
                            ),
                            ),


                          ],

                        ),

                      ),

                    ],
                  ),
                ),
            ),


          ],

        ),
      ),
    );
  }
}
