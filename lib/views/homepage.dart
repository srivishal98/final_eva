import 'package:final_eva/common_widgets/largebold.dart';
import 'package:final_eva/common_widgets/row_column.dart';
import 'package:final_eva/views/gmap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../common_widgets/box.dart';
import '../common_widgets/custom_widget.dart';
import '../common_widgets/large_text.dart';
import '../common_widgets/row1.dart';
import '../common_widgets/row2.dart';
import '../common_widgets/smalltext.dart';
import '../constant/constant.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../modal/pageview.dart';



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
 late YoutubePlayerController _controller;




  @override
  void initState(){
      _controller = YoutubePlayerController(
    initialVideoId: 'Vbwz-Zlw4fc',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      loop : true,
        forceHD: true,
      // mute: true,
    ),
  );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(

          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width ,
              // color: Colors.red,
              child: CarouselSlider(

                options: CarouselOptions(
                  autoPlay: true,
                ),
                items: images
                    .map(
                      (item) => Center(
                    child: Image.asset(item,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,

                    ),

                  ),
                )
                    .toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 250),
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
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children : [
                    GestureDetector(child: customWidget(image: "assets/icon/icon_bed.png", title: ' BedRoom', no: '1',des: "",),
                      onTap: () => launchUrl(url),),
                    GestureDetector(child: customWidget(image: "assets/icon/icon_area.png", title: ' Sft', no: '3964.67 ',des: "(Area)",),
                      onTap: () => launchUrl(url),),
                    GestureDetector(child: customWidget(image:"assets/icon/icon_sq_area.png", title: ' Sft', no: '1437.74',des: "(Plot Area)",),
                      onTap: () => launchUrl(url),),
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
                   FittedBox(
                     child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                       GestureDetector(
                         child: Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: black,
                      ),
                      //  foregroundDecoration: ,
                      height: MediaQuery.of(context).size.height* .15,
                      width: MediaQuery.of(context).size.width* .30,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("assets/icon/icon1.png",
                              ),
                              height: 30 ,
                              width: 30,),

                            Text("Mortage ",
                              style: TextStyle(
                                fontFamily: "Quicksand",
                                fontSize: 13,
                                color: Colors.white
                                //   fontWeight: FontWeight.bold
                              ),),
                          ],
                      ),
                  ),
                         onTap: () => launchUrl(url),
                       ),
                     SizedBox(width: 10,),
                  GestureDetector(
                      child: Container(
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
                        height:  MediaQuery.of(context).size.height* .15  ,
                        width: MediaQuery.of(context).size.width* .30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("assets/icon/icon1.png"),
                              height: 30,
                              width: 30),

                            Text("Broucher",
                              style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontSize: 13,
                                  color: red
                                //   fontWeight: FontWeight.bold
                              ),),


                          ],

                        ),

                      ),
                      onTap: () => launchUrl(url),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: red,
                        ),
                        //  foregroundDecoration: ,
                        height: MediaQuery.of(context).size.height* .15,
                        width: MediaQuery.of(context).size.width* .30,
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
                                  fontSize: 13,
                                  color: Colors.white
                                //   fontWeight: FontWeight.bold
                              ),),
                          ],

                        ),

                      ),
                      onTap: () => launchUrl(url),
                  ),
                ],
              ),
                   ),
                    SizedBox(height: 10,),
                    Text("Property Details",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),

                    ),
                    SizedBox(height: 10,),
                    Container(

                      padding: EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 20),
                      height: MediaQuery.of(context).size.height* 0.35,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color : bg,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            width: 2,
                            color: border
                        ),
                      ),

                     child:
                     // Column(
                     //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     //
                     //  children: [
                     //    rowColumn(title1: "Product Name", desc1: "Cavalli Tower", title2: 'Property Name', desc2: 'Cavalli Casa Tower',),
                     //    rowColumn(title1: "Property Status", desc1: "Off-Plan", title2: 'Anticipated Complete Date', desc2: '10 Oct 2022',),
                     //    rowColumn(title1: "Gross Price", desc1: "AED 16,437,000", title2: 'VAT', desc2: '10 Oct 2022',),
                     //    rowColumn(title1: "Net Price", desc1: "AED 16,437,000", title2: 'Permitted use', desc2: 'Residential Apartments',),
                     //  ],
                     // ),
                     Column(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallText(text: 'Product Name', ),
                              SizedBox(width: 100,),
                              Expanded(child: SmallText(text: 'Property Name',align: TextAlign.left,)),
                            ],
                          ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             LargeText(text: 'Cavalli Tower',),
                             SizedBox(width: 95,),
                             Expanded(child: LargeText(text: 'Cavalli Casa Tower')),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             SmallText(text: 'Property Status',),
                             SizedBox(width: 95,),
                             Expanded(child: SmallText(text: 'Anticipated Complete Date',)),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             LargeText(text: 'Off-Plan',),
                             SizedBox(width: 125,),
                             Expanded(child: LargeText(text: '10 Oct 2022')),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             SmallText(text: 'Gross Price',),
                             SizedBox(width: 115,),
                             Expanded(child: SmallText(text: 'VAT',)),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             LargeText(text: 'AED 16,437,000',),
                             SizedBox(width: 90,),
                             Expanded(child: LargeText(text: '10 Oct 2022')),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             SmallText(text: 'Net Price',),
                             SizedBox(width: 125,),
                             Expanded(child: SmallText(text: 'Permitted use',)),
                           ],
                         ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             LargeText(text: 'AED 16,437,000',),
                             SizedBox(width: 90,),
                             Expanded(child: LargeText(text: 'Residential Apartments')),
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
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallText(text: 'Title Deed (A)',),
                              SmallText(text: 'Land Registration Fee (B)',),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LargeText(text: 'AED 540',),
                              LargeText(text: 'AED 657,480'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallText(text: 'OQOOD Fee(C)',),
                              SmallText(text: 'DSR Fees(D)',),
                              SmallText(text: 'Other Fee(E)',),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
                      height: MediaQuery.of(context).size.height * 0.50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color : bg,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2,
                            color: border,
                        ),
                      ),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            row1(title1: 'Deposit', title2: 'AED 3,944,880',),
                            row2(t1: '-', t2: '24%',),
                            Divider(),
                            row1(title1: '1st Installment', title2: 'AED 575,295',),
                            row2(t1: 'Within 3 Month(s) Of Sale Date', t2: '3.5%',),
                            Divider(),
                            row1(title1: '2nd Installment', title2: 'AED 3,944,880',),
                            row2(t1: 'Within 6 Month(s) Of Sale Date', t2: '3.5%',),
                            Divider(),
                            row1(title1: '3rd Installment', title2: 'AED 3,944,880',),
                            row2(t1: 'Within 9 Month(s) Of Sale Date', t2: '3.5%',),
                            Divider(),
                            row1(title1: '4nd Installment', title2: 'AED 3,944,880',),
                            row2(t1: 'Within 12 Month(s) Of Sale Date', t2: '3.5%',)
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color : bg,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: border
                          ),
                        ),
                        // color: red,
                        child: ExpansionTile(
                          title: LargeBoldText( text: "Amenities & Facilities"),
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                               // color: red,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),

                                ),
                              ),
                              height: MediaQuery.of(context).size.height* 0.20,
                              child:  Wrap(
                               // direction: Axis.horizontal,
                                   spacing: 4,
                                runSpacing: 30,
                                children : [
                                  box(icons: "assets/icon/icon_bed.png", title: 'Party Hall',),
                                  box(icons: "assets/icon/icon_bed.png", title: 'Fitness',),
                                  box(icons: "assets/icon/icon_bed.png", title: 'Market',),
                                  box(icons: "assets/icon/icon_bed.png", title: 'Security',),
                                  box(icons: "assets/icon/icon_bed.png", title: 'Kids Play',),
                                  box(icons: "assets/icon/icon_bed.png", title: 'Parking',),
                                  box(icons: "assets/icon/icon_bed.png", title: 'Generator',),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      onTap: () => launchUrl(url),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color : bg,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: border
                          ),
                        ),
                        // color: red,
                        child: ExpansionTile(
                          title: LargeBoldText( text: "Floor Plans"),
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                // color: red,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),

                                ),
                              ),
                              height: MediaQuery.of(context).size.height* 0.20,
                            ),
                          ],
                        ),
                      ),
                      //onTap: () => launchUrl(url),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color : bg,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: border
                          ),
                        ),
                        // color: red,
                        child: ExpansionTile(
                          title: LargeBoldText( text: "Project Location"),
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                // color: red,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),

                                ),
                              ),
                              height: MediaQuery.of(context).size.height* 0.30,
                              child: Container(

                                  child: GMap( )),
                            ),
                          ],
                        ),
                      ),
                      //onTap: () => launchUrl(url),
                    ),

                    SizedBox(height: 20,),
                    Text("SKYZ by Danube Video Tour",
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: 20,),
                    YoutubePlayer(
                      controller: _controller,

                    // onReady: ,
                    //  showVideoProgressIndicator: true,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),



          ],

        ),
      ),
    );
  }
}
