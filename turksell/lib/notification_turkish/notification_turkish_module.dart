
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/notification_turkish/ui/screen/notification_turkish_page.dart';




import 'notification_turkish_routes.dart';


@provide
 class NotificationTurkishModule extends YesModule{
 final NotificationTurkishPage _notificationTurkishPage;

 NotificationTurkishModule(this._notificationTurkishPage);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
      NotificationTurkishtRoutes.ROUTE_notification_turkish : (context)=> _notificationTurkishPage,

    };
  }
 }