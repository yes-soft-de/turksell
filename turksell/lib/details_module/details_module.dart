

import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';

import 'package:turksell/details_module/car_details/ui/car_details.dart';
import 'package:turksell/details_module/details_routes.dart';


@provide
 class DetailsModule extends YesModule{
 final CarDetails _carDetails;


 DetailsModule(this._carDetails);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
     DetailsRoutes.ROUTE_Car : (context)=> _carDetails,


    };
  }
 }