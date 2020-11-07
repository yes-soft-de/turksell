import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/generated/l10n.dart';
import 'package:turksell/setting_module/widget/custome_button/custome_button.dart';
import 'package:turksell/utils/project_color/project_color.dart';

import '../style_setting.dart';

@provide
class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(3.0)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("hassan",style: TextStyle(color: Colors.white,fontSize: 16),),

                                  Card(color: Colors.transparent
                                      ,shape: StyleSetting.getOutLineBorder(width: 1,color: Colors.white,radius: 4)
                                      , child: IconButton(icon: Icon(Icons.edit,color: Colors.white,),))
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.0)),
                              color: Colors.black.withOpacity(0.25),


                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      Expanded(
                          child: Text(
                        S.of(context).general,
                        textAlign: TextAlign.start,
                        style: StyleSetting.getTextSyle(day: true),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      Expanded(
                          child: Text(
                        S.of(context).privacy,
                        textAlign: TextAlign.start,
                        style: StyleSetting.getTextSyle(day: true),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      Expanded(
                          child: Text(
                        S.of(context).account,
                        textAlign: TextAlign.start,
                        style: StyleSetting.getTextSyle(day: true),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      Expanded(
                          child: Text(
                            S.of(context).notifications,
                            textAlign: TextAlign.start,
                            style: StyleSetting.getTextSyle(day: true),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.help,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      Expanded(
                          child: Text(
                        S.of(context).info,
                        textAlign: TextAlign.start,
                        style: StyleSetting.getTextSyle(day: true),
                      )),
                    ],
                  ),

                ],
              ),
            )));
  }
}
