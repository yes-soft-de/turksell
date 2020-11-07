



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/home_list/ui/widget/card_home/card_home.dart';
import 'package:turksell/module_navigation/ui/widget/navigation_drawer/swap_navigation_drawer.dart';
import 'package:turksell/setting_module/style_setting.dart';
import 'package:turksell/utils/project_color/project_color.dart';

@provide
class ListWithOptionPage extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<ListWithOptionPage> {


  List<bool> clicks=[false,false,false];
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
        drawer: SwapNavigationDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  GestureDetector(
                    onTap: (){setState(() {

                      clicks[0]=!clicks[0];
                      clicks[1]=false;
                      clicks[2]=false;
                    });},
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Card(
                        shape: StyleSetting.getOutLineBorder(radius: 4,color: Colors.transparent,width: 0),
                        color:clicks[0]? ProjectColors.gray:ProjectColors.actColor,
                        child:clicks[0]? Icon(Icons.home,size: 40,color: ProjectColors.iconNotActive,):Icon(Icons.home,size: 40,color: ProjectColors.gray,)
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){setState(() {

                      clicks[1]=!clicks[1];
                      clicks[0]=false;
                      clicks[2]=false;
                    });},
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Card(
                          shape: StyleSetting.getOutLineBorder(radius: 4,color: Colors.transparent,width: 0),
                          color:clicks[1]? ProjectColors.gray:ProjectColors.actColor,
                          child:clicks[1]? Icon(Icons.phone_iphone,size: 40,color: ProjectColors.iconNotActive,):Icon(Icons.phone_iphone,size: 40,color: ProjectColors.gray,)
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){setState(() {

                      clicks[2]=!clicks[2];
                      clicks[1]=false;
                      clicks[0]=false;
                    });},
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Card(
                          shape: StyleSetting.getOutLineBorder(radius: 4,color: Colors.transparent,width: 0),
                          color:clicks[2]? ProjectColors.gray:ProjectColors.actColor,
                          child:clicks[2]? Icon(Icons.directions_car,size: 40,color: ProjectColors.iconNotActive,):Icon(Icons.directions_car,size: 40,color: ProjectColors.gray,)
                      ),
                    ),
                  ),
                ],),




                CardHome(),
                CardHome(),
                CardHome(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
