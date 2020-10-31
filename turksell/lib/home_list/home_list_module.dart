


import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/home_list/ui/screen/home_list.dart';
import 'package:turksell/home_with_navigation_bottom/home_with_navigation_bottom.dart';



import 'home_routes.dart';


@provide
 class HomeListModule extends YesModule{
  final HomeList _homeList;
  final HomeWithNavigationButtom _homeWithNavigationButtom;

  HomeListModule(this._homeList,this._homeWithNavigationButtom);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
      HomeListRoutes.ROUTE_Home : (context)=> _homeList,
      HomeListRoutes.ROUTE_HOME_NAVIGATION_BUTTOM : (context)=> _homeWithNavigationButtom,

    };
  }
 }