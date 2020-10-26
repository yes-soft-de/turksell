


import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/home_list/ui/screen/home_list.dart';



import 'home_routes.dart';


@provide
 class HomeListModule extends YesModule{
 final HomeList _homeList;

 HomeListModule(this._homeList);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
      HomeListRoutes.ROUTE_Home : (context)=> _homeList,

    };
  }
 }