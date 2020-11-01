


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/details_module/car_details/widget/custome_button/custome_button.dart';
import 'package:turksell/details_module/car_details/widget/text_details/TextDetails.dart';
import 'package:turksell/utils/project_color/project_color.dart';

@provide
class CarDetails extends StatefulWidget {
  @override
  _CarDetailsState createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: ProjectColors.pColor,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Text('Buick 1790',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.black),),
                SizedBox(height: 9,),
                Row(
                  children: [

                    Icon(Icons.home) ,
                    SizedBox(width: 11,),
                    Column(children: [
                      Text('home home',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),),
                    ],)
                  ],
                ),
                SizedBox(height: 4,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 168,
                          width: 343,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3.0)),
                            image: DecorationImage(
                                image: NetworkImage('https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg'),
                                fit: BoxFit.cover),

                          ),

                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomeButton(txt: 'show Pics',borderColor: Colors.transparent,raduis: 4
                      ,textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),)

                  ],
                ),
                SizedBox(height: 8,),
                TextDetails(title: 'type',desc: 'DEWC DESC DESC DEWSC DESC',),
                TextDetails(title: 'brand',desc: 'DEWC DESC DESC DEWSC DESC',),
                TextDetails(title: 'year of realse',desc: 'DEWC DESC DESC DEWSC DESC',),
                TextDetails(title: 'duration of use',desc: 'DEWC DESC DESC DEWSC DESC',),
                TextDetails(title: 'Gear type ',desc: 'DEWC DESC DESC DEWSC DESC',),
                TextDetails(title: 'cc',desc: 'DEWC DESC DESC DEWSC DESC',),
                TextDetails(title: 'clender',desc: 'DEWC DESC DESC DEWSC DESC',),
                TextDetails(title: 'fule of use',desc: 'DEWC DESC DESC DEWSC DESC',),
                TextDetails(title: 'location',desc: 'DEWC DESC DESC DEWSC DESC',),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Price',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black)),
                    SizedBox(width: 4,),
                    Flexible(child: Text('\$ 3545',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black)))
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    SizedBox(width: 10,),
                    CustomeButton(txt: 'Request lawer',borderColor: Colors.transparent,raduis: 4
                      ,textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),SizedBox(width: 8,),
                    CustomeButton(txt: 'Request chats',borderColor: Colors.transparent,raduis: 4
                      ,textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
                    SizedBox(width: 10,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
