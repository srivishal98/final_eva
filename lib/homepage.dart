import 'package:final_eva/common_widgets/largebold.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'common_widgets/custom_widget.dart';
import 'common_widgets/large_text.dart';
import 'common_widgets/smalltext.dart';
import 'constant/constant.dart';
import 'package:url_launcher/url_launcher.dart';
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
                  autoPlay: true,
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
               //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    InkWell(
                        child: Text("Read more..",
                          style: TextStyle(
                          color: Colors.red,
                          fontFamily: "Quicksand",
                          fontSize: 18,

                        ),),
                        onTap: () => launchUrl(url),
                    ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: black,
                    ),
                    //  foregroundDecoration: ,
                    height: 128,
                    width: 125,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/icon/icon1.png"),
                          height: 30 ,
                          width: 30,),

                        Text("Mortage Calculator",
                          style: TextStyle(
                            fontFamily: "Quicksand",
                            fontSize: 18,
                            color: Colors.white
                            //   fontWeight: FontWeight.bold
                          ),),


                      ],

                    ),

                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                        color: red
                      ),

                    ),
                    //  foregroundDecoration: ,
                    height: 128,
                    width: 125,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/icon/icon1.png"),
                          height: 30 ,
                          width: 30,),

                        Text("Broucher",
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              fontSize: 18,
                              color: red
                            //   fontWeight: FontWeight.bold
                          ),),


                      ],

                    ),

                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: red,
                    ),
                    //  foregroundDecoration: ,
                    height: 128,
                    width: 125,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/icon/icon1.png"),
                          height: 30 ,
                          width: 30,),

                        Text("Sale Offer",
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              fontSize: 18,
                              color: Colors.white
                            //   fontWeight: FontWeight.bold
                          ),),
                      ],

                    ),

                  ),
                ],
              ),
                    SizedBox(height: 10,),
                    Text("Property Details",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(top: 20,bottom: 20,right: 15,left: 15),
                      height: 268,
                      width: 398,
                      decoration: BoxDecoration(
                        color : bg,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2,
                            color: border
                        ),
                      ),
                     child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SmallText(text: 'Product Name',),
                              SmallText(text: 'Property Name',),
                            ],
                          ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             LargeText(text: 'Cavalli Tower',),
                             LargeText(text: 'Cavalli Casa Tower'),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             SmallText(text: 'Property Status',),
                             SmallText(text: 'Anticipated Complete Date',),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             LargeText(text: 'Off-Plan',),
                             LargeText(text: '10 Oct 2022'),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             SmallText(text: 'Gross Price',),
                             SmallText(text: 'VAT',),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             LargeText(text: 'AED 16,437,000',),
                             LargeText(text: '10 Oct 2022'),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             SmallText(text: 'Net Price',),
                             SmallText(text: 'Permitted use',),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             LargeText(text: '10 Oct 2022',),
                             LargeText(text: 'Residential Apartments'),
                           ],
                         ),
                       ],
                     ),
                    ),
                    SizedBox(height: 20,),
                    Text("Additional Charges",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.only(top: 20,bottom: 20,right: 15,left: 15),
                      height: 268,
                      width: 398,
                      decoration: BoxDecoration(
                        color : bg,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2,
                            color: border
                        ),
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SmallText(text: 'Title Deed (A)',),
                              SmallText(text: 'Land Registration Fee (B)',),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LargeText(text: 'AED 540',),
                              LargeText(text: 'AED 657,480'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SmallText(text: 'OQOOD Fee(C)',),
                              SmallText(text: 'DSR Fees(D)',),
                              SmallText(text: 'Other Fee(E)',),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LargeText(text: 'AED 1,000',),
                              LargeText(text: 'AED 1,000'),
                              LargeText(text: 'NA'),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            SmallText(text: 'Total Fees to DLD',),
                              Text( 'AED 660,020',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),),
                      ]
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: red,
                              ),
                              Expanded(
                                  child: SmallText(text: 'These charges are approximate values. It may be subject to change by the authorities.',)),
                            ],
                          ),
                        ],
                      ),

                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment Plan",
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(
                          child: Row(
                            children:[
                          Icon(Icons.arrow_forward,
                          color: red,),
                          InkWell(
                            child: Text("View All",
                              style: TextStyle(
                                color: Colors.red,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.bold,
                                fontSize: 18,

                              ),),
                            onTap: () => launchUrl(url),
                          ),
                          ]
                          )
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20,bottom: 20,right: 15,left: 15),
                      height: 439,
                      width: 398,
                      decoration: BoxDecoration(
                        color : bg,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2,
                            color: border
                        ),
                      ),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  LargeBoldText(text: "Deposit"),
                                  LargeText(text: "AED 3,944,880")
                                ],
                      ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  LargeText(text: "-"),
                                  Container(
                                    height: 25 ,
                                    width: 44,
                                    color: red,
                                    child: Center(
                                      child: Text(
                                        "24%",
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                ],

                              )

                          ]
                      ),
                    ),

                  ],
                ),
              ),



          ],

        ),
      ),
    );
  }
}
