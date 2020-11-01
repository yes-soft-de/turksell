

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CardHistory extends StatelessWidget {

  String title;
  String desc;
  String type;



  CardHistory({this.title='', this.desc='',this.type=''});

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,

      ),

      clipBehavior: Clip.hardEdge,
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4,vertical: 8),

        child: Row(
          children: [
            Icon(Icons.add_alert,size:30 ,),


            Expanded(

              child: Container(

                child: RichText(


                  text: TextSpan(text: '$title',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(text: ' $desc ',style: TextStyle(color: Colors.black87,fontSize: 16),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {


                              }),

                      ]),
                ),
              ),
            ),

            SizedBox(width: 20,),
            Text('($type)',style:  TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w700),)
          ],
        ),
      ),


    );
  }
}
