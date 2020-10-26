





import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:turksell/abstracts/module/yes_module.dart';
import 'package:turksell/history_page/ui/screen/history_list_page.dart';




import 'notification_turkish_routes.dart';


@provide
 class HistoryModule extends YesModule{
 final HistoryListPage _historyListPage;

 HistoryModule(this._historyListPage);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
      HistoryRoutes.ROUTE_History : (context)=> _historyListPage,

    };
  }
 }