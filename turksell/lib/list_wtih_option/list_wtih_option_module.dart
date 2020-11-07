


import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/home_list/ui/screen/home_list.dart';
import 'package:turksell/home_with_navigation_bottom/home_with_navigation_bottom.dart';
import 'package:turksell/list_wtih_option/ui/screen/list_with_option.dart';

import 'list_with_option_routes.dart';






@provide
 class ListWithOptionModel extends YesModule{
 final ListWithOptionPage _withOptionPage;


 ListWithOptionModel(this._withOptionPage);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
      ListWtihOptionRoutes.ROUTE_List_With_option : (context)=> _withOptionPage,


    };
  }
 }