import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'common_widgets/custom_widget.dart';
import 'constant/constant.dart';
import 'modal/pageview.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



 final List<String> images = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(

          children: [
            Container(
              height: 300,

              // color: Colors.red,
              child: CarouselSlider(

                options: CarouselOptions(
                //  autoPlay: true,
                ),
                items: images
                    .map(
                      (item) => Center(
                    child: Image.asset(item,
                      fit: BoxFit.fitHeight,
                      width: double.infinity,
                      height: double.infinity,

                    ),

                  ),
                )
                    .toList(),
              ),
            ),
            Container(

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
                             image: AssetImage("assets/icon/icon1.png"),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customWidget(image: "assets/icon/icon_bed.png", title: ' BedRoom', no: '1',des: "",),
                        customWidget(image: "assets/icon/icon_area.png", title: ' Sft', no: '3964.67 ',des: "(Area)",),
                        customWidget(image:"assets/icon/icon_sq_area.png", title: ' Sft', no: '1437.74',des: "(Plot Area)",),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("This unique residential project located in Arjan close to Miracle Garden, adjacent to the heavily travelled Sheikh Mohammed Bin Zayed road making it conven...,",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 18,

                      ),),
                    Text("Read more..",
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: "Quicksand",
                        fontSize: 18,

                      ),),



                  ],
                ),
              ),

            FloatingActionButton(onPressed: (){},
                      ),


          ],

        ),
      ),
    );
  }
}
