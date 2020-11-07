import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/utils/project_color/project_color.dart';

@provide
class StyleSetting {
  static OutlineInputBorder getOutLineBorder(
      {double width, Color color, double radius}) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          width: width,
          color: color,
        ),
        borderRadius: BorderRadius.circular(radius));
  }

  static InputDecoration getInputDecorationDay(
      {String hint = "", String label = "", Widget icon}) {
    if (icon == null)
      icon = Icon(
        Icons.person,
        color: ProjectColors.bgIconDay,
      );
    return InputDecoration(
      prefixIcon: IconButton(
        onPressed: () {},
        icon: icon,
      ),
      alignLabelWithHint: true,
      hintText: "$hint",
      hintStyle: TextStyle(fontSize: 14, color: Colors.black),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      focusedBorder: getOutLineBorder(
          width: 1, color: ProjectColors.bgIconDark, radius: 2),
      enabledBorder: getOutLineBorder(
          width: 1.5, color: ProjectColors.bgIconDark, radius: 2),
      errorBorder: getOutLineBorder(
          width: 1.5, color: ProjectColors.bgIconDark, radius: 2),
      focusedErrorBorder: getOutLineBorder(
          width: 1.5, color: ProjectColors.bgIconDark, radius: 2),
    );
  }

  static InputDecoration getInputDecorationUnderLineDay(
      {String hint, String label, Widget icon}) {
    if (icon == null)
      icon = Icon(
        Icons.person,
        color: ProjectColors.bgIconDay,
      );
    return InputDecoration(
      suffixIcon: IconButton(
        onPressed: () {},
        icon: icon,
      ),
      alignLabelWithHint: true,
      hintText: hint == null ? '' : hint,
      labelText: label == null ? '' : label,
      hintStyle: getTextSyle(size: 14, color: ProjectColors.bgIconDay),
      labelStyle: getTextSyle(size: 14, color: ProjectColors.bgIconDay),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.bgIconDay),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.bgIconDay),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.bgIconDay),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.bgIconDay),
      ),
    );
  }

  static InputDecoration getInputDecorationUnderLineDark(
      {String hint, String label, Widget icon}) {
    if (icon == null)
      icon = Icon(
        Icons.person,
        color: ProjectColors.bgIconDark,
      );
    return InputDecoration(
      suffixIcon: IconButton(
        onPressed: () {},
        icon: icon,
      ),
      alignLabelWithHint: true,
// TODO: Use this Language Feature :)
      hintText: hint ?? '',
      labelText: label ?? '',
      hintStyle:
          getTextSyle(size: 14, color: ProjectColors.bgIconDark, day: false),
      labelStyle:
          getTextSyle(size: 14, color: ProjectColors.bgIconDark, day: false),

      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.bgIconDark),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.bgIconDark),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.bgIconDark),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.bgIconDark),
      ),
    );
  }

  static TextStyle getTextSyle(
      {double size,
      Color color,
      FontWeight fontWeight,
      bool underLine,
      bool day = true}) {
    if (underLine == null) underLine = false;

    if (day)
      color = ProjectColors.bgIconDay;
    else
      color = ProjectColors.bgIconDark;

    return TextStyle(
        fontSize: size,
        fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
        color: color,
        decoration: underLine ? TextDecoration.underline : TextDecoration.none);
  }
}
