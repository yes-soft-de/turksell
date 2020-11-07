



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/home_list/ui/widget/card_home/card_home.dart';
import 'package:turksell/module_navigation/ui/widget/navigation_drawer/swap_navigation_drawer.dart';
import 'package:turksell/setting_module/style_setting.dart';
import 'package:turksell/utils/project_color/project_color.dart';

@provide
class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {


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
