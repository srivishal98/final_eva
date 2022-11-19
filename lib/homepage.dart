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
  List<Widget> _list=<Widget>[
     Center(child:Pages(images: a1,)),
     Center(child:Pages(images: a2,)),
     Center(child:Pages(images: a3,)),
     Center(child:Pages(images: a4,))
  ];
  int _curr=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            PageView(
              children:
              _list,
              scrollDirection: Axis.horizontal,
               reverse: true,
               physics: BouncingScrollPhysics(),
              controller: controller,
              onPageChanged: (num){
                setState(() {
                  _curr=num;
                });
              },

            ),
          ],
        ),
      ),
    );
  }
}
