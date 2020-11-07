

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

import 'package:turksell/turkish_auth/account_page/ui/widget/custome_button/custome_button.dart';
import 'package:turksell/generated/l10n.dart';
import 'package:turksell/utils/project_color/project_color.dart';

@provide
class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [

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
                
                Container(
                  color: ProjectColors.dpColor,
                  child: Row(
                    children: [
                      SizedBox(width: 11,),
                      Text('Hassan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),),
                     CustomeButton(txt: 'edit',textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),
                     raduis: 4,buttonColor: Colors.transparent,borderColor: Colors.white,),
                    ],
                  ),
                ),

                SizedBox(height: 35,),

                Row(children: [
                  Expanded(child: Text(S.of(context).editAccount,style:  TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 24),
                  textAlign: TextAlign.center,),)
                ],),
                SizedBox(height: 35,),
                Row(children: [
                  Expanded(child: Text(S.of(context).deleteAccount,style:  TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 24),
                    textAlign: TextAlign.center,),)
                ],),
                SizedBox(height: 35,),
                Row(children: [
                  Expanded(child: Text(S.of(context).addAccount,style:  TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 24),
                    textAlign: TextAlign.center,),)
                ],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
