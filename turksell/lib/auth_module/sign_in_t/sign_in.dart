



import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/account_page/ui/widget/custome_button/custome_button.dart';
import 'package:turksell/utils/project_color/project_color.dart';

import '../auth_routes.dart';
import '../style_auth.dart';



@provide
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                                image: NetworkImage("https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg"),
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
                    hint: "user name",
                    icon: Icon(Icons.person)),
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  color: Colors.white,
                  child: TextFormField(

                    style: StyleAuth.getTextSyle(size: 14,color:ProjectColors.bgIconDay ,day: true),
                    decoration: StyleAuth.getInputDecorationDay(

                    hint: "Password",
                    icon: Icon(Icons.lock)),
                  ),
                ),


                SizedBox(height: 10,),

                Row(children: [
                  Text("Forgot Password",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),)
                ],),
                SizedBox(height: 59,),


                CustomeButton(borderColor: Colors.transparent,raduis: 4,buttonColor: ProjectColors.dpColor,txt:
                  "Login",textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),),

                SizedBox(height: 50,),


                Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Text("Or",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),textAlign:
                    TextAlign.center,)
                ],),

                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  InkWell(
                  onTap: (){Navigator.of(context).pushNamed(AuthRoutesAnime.ROUTE_CREATE_ACCOUNT);

                    },
                    child: Text("Sign up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),textAlign:
                    TextAlign.center,),
                  )
                ],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
