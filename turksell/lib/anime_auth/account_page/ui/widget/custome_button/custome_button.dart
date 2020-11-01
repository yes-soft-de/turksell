


import 'package:flutter/material.dart';
import 'package:turksell/utils/project_color/project_color.dart';



class CustomeButton extends StatelessWidget {
  String txt;
  Color borderColor;
  Color splashColor;
  double borderWidth;
  TextStyle textStyle;
  VoidCallback press;
  Color buttonColor;
  double raduis;



  CustomeButton({this.txt,
    this.borderColor=ProjectColors.bgButtonIhaveAccount,
    this.splashColor=Colors.grey,
    this.borderWidth=1.4,

    this.textStyle,
    this.press,
    this.buttonColor=ProjectColors.actColor,
    this.raduis=0});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(raduis),
          borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
              style: BorderStyle.solid)),
      splashColor: splashColor,
      color: buttonColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(txt,
            textAlign: TextAlign.center,
            style:textStyle
        ),
      ),
      onPressed: () async {
        press();
      },
    );
  }
}
