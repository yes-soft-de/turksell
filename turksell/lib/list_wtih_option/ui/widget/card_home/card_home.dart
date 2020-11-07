


import 'package:flutter/material.dart';
import 'package:turksell/details_module/details_routes.dart';

class CardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){Navigator.of(context).pushNamed(DetailsRoutes.ROUTE_Car);},
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape:OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,

        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),

          child: Column(
            children: [
              Row(
                children: [

                  Icon(Icons.home) ,
                  SizedBox(width: 11,),
                  Column(children: [

                    Text('home home',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                    Text('home home',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400),)
                  ],)
                ],
              ),

              SizedBox(height: 9,),
              Container(
                height: 209,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  image: DecorationImage(
                      image: NetworkImage('https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg'),
                      fit: BoxFit.cover),

                ),
                /* child:  Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(3.0)),
                             color: Colors.black.withOpacity(0.25),

                           ),


                         ),*/
              ),
              SizedBox(height: 10,),


              Row(
                children: [
                  SizedBox(width: 8,),
                  Icon(Icons.person_pin),
                  SizedBox(width: 8,),
                  Text('hassan',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                  SizedBox(width: 22,),
                  Icon(Icons.person_pin),
                  SizedBox(width: 8,),
                  Text('250 sm',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                  SizedBox(width: 22,),
                  Icon(Icons.favorite),
                  SizedBox(width: 8,),
                  Text('22',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                  SizedBox(width: 22,),
                  Icon(Icons.share),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
