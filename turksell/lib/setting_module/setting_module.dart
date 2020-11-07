
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/notification_turkish/ui/screen/notification_turkish_page.dart';
import 'package:turksell/setting_module/ui/setting_page.dart';




import 'notification_turkish_routes.dart';


@provide
 class SettingModule extends YesModule{
 final SettingPage _settingPage;

 SettingModule(this._settingPage);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
      SettingRoutes.ROUTE_Setting : (context)=> _settingPage,

    };
  }
 }