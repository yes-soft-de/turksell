





import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/account_page/ui/widget/custome_button/custome_button.dart';
import 'package:turksell/auth_module/widget/social_icon/social_icon.dart';
import 'package:turksell/generated/l10n.dart';
import 'package:turksell/utils/project_color/project_color.dart';

import '../style_auth.dart';



@provide
class SignUp extends StatefulWidget {


  final StyleAuth styleApp;


  SignUp(this.styleApp);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: ProjectColors.bgSignUpDark,
        appBar: AppBar(
          backgroundColor:  ProjectColors.bgSignUpDark,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        child: Image.asset("assets/images/logo_dark.png"),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),

                TextFormField(
                  style: StyleAuth.getTextSyle(size: 14,color:ProjectColors.bgIconDark ,day: false),
                  decoration: StyleAuth.getInputDecorationUnderLineDark(
                    label: S.of(context).name,
                      hint:  S.of(context).name),
                ),

                TextFormField(
                  style: StyleAuth.getTextSyle(size: 14,color:ProjectColors.bgIconDark ,day: false),
                  decoration: StyleAuth.getInputDecorationUnderLineDark(
                      label: S.of(context).email,
                      hint: S.of(context).email,icon: Icon(Icons.email,color: ProjectColors.bgIconDark,)),
                ),

                TextFormField(
                  style: StyleAuth.getTextSyle(size: 14,color:ProjectColors.bgIconDark ,day: false),
                  decoration: StyleAuth.getInputDecorationUnderLineDark(
                    label: S.of(context).password,
                      hint: S.of(context).password,icon: Icon(Icons.work,color: ProjectColors.bgIconDark,)),
                ),



                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocalIcon(
                      day: false,
                      iconSrc: "assets/images/facebook.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      day: false,
                      iconSrc: "assets/images/twitter.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      day: false,
                      iconSrc: "assets/images/google-plus.svg",
                      press: () {},
                    ),
                  ],
                ),


                

              ],
            ),
          ),
        ),

        bottomNavigationBar:

        CustomeButton(
          txt: "تابع",
          textStyle: StyleAuth.getTextSyle(day: false,size: 14,),
          press: (){
            //  Navigator.pushNamed(context, RotingModule.ROUTE_ANIM_SETTIING_PAGE);
          },

        ),

      ) ,
    );
  }
}
