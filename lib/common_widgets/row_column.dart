import 'package:final_eva/common_widgets/large_text.dart';
import 'package:final_eva/common_widgets/smalltext.dart';
import 'package:flutter/material.dart';

class rowColumn extends StatelessWidget {

  String title1;
  String desc1;
  String title2;
  String desc2;
  rowColumn({required this.title1,required this.desc1,required this.title2,required this.desc2});

  @override
  Widget build(BuildContext context) {
    return Row(
     //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(

          children: [
            SmallText(text: title1),
            SizedBox(height: 10,),
            LargeText(text: desc1)
          ],
        ),
           Column(

               children: [
               SmallText(text: title2),
                 SizedBox(height: 10,),
               LargeText(text: desc2)
             ],
           )
      ],
    );
  }
}
