




import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

import 'package:turksell/anime_auth/account_page/ui/widget/custome_button/custome_button.dart';
import 'package:turksell/home_list/home_routes.dart';
import 'package:turksell/utils/project_color/project_color.dart';

import '../../../style_auth.dart';

@provide
class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor:ProjectColors.pColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(

            child: Column(

              children: [


                SizedBox(height: 50,),
                Card(
                  clipBehavior: Clip.hardEdge,
                  shape:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide.none,

                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),

                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
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
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  color: Colors.white,
                  child: TextFormField(

                    style: StyleAuth.getTextSyle(size: 14,color:ProjectColors.bgIconDay ,day: true),
                    decoration: StyleAuth.getInputDecorationDay(
                        hint: 'user name',
                        icon: Icon(Icons.person)),
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    style: StyleAuth.getTextSyle(size: 14,color:ProjectColors.bgIconDay ,day: true),
                    decoration: StyleAuth.getInputDecorationDay(
                        hint: 'email',
                        icon: Icon(Icons.email)),

                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  color: Colors.white,
                  child: TextFormField(

                    style: StyleAuth.getTextSyle(size: 14,color:ProjectColors.bgIconDay ,day: true),
                    decoration: StyleAuth.getInputDecorationDay(

                        hint: 'Password',
                        icon: Icon(Icons.lock)),
                  ),
                ),


                SizedBox(height: 16,),

                Container(
                  color: Colors.white,
                  child: TextFormField(

                    style: StyleAuth.getTextSyle(size: 14,color:ProjectColors.bgIconDay ,day: true),
                    decoration: StyleAuth.getInputDecorationDay(

                        hint: 'Confirm password',
                        icon: Icon(Icons.check)),
                  ),
                ),


                SizedBox(height: 59,),


                CustomeButton(borderColor: Colors.transparent,raduis: 4,buttonColor: ProjectColors.dpColor,txt:
                'Sign up',textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),
                press: (){Navigator.of(context).pushNamed(HomeListRoutes.ROUTE_HOME_NAVIGATION_BUTTOM);},),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
